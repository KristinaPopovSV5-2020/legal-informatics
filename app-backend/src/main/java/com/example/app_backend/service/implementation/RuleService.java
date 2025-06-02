package com.example.app_backend.service.implementation;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import org.apache.jena.rdf.model.Resource;
import org.apache.jena.rdf.model.ModelFactory;

import org.springframework.stereotype.Service;
import org.apache.jena.rdf.model.*;

import com.example.app_backend.dto.rule.RuleRequestDTO;
import com.example.app_backend.service.interfaces.IRuleService;

@Service
public class RuleService implements IRuleService {

    private static final String BASE_PATH = "C:\\Users\\Bogdan\\Desktop\\Pravna\\legal-informatics\\dr-device\\";

    @Override
    public String fireRules(RuleRequestDTO ruleRequestDTO) {
        String cleanScript = BASE_PATH + "clean.bat";
        String buildScript = BASE_PATH + "start.bat";

        GetFacts(ruleRequestDTO);

        try {
            executeScript(cleanScript);
            executeScript(buildScript);
            return "Scripts executed successfully";
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            return "Error executing scripts: " + e.getMessage();
        }
    }

    private void GetFacts(RuleRequestDTO dto) {
        String ns = "http://informatika.ftn.uns.ac.rs/legal-case.rdf#";

        Model model = ModelFactory.createDefaultModel();

        // Dodavanje namespace-ova
        model.setNsPrefix("rdf", "http://www.w3.org/1999/02/22-rdf-syntax-ns#");
        model.setNsPrefix("rdfs", "http://www.w3.org/2000/01/rdf-schema#");
        model.setNsPrefix("xsd", "http://www.w3.org/2001/XMLSchema#");
        model.setNsPrefix("lc", ns);

        // Kreiraj resource za case
        Resource caseResource = model.createResource(ns + dto.name)
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
                .addProperty(model.createProperty(ns + "has_weapon_type_D"), dto.hasWeaponTypeD);

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

}
