package com.example.app_backend.service.implementation;

import com.example.app_backend.exception.NotFoundException;
import com.example.app_backend.model.cases.CaseDetails;
import com.example.app_backend.repository.CaseDetailsRepository;
import com.example.app_backend.service.interfaces.ICaseService;
import com.example.app_backend.service.interfaces.IGPTService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.util.*;
import java.util.stream.Collectors;

@Service
public class CaseService implements ICaseService {

    private final IGPTService gptService;
    private final CaseDetailsRepository caseDetailsRepository;
    private static final String BASE_PATH = "akoma-ntoso/";

    @Autowired
    public CaseService(IGPTService gptService, CaseDetailsRepository caseDetailsRepository) {
        this.gptService = gptService;
        this.caseDetailsRepository = caseDetailsRepository;
    }

    @Override
    public Resource getLawResource(String name) throws IOException {
        Resource resource = new ClassPathResource(BASE_PATH + name + "_zakon.html");
        if (!resource.exists()) {
            throw new IOException("Resource not found: " + name + ".xml");
        }
        return resource;
    }

    @Override
    public Resource getCaseResource(String id) throws IOException {
        Resource resource = new ClassPathResource(BASE_PATH + id + ".html");
        if (!resource.exists()) {
            throw new IOException("Resource not found: " + id + ".xml");
        }
        return resource;
    }

    @Override
    public CaseDetails getCaseDetails(String caseId) {

        Optional<CaseDetails> existingCase = caseDetailsRepository.findByCaseId(caseId);
        if (existingCase.isPresent()) {
            return existingCase.get();
        }
        try {
            Resource resource = new ClassPathResource("akoma-ntoso/" + caseId + ".html");
            if (!resource.exists()) {
                throw new RuntimeException("Resource not found: " + caseId + ".xml");
            }

            byte[] fileContent = Files.readAllBytes(resource.getFile().toPath());
            String content = new String(fileContent);

            // Attributes list to extract
            String[] attributes = {
                    "broj predmeta", "sudija", "optuzeni/okrivljeni", "krivicno delo", "sud", "datum",
                    "osudjivan ranije (da/ne)", "za isto krivicno delo", "poseduje neovlasceno oruzje (da/ne)",
                    "mesto", "oružje", "broj municije", "imovinsko stanje", "priznao krivicu (da/ne)",
                    "kaje se (da/ne)",
                    "tip oružja", "povreda nanesena oruzjem (da/ne)", "novčana kazna", "mera bezbednosti",
                    "prekrseni clanovi (nabroj sve čl koji su prekršeni)", "kazna",
                    "način pronalaska oruzja (javno, kuća, auto, bezbedno, drugo)"
            };

            Map<String, String> extractedValues = new HashMap<>();
            for (String attribute : attributes) {
                String prompt = "From the xml file extract the following attribute '" + attribute +
                        "'  without any additional text or quotation marks. If you are not 100% sure you can find it, still give the answer you think is correct, but don't give me some generic message like not found. Here is the file :\n"
                        + content;

                String extractedValue = gptService.chat(prompt);
                extractedValues.put(attribute, extractedValue);
            }

            // Create and populate CaseDetails object
            CaseDetails caseDetails = createCaseDetails(caseId, extractedValues);
            caseDetailsRepository.save(caseDetails);
            return caseDetails;

        } catch (Exception e) {
            throw new RuntimeException("Error extracting case details: " + e.getMessage(), e);
        }
    }

    @Override
    public List<String> getAllCaseNames() throws IOException {
        File directory = new ClassPathResource(BASE_PATH).getFile();

        if (!directory.exists() || !directory.isDirectory()) {
            throw new IOException("Directory not found: " + BASE_PATH);
        }

        return Arrays.stream(Objects.requireNonNull(directory.list()))
                .filter(name -> name.startsWith("K") && name.endsWith(".html"))
                .map(name -> name.replace(".html", ""))
                .collect(Collectors.toList());
    }

    private static CaseDetails createCaseDetails(String caseId, Map<String, String> extractedValues) {
        CaseDetails caseDetails = new CaseDetails();
        caseDetails.setCaseId(caseId);
        caseDetails.setCaseNumber(extractedValues.get("broj predmeta"));
        caseDetails.setJudge(extractedValues.get("sudija"));
        caseDetails.setDefendant(extractedValues.get("optuzeni/okrivljeni"));
        caseDetails.setCriminalOffense(extractedValues.get("krivicno delo"));
        caseDetails.setCourt(extractedValues.get("sud"));
        caseDetails.setDate(extractedValues.get("datum"));
        caseDetails.setPreviouslyConvicted(extractedValues.get("osudjivan ranije (da/ne)"));
        caseDetails.setForSameOffense(extractedValues.get("za isto krivicno delo"));
        caseDetails.setIllegallyPossessesWeapon(extractedValues.get("poseduje neovlasceno oruzje (da/ne)"));
        caseDetails.setLocation(extractedValues.get("mesto"));
        caseDetails.setWeapon(extractedValues.get("oružje"));
        caseDetails.setAmmunitionCount(extractedValues.get("broj municije"));
        caseDetails.setFinancialStatus(extractedValues.get("imovinsko stanje"));
        caseDetails.setAdmittedGuilt(extractedValues.get("priznao krivicu (da/ne)"));
        caseDetails.setRemorseful(extractedValues.get("kaje se (da/ne)"));
        caseDetails.setWeaponType(extractedValues.get("tip oružja"));
        caseDetails.setInjuryCausedByWeapon(extractedValues.get("povreda nanesena oruzjem (da/ne)"));
        caseDetails.setFineAmount(extractedValues.get("novčana kazna"));
        caseDetails.setSecurityMeasure(extractedValues.get("mera bezbednosti"));
        caseDetails.setViolatedArticles(extractedValues.get("prekrseni clanovi (nabroj sve čl koji su prekršeni)"));
        caseDetails.setSentence(extractedValues.get("kazna"));
        caseDetails.setMethodOfWeaponDiscovery(
                extractedValues.get("način pronalaska oruzja (javno, kuća, auto, bezbedno, drugo)"));
        return caseDetails;
    }

    @Override
    public CaseDetails updateCaseDetails(CaseDetails caseDetails) {
        Optional<CaseDetails> existingCase = caseDetailsRepository.findByCaseId(caseDetails.getCaseId());
        if (!existingCase.isPresent()) {
            throw new NotFoundException("Case with ID " + caseDetails.getCaseId() + " not found.");
        }

        existingCase.get().updateCaseDetails(caseDetails);
        return caseDetailsRepository.save(existingCase.get());
    }
}
