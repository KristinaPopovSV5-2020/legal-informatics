package com.example.app_backend.controller;
import com.example.app_backend.service.interfaces.IGPTService;
import org.springframework.beans.factory.annotation.Autowired;
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

    private final IGPTService gptService;

    @Autowired
    public CBRController(IGPTService gptService){
        this.gptService = gptService;
    }

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

    @GetMapping("cases/xml/attributes/{id}")
    @PreAuthorize("isAuthenticated()")
    public ResponseEntity<?> getCaseAttributes(@PathVariable String id) throws IOException {
        Resource resource = new ClassPathResource("akoma-ntoso/" + id + ".html");
        if (!resource.exists()) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND)
                    .body("Resource not found: " + id + ".xml");
        }
        byte[] fileContent = Files.readAllBytes(resource.getFile().toPath());
        String content = new String(fileContent);

        String attributes = "broj predmeta, " +
                "sudija, " +
                "optuzeni, " +
                "krivicno delo, " +
                "sud, " +
                "datum, " +
                "osudjivan ranije (da/ne), " +
                "za isto krivicno delo, " +
                "poseduje neovlasceno oruzje (da/ne), " +
                "mesto, " +
                "oruzje, " +
                "broj municija, " +
                "imovinsko stanje, " +
                "priznao krivicu, " +
                "kaje se, " +
                "tip oruzja, " +
                "povreda nanesena oruzjem, " +
                "novcana kazna," +
                "mera bezbednosti," +
                "prekrseni clanovi," +
                "kazna";
        String gptResponse = gptService.chat("From the xml file extract the following attributes, with just p tags, no ```, ('"+ attributes + "'), without any aditional text or quotation marks, in format: <span class='attribute-name' style='font-weight:bold;'>attrbute_name:</span> <span class='attribute-value'>value</span>:\n" + content);
        return ResponseEntity.ok()
                .contentType(MediaType.APPLICATION_JSON)
                .body(gptResponse);
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
