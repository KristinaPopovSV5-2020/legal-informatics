package com.example.app_backend.model.chat;

import lombok.Getter;
import lombok.Setter;
import java.util.ArrayList;
import java.util.List;


public class ChatRequest {

    private String model;
    private List<ChatMessage> messages;
    private int n = 1;
    private double temperature = 0.7;

    public ChatRequest(String model, String prompt) {
        this.model = model;
        this.messages = new ArrayList<>();
        this.messages.add(new ChatMessage("user", prompt));
    }

    public ChatRequest(){

    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public List<ChatMessage> getMessages() {
        return messages;
    }

    public void setMessages(List<ChatMessage> messages) {
        this.messages = messages;
    }

    public int getN() {
        return n;
    }

    public void setN(int n) {
        this.n = n;
    }

    public double getTemperature() {
        return temperature;
    }

    public void setTemperature(double temperature) {
        this.temperature = temperature;
    }
}
