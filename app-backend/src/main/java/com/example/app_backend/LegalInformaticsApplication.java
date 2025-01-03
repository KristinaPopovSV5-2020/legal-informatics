package com.example.app_backend;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = {DataSourceAutoConfiguration.class})
public class LegalInformaticsApplication {

	public static void main(String[] args) {
		SpringApplication.run(LegalInformaticsApplication.class, args);
	}

}
