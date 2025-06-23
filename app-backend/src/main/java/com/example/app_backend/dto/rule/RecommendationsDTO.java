package com.example.app_backend.dto.rule;

import java.util.ArrayList;
import java.util.List;

public class RecommendationsDTO {
    public List<String> cases = new ArrayList<>();

    public List<String> getCases() {
        return cases;
    }

    public void setCases(List<String> cases) {
        this.cases = cases;
    }

    public RecommendationsDTO() {
    }

    public RecommendationsDTO(List<String> cases) {
        this.cases = cases;
    }
}