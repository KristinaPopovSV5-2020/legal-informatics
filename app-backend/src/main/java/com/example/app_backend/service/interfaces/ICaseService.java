package com.example.app_backend.service.interfaces;

import com.example.app_backend.model.cases.CaseDetails;

public interface ICaseService {
    public CaseDetails getCaseDetails(String caseId);
}
