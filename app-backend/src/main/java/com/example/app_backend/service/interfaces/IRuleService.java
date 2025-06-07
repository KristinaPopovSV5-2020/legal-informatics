package com.example.app_backend.service.interfaces;

import com.example.app_backend.dto.rule.RuleRequestDTO;

public interface IRuleService {
    public String fireRules(RuleRequestDTO ruleRequestDTO);

}
