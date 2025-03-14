package com.example.app_backend.model.chat;


import java.util.List;

public class ChatResponse {

    private List<Choice> choices;

    public List<Choice> getChoices() {
        return choices;
    }

    public void setChoices(List<Choice> choices) {
        this.choices = choices;
    }

    public ChatResponse(List<Choice> choices) {
        this.choices = choices;
    }

    public ChatResponse() {
    }

    public static class Choice {

        private int index;
        private ChatMessage message;

        public int getIndex() {
            return index;
        }

        public void setIndex(int index) {
            this.index = index;
        }

        public ChatMessage getMessage() {
            return message;
        }

        public void setMessage(ChatMessage message) {
            this.message = message;
        }

        public Choice(int index, ChatMessage message) {
            this.index = index;
            this.message = message;
        }

        public Choice() {
        }
    }
}
