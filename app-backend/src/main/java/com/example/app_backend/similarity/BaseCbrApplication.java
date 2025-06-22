package com.example.app_backend.similarity;

import java.util.Arrays;
import es.ucm.fdi.gaia.jcolibri.cbraplications.StandardCBRApplication;
import java.util.Collection;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.example.app_backend.model.cases.CaseDetails;
import com.example.app_backend.repository.CaseDetailsRepository;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRCaseBase;
import es.ucm.fdi.gaia.jcolibri.casebase.LinealCaseBase;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CBRQuery;
import es.ucm.fdi.gaia.jcolibri.cbrcore.Connector;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.local.Interval;
import es.ucm.fdi.gaia.jcolibri.exception.ExecutionException;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.RetrievalResult;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNScoringMethod;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.NNConfig;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.selection.SelectCases;
import es.ucm.fdi.gaia.jcolibri.method.retrieve.NNretrieval.similarity.global.Average;

public class BaseCbrApplication implements StandardCBRApplication {

    CBRCaseBase _caseBase;
    Connector _connector;
    NNConfig simConfig;
    @Autowired
    private CaseDetailsRepository caseDetailsRepository;

    public BaseCbrApplication(CaseDetailsRepository caseDetailsRepository) {
        this.caseDetailsRepository = caseDetailsRepository;
    }

    public void configure() throws ExecutionException {
        MongoDbConnector connector = new MongoDbConnector();
        connector.setCaseDetailsRepository(caseDetailsRepository);
        _connector = connector;

        _caseBase = new LinealCaseBase(); // Create a Lineal case base for in-memory organization

        simConfig = new NNConfig(); // KNN configuration
        simConfig.setDescriptionSimFunction(new Average()); // global similarity function = average

        // Equal - returns 1 if both individuals are equal, otherwise returns 0
        // Interval - returns the similarity of two number inside an interval: sim(x,y)
        // = 1-(|x-y|/interval)
        // Threshold - returns 1 if the difference between two numbers is less than a
        // threshold, 0 in the other case
        // EqualsStringIgnoreCase - returns 1 if both String are the same despite case
        // letters, 0 in the other case
        // MaxString - returns a similarity value depending of the biggest substring
        // that belong to both strings
        // EnumDistance - returns the similarity of two enum values as the their
        // distance: sim(x,y) = |ord(x) - ord(y)|
        // EnumCyclicDistance - computes the similarity between two enum values as their
        // cyclic distance
        // Table - uses a table to obtain the similarity between two values. Allowed
        // values are Strings or Enums. The table is read from a text file.
        // TabularSimilarity - calculates similarity between two strings or two lists of
        // strings on the basis of tabular similarities
    }

    public void cycle(CBRQuery query) throws ExecutionException {
        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
        eval = SelectCases.selectTopKRR(eval, 5);
        System.out.println("Retrieved cases:");
        for (RetrievalResult nse : eval)
            System.out.println(nse.get_case().getDescription() + " -> " + nse.getEval());
    }

    public List<String> getCycle(CBRQuery query) throws ExecutionException {
        Collection<RetrievalResult> eval = NNScoringMethod.evaluateSimilarity(_caseBase.getCases(), query, simConfig);
        eval = SelectCases.selectTopKRR(eval, 5);
        List<String> retVal = new ArrayList<>();
        for (RetrievalResult nse : eval)
            retVal.add(nse.get_case().getDescription() + " -> " + nse.getEval());
        return retVal;
    }

    public void postCycle() throws ExecutionException {

    }

    public CBRCaseBase preCycle() throws ExecutionException {
        _caseBase.init(_connector);
        return _caseBase;
    }

}