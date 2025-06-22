package com.example.app_backend.similarity;

import java.util.ArrayList;
import java.net.URL;
import java.util.List;
import com.example.app_backend.model.cases.CaseDetails;
import com.example.app_backend.repository.CaseDetailsRepository;
import java.util.Collection;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseBaseFilter;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCase;
import es.ucm.fdi.gaia.jcolibri.exception.InitializingException;

public class MongoDbConnector implements Connector {

    private CaseDetailsRepository caseDetailsRepository;

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

    public void setCaseDetailsRepository(CaseDetailsRepository repo) {
        this.caseDetailsRepository = repo;
    }

}