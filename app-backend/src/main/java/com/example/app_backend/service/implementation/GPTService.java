package com.example.app_backend.service.implementation;

import com.example.app_backend.exception.NotFoundException;
import com.example.app_backend.model.chat.ChatRequest;
import com.example.app_backend.model.chat.ChatResponse;
import com.example.app_backend.service.interfaces.IGPTService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class GPTService implements IGPTService {

    @Qualifier("openaiRestTemplate")
    @Autowired
    private RestTemplate restTemplate;

    @Value("${openai.model}")
    private String model;

    @Value("${openai.api.url}")
    private String apiUrl;

    @Override
    public String chat(String prompt) {
        ChatRequest request = new ChatRequest(model, prompt);
        try {
            ChatResponse response = restTemplate.postForObject(apiUrl, request, ChatResponse.class);
            if (response == null || response.getChoices() == null || response.getChoices().isEmpty()) {
                throw new NotFoundException("No response for given prompt. Try a different approach.");
            }
            return response.getChoices().get(0).getMessage().getContent();
        }catch (Exception exc){
            System.out.println(exc.getMessage());
        }

        return "";
    }
}
