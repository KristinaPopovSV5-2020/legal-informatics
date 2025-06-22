package com.example.app_backend.similarity;

import java.io.BufferedReader;
import java.util.ArrayList;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.app_backend.model.cases.CaseDetails;
import com.example.app_backend.repository.CaseDetailsRepository;
import com.example.app_backend.service.interfaces.IGPTService;

import java.util.Collection;
import java.util.LinkedList;

import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseBaseFilter;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.exception.InitializingException;

public class MongoDbConnector implements Connector {

    private final CaseDetailsRepository caseDetailsRepository;

    @Autowired
    public MongoDbConnector(CaseDetailsRepository caseDetailsRepository) {
        this.caseDetailsRepository = caseDetailsRepository;
    }

    @Override
    public Collection<CBRCase> retrieveAllCases() {
        List<CaseDetails> details = caseDetailsRepository.findAll();

        List<CBRCase> cases = new ArrayList<CBRCase>();

        for (CaseDetails caseDetails : details) {
            CBRCase cbrCase = new CBRCase();
            cbrCase.setDescription(caseDetails);
            cases.add(cbrCase);
        }

        return cases;
    }

    @Override
    public Collection<CBRCase> retrieveSomeCases(CaseBaseFilter arg0) {
        return null;
    }

    @Override
    public void storeCases(Collection<CBRCase> arg0) {
    }

    @Override
    public void close() {
    }

    @Override
    public void deleteCases(Collection<CBRCase> arg0) {
    }

    @Override
    public void initFromXMLfile(URL arg0) throws InitializingException {
    }
}