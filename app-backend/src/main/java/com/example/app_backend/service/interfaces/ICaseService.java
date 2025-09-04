package com.example.app_backend.service.interfaces;

import com.example.app_backend.model.cases.CaseDetails;
import org.springframework.core.io.Resource;

import java.io.IOException;
import java.util.List;

public interface ICaseService {
    public CaseDetails getCaseDetails(String caseId);

    List<String> getAllCaseNames() throws IOException;

    Resource getCaseResource(String id) throws IOException;

    Resource getLawResource(String name) throws IOException;

    CaseDetails updateCaseDetails(CaseDetails caseDetails);

    CaseDetails createCaseDetails(CaseDetails caseDetails);
}
