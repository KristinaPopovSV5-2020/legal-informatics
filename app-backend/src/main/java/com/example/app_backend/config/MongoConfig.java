package com.example.app_backend.config;

import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoClients;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.mongodb.config.AbstractMongoClientConfiguration;
import org.springframework.data.mongodb.repository.config.EnableMongoRepositories;

@Configuration
@EnableMongoRepositories(basePackages = "com.example.app_backend")
public class MongoConfig extends AbstractMongoClientConfiguration {

    @Override
    protected String getDatabaseName() {
        return "mydatabase"; // Naziv vaše MongoDB baze podataka
    }

    @Override
    public MongoClient mongoClient() {
        // Konfiguracija za povezivanje s MongoDB Atlas instancom
        return MongoClients.create("mongodb+srv://kikapopov123:w29Rwjo0h1z4fWv2@legalinf.v0fd2.mongodb.net/?retryWrites=true&w=majority");
    }
}
