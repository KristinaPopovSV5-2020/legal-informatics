package com.example.app_backend.model.chat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ChatResponse {

    private List<Choice> choices;

    @Getter
    @Setter
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Choice {

        private int index;
        private ChatMessage message;
    }
}
