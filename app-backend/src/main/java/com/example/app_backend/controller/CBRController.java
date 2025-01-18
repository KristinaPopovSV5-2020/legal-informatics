package com.example.app_backend.controller;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.http.ResponseEntity;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.nio.file.Path;
import java.io.IOException;
import java.net.URISyntaxException;
import java.nio.file.Files;

@Controller
@RequestMapping(value = "/api/cbr/")
public class CBRController {


    @GetMapping("cases/xml/{id}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getCaseInAcomaNtoso(@PathVariable String id) throws IOException, URISyntaxException {
        ClassLoader classLoader = CBRController.class.getClassLoader();
        var resourceUrl = classLoader.getResource("akoma-ntoso/" + id + ".xml");
        if (resourceUrl == null) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Resource not found: " + id + ".xml");
        }
        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_XML)
                .body(Files.readAllBytes(Path.of(resourceUrl.toURI())));
    }
}
