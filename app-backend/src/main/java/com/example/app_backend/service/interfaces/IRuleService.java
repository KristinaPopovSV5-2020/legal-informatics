package com.example.app_backend.service.interfaces;

import com.example.app_backend.dto.rule.CasesDTO;

public interface IRuleService {
    public String fireRules(CasesDTO ruleRequestDTO);

}
