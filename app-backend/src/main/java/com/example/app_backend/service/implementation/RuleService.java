package com.example.app_backend.service.implementation;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Service;

import com.example.app_backend.service.interfaces.IRuleService;

@Service
public class RuleService implements IRuleService {

    private static final String BASE_PATH = "C:\\Users\\Bogdan\\Desktop\\Pravna\\legal-informatics\\dr-device\\";

    @Override
    public String fireRules() {
        String cleanScript = BASE_PATH + "clean.bat";
        String buildScript = BASE_PATH + "start.bat";

        try {
            executeScript(cleanScript);
            executeScript(buildScript);
            return "Scripts executed successfully";
        } catch (IOException | InterruptedException e) {
            e.printStackTrace();
            return "Error executing scripts: " + e.getMessage();
        }
    }

    private void executeScript(String scriptPath) throws IOException, InterruptedException {
        ProcessBuilder pb = new ProcessBuilder(scriptPath);
        pb.redirectOutput(ProcessBuilder.Redirect.INHERIT);
        pb.redirectError(ProcessBuilder.Redirect.INHERIT);
        pb.directory(new File(scriptPath).getParentFile());

        Process process = pb.start();
        int exitCode = process.waitFor();
        System.out.println(scriptPath + " exited with code " + exitCode);
    }

}
