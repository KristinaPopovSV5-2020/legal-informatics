package com.example.app_backend.service.implementation;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.stereotype.Service;
import org.apache.jena.rdf.model.*;
import org.apache.jena.vocabulary.RDF;
import org.apache.jena.vocabulary.RDFS;

import com.example.app_backend.dto.rule.CasesDTO;
import com.example.app_backend.service.interfaces.IRuleService;

@Service
public class RuleService implements IRuleService {

    private static final String BASE_PATH = "C:\\Users\\Bogdan\\Desktop\\Pravna\\legal-informatics\\dr-device\\";

    @Override
    public String fireRules(CasesDTO ruleRequestDTO) {
        String cleanScript = BASE_PATH + "clean.bat";
        String buildScript = BASE_PATH + "start.bat";

        GetFacts(ruleRequestDTO);

        try {
            executeScript(cleanScript);
            executeScript(buildScript);
            String x = getActionsFromRdf();
            return x;
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            return "Error executing scripts: " + e.getMessage();
        }
    }

    private void GetFacts(CasesDTO dto) {
        String ns = "http://informatika.ftn.uns.ac.rs/legal-case.rdf#";
        Model model = ModelFactory.createDefaultModel();
        model.setNsPrefix("rdf", "http://www.w3.org/1999/02/22-rdf-syntax-ns#");
        model.setNsPrefix("rdfs", "http://www.w3.org/2000/01/rdf-schema#");
        model.setNsPrefix("xsd", "http://www.w3.org/2001/XMLSchema#");
        model.setNsPrefix("lc", ns);
        model.createResource(ns + dto.name)
                .addProperty(RDF.type, model.createResource(ns + "case"))
                .addProperty(model.createProperty(ns + "name"), dto.name)
                .addProperty(model.createProperty(ns + "defendant"), dto.defendant)
                .addProperty(model.createProperty(ns + "low_income"), dto.lowIncome)
                .addProperty(model.createProperty(ns + "previously_convicted"), dto.previouslyConvicted)
                .addProperty(model.createProperty(ns + "method_of_weapon_discovery"), dto.methodOfWeaponDiscovery)
                .addProperty(model.createProperty(ns + "unauthorized_possession_of_a_weapon"),
                        dto.unauthorizedPossessionOfAWeapon)
                .addProperty(model.createProperty(ns + "harm_done"), dto.harmDone)
                .addProperty(model.createProperty(ns + "regrets_it"), dto.regretsIt)
                .addProperty(model.createProperty(ns + "admitted_guilt"), dto.admittedGuilt)
                .addProperty(model.createProperty(ns + "has_weapon_type_A"), dto.hasWeaponTypeA)
                .addProperty(model.createProperty(ns + "has_weapon_type_B"), dto.hasWeaponTypeB)
                .addProperty(model.createProperty(ns + "has_weapon_type_C"), dto.hasWeaponTypeC)
                .addProperty(model.createProperty(ns + "has_weapon_type_D"), dto.hasWeaponTypeD)
                .addProperty(model.createProperty(ns + "high_income"), dto.highIncome);
        try (FileOutputStream out = new FileOutputStream(BASE_PATH + "facts.rdf")) {
            model.write(out, "RDF/XML-ABBREV"); // ili "RDF/XML" za punu verziju
            System.out.println("facts.rdf successfully written.");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void executeScript(String scriptPath) throws IOException, InterruptedException {
        ProcessBuilder pb = new ProcessBuilder(scriptPath);
        pb.redirectOutput(ProcessBuilder.Redirect.INHERIT);
        pb.redirectError(ProcessBuilder.Redirect.INHERIT);
        pb.directory(new File(scriptPath).getParentFile());

        Process process = pb.start();
        int exitCode = process.waitFor();
        System.out.println(scriptPath + " exited with code " + exitCode);
    }

    private String getViolationMessageByLocalName(String localName) {
        return switch (localName) {
            case "to_pay_min1" ->
                "Okrivljeni je na javnom mestu nosio oruzje i ucinio ga vidljivim drugim licima, ili ga je nosio na nacin koji ih uznemirava.";
            case "imprisonment_31" ->
                "Okrivljeni je neovlasceno drzao vatreno oruzje, municiju ili eksplozivne materije.";
            case "to_pay_min21" ->
                "Okrivljeni je nosio ili prenosio oruzje kategorije B bez vazece isprave o oruzju.";
            case "jail_3_year1" ->
                "Okrivljeni je naneo povredu oruzjem.";
            case "to_pay_min31" ->
                "Okrivljeni nije cuvao oruzje ili municiju na bezbedan nacin.";
            case "jail_min_year1" ->
                "Okrivljeni je neovlasceno drzao vecu kolicinu oruzja ili druga sredstva velike razorne moci.";
            default -> null;
        };
    }

    private String GetPunishmentMessageByLocalname(String localName, String value) {
        return switch (localName) {
            case "to_pay_min1", "to_pay_min21", "to_pay_min_31" ->
                "Okrivljen je duzan da plati minimalnu novcanu kaznu koja iznosi: " + value + " evra.";
            case "imprisonment_31" ->
                "Okrivljeni se kaznjava zatvorom od: " + value + " meseca.";
            case "to_pay_max1", "to_pay_max21", "to_pay_max_31" ->
                "Okrivljen je duzan da plati maksimalnu novcanu kaznu koja iznosi: " + value + " evra.";
            case "jail_3_year1" ->
                "Okrivljeni se kaznjava zatvorom do " + value + " godine.";
            case "jail_max_year1" ->
                "Okrivljeni se kaznjava zatvorom od maksimalno: " + value + " godina.";
            case "jail_min_year1" ->
                "Okrivljeni se kaznjava zatvorom od minimalno: " + value + " godine.";
            case "to_pay_less1" ->
                "Okrivljenom se preporucuje manja novcana kazna.";
            case "to_pay_more1" ->
                "Okrivljenom se preporucuje veca novcana kazna.";
            case "reduce_penalty1" ->
                "Okrivljenom se preporucuje manja kazna.";
            case "to_increase_penalty1" ->
                "Okrivljenom se preporucuje povecavanje kazne";
            case "confiscate_weapon1" ->
                "Okrivljenom se konfiskuje oruzje.";
            default ->
                null;
        };
    }

    public String getActionsFromRdf() {
        String rdfFilePath = BASE_PATH + "export.rdf";
        String ns = "http://startrek.csd.auth.gr/dr-device/export/export.rdf#";
        Model model = ModelFactory.createDefaultModel();

        try (InputStream in = new FileInputStream(rdfFilePath)) {
            model.read(in, "http://startrek.csd.auth.gr/dr-device/export/export.rdf");
            StringBuilder result = new StringBuilder();
            StmtIterator violationIterator = model.listStatements(null, RDF.type, (RDFNode) null);
            while (violationIterator.hasNext()) {
                Statement stmt = violationIterator.nextStatement();
                Resource subject = stmt.getSubject();
                String uri = subject.getURI();
                if (uri != null && uri.startsWith(ns)) {
                    String localName = uri.substring(ns.length());
                    String message = getViolationMessageByLocalName(localName);
                    if (message != null) {
                        result.append(message).append("\n");
                    }
                }
            }
            Property valueProperty = model.getProperty(ns + "value");
            ResIterator resourcesWithValue = model.listSubjectsWithProperty(valueProperty);
            while (resourcesWithValue.hasNext()) {
                Resource res = resourcesWithValue.nextResource();
                Statement valueStmt = res.getProperty(valueProperty);
                if (valueStmt != null && valueStmt.getObject().isLiteral()) {
                    String value = valueStmt.getString();
                    String resourceUri = res.getURI();
                    if (resourceUri != null && resourceUri.startsWith(ns)) {
                        String localName = resourceUri.substring(ns.length());
                        String message = GetPunishmentMessageByLocalname(localName, value);
                        result.append(message).append("\n");
                    }
                }
            }
            return result.toString();
        } catch (IOException e) {
            e.printStackTrace();
            return "Reading rdf file exception.";
        }
    }
}
