package com.example.app_backend.controller;

import com.example.app_backend.dto.cases.CaseDTO;
import com.example.app_backend.dto.rule.RuleRequestDTO;
import com.example.app_backend.dto.user.LoginDTO;
import com.example.app_backend.model.cases.CaseDetails;
import com.example.app_backend.repository.CaseDetailsRepository;
import com.example.app_backend.service.interfaces.ICaseService;
import com.example.app_backend.service.interfaces.IRuleService;
import com.example.app_backend.similarity.BaseCbrApplication;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.http.ResponseEntity;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.core.io.Resource;
import java.io.IOException;
import java.nio.file.Files;
import java.util.List;

@Controller
@RequestMapping(value = "/api/cbr/")
public class CBRController {

    private final ICaseService caseService;
    private final IRuleService ruleService;
    private final CaseDetailsRepository caseDetailsRepository;

    @Autowired
    public CBRController(ICaseService caseService, IRuleService ruleService,
            CaseDetailsRepository caseDetailsRepository) {
        this.caseService = caseService;
        this.ruleService = ruleService;
        this.caseDetailsRepository = caseDetailsRepository;
    }

    @PostMapping("recommend-cases")
    public ResponseEntity<?> recommendCases(@RequestBody CaseDTO caseDTO) {
        //BaseCbrApplication recommender = new BaseCbrApplication(caseDetailsRepository);
        return ResponseEntity.ok("");
    }

    @PostMapping("rules/fire")
    public ResponseEntity<String> fireRules(@RequestBody RuleRequestDTO ruleRequestDTO) {
        String caseNames = ruleService.fireRules(ruleRequestDTO);
        return ResponseEntity.ok(caseNames);
    }

    @GetMapping("cases/names")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<List<String>> getAllCaseNames() {
        try {
            List<String> caseNames = caseService.getAllCaseNames();
            return ResponseEntity.ok(caseNames);
        } catch (IOException e) {
            return ResponseEntity.internalServerError().build();
        }

    }

    @GetMapping("cases/xml/{id}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getCaseInAcomaNtoso(@PathVariable String id) {
        try {
            Resource resource = caseService.getCaseResource(id);
            byte[] fileContent = Files.readAllBytes(resource.getFile().toPath());

            return ResponseEntity.ok()
                    .contentType(MediaType.APPLICATION_XML)
                    .body(fileContent);
        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Resource not found: " + id + ".xml");
        }
    }

    @GetMapping("cases/xml/attributes/{id}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getCaseAttributes(@PathVariable String id) throws IOException {

        CaseDetails caseDetails = this.caseService.getCaseDetails(id);

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_JSON)
                .body(caseDetails);
    }

    @GetMapping("laws/xml/{name}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getLawInAcomaNtoso(@PathVariable String name) throws IOException {
        try {
            Resource resource = caseService.getLawResource(name);
            byte[] fileContent = Files.readAllBytes(resource.getFile().toPath());

            return ResponseEntity.ok()
                    .contentType(MediaType.APPLICATION_XHTML_XML)
                    .body(fileContent);
        } catch (IOException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Resource not found: " + name + ".xml");
        }
    }
}
