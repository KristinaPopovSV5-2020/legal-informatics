package com.example.app_backend.dto.user;
public class LoginTokenDTO {

    private String accessToken;
    private String refreshToken;


    public LoginTokenDTO() {
        super();
    }
    public LoginTokenDTO(String accessToken, String refreshToken) {
        super();
        this.accessToken = accessToken;
        this.refreshToken = refreshToken;
    }
    public String getAccessToken() {
        return accessToken;
    }
    public void setAccessToken(String accessToken) {
        this.accessToken = accessToken;
    }
    public String getRefreshToken() {
        return refreshToken;
    }
    public void setRefreshToken(String refreshToken) {
        this.refreshToken = refreshToken;
    }





}