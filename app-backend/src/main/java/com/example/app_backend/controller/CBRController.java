package com.example.app_backend.controller;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.http.ResponseEntity;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import java.io.IOException;
import java.nio.file.Files;

@Controller
@RequestMapping(value = "/api/cbr/")
public class CBRController {


    @GetMapping("cases/xml/{id}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getCaseInAcomaNtoso(@PathVariable String id) throws IOException {
        Resource resource = new ClassPathResource("akoma-ntoso/" + id + ".html");
        if (!resource.exists()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Resource not found: " + id + ".xml");
        }
        byte[] fileContent = Files.readAllBytes(resource.getFile().toPath());

        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_XML)
                .body(fileContent);
    }


    @GetMapping("laws/xml/{name}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getLawInAcomaNtoso(@PathVariable String name) throws IOException {
        Resource resource = new ClassPathResource("akoma-ntoso/" + name +"_zakon.html");
        if (!resource.exists()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Resource not found: " + name + ".xml");
        }
        byte[] fileContent = Files.readAllBytes(resource.getFile().toPath());
        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_XHTML_XML)
                .body(fileContent);
    }
}
