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
        // FINANCIAL STATUS
        TabularSimilarity slicnostImovnoStanje = new TabularSimilarity(Arrays.asList("dobro",
                "srednje", "lose", "lošeg imovnog stanja", "srednjeg imovnog stanja", "dobrog imovnog stanja"));
        slicnostImovnoStanje.setSimilarity("dobro", "dobrog imovnog stanja", 1.0);
        slicnostImovnoStanje.setSimilarity("dobro", "srednjeg imovnog stanja", 0.3);
        slicnostImovnoStanje.setSimilarity("srednje", "srednjeg imovnog stanja", 1.0);
        slicnostImovnoStanje.setSimilarity("srednje", "dobrog imovnog stanja", 0.3);
        slicnostImovnoStanje.setSimilarity("srednje", "lošeg imovnog stanja", 0.3);
        slicnostImovnoStanje.setSimilarity("lose", "lošeg imovnog stanja", 1.0);
        slicnostImovnoStanje.setSimilarity("lose", "srednjeg imovnog stanja", 0.3);

        simConfig.addMapping(new Attribute("financialStatus", CaseDetails.class), slicnostImovnoStanje);
        simConfig.setWeight(new Attribute("financialStatus", CaseDetails.class), 0.6);

        // PREVIOUSLY CONVICTED
        TabularSimilarity slicnostPrethodnoOsudjivan = new TabularSimilarity(Arrays.asList("da", "ne"));
        slicnostPrethodnoOsudjivan.setSimilarity("da", "da", 1.0);
        slicnostPrethodnoOsudjivan.setSimilarity("ne", "ne", 1.0);

        simConfig.addMapping(new Attribute("previouslyConvicted", CaseDetails.class), slicnostPrethodnoOsudjivan);
        simConfig.setWeight(new Attribute("previouslyConvicted", CaseDetails.class), 0.8);

        // ILLEGALLY POSSESSES WEAPON
        TabularSimilarity slicnostIlegalnoOruzje = new TabularSimilarity(Arrays.asList("da", "ne"));
        slicnostIlegalnoOruzje.setSimilarity("da", "da", 1.0); // maksimalna sličnost
        slicnostIlegalnoOruzje.setSimilarity("ne", "ne", 1.0); // maksimalna sličnost
        simConfig.addMapping(new Attribute("illegallyPossessesWeapon", CaseDetails.class), slicnostIlegalnoOruzje);
        simConfig.setWeight(new Attribute("illegallyPossessesWeapon", CaseDetails.class), 0.9);

        // ADMITTED GUILT
        TabularSimilarity slicnostPriznaoKrivicu = new TabularSimilarity(Arrays.asList("da", "ne"));
        slicnostPriznaoKrivicu.setSimilarity("da", "da", 1.0);
        slicnostPriznaoKrivicu.setSimilarity("ne", "ne", 1.0);
        simConfig.addMapping(new Attribute("admittedGuilt", CaseDetails.class), slicnostPriznaoKrivicu);
        simConfig.setWeight(new Attribute("admittedGuilt", CaseDetails.class), 0.5);

        // REMORSEFUL
        TabularSimilarity slicnostKajanje = new TabularSimilarity(Arrays.asList("da", "ne"));
        slicnostKajanje.setSimilarity("da", "da", 1.0);
        slicnostKajanje.setSimilarity("ne", "ne", 1.0);
        simConfig.addMapping(new Attribute("remorseful", CaseDetails.class), slicnostKajanje);
        simConfig.setWeight(new Attribute("remorseful", CaseDetails.class), 0.5);

        // INJURY CAUSED BY WEAPON
        TabularSimilarity slicnostNanetaSteta = new TabularSimilarity(Arrays.asList("da", "ne"));
        slicnostNanetaSteta.setSimilarity("da", "da", 1.0);
        slicnostNanetaSteta.setSimilarity("ne", "ne", 1.0);
        simConfig.addMapping(new Attribute("injuryCausedByWeapon", CaseDetails.class), slicnostNanetaSteta);
        simConfig.setWeight(new Attribute("injuryCausedByWeapon", CaseDetails.class), 1.0);

        // METHOD OF WEAPON DISCOVERY
        TabularSimilarity slicnostNacinOtkrivanjaOruzja = new TabularSimilarity(
                Arrays.asList("javno", "kuca", "auto", "drugo", "bezbedno", "kuća"));
        slicnostNacinOtkrivanjaOruzja.setSimilarity("kuca", "kuća", 0.6);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("kuca", "javno", 0.5);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("kuca", "auto", 0.5);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("kuca", "drugo", 0.5);

        slicnostNacinOtkrivanjaOruzja.setSimilarity("javno", "javno", 1.0);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("javno", "auto", 0.5);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("javno", "drugo", 0.5);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("javno", "kuća", 0.5);

        slicnostNacinOtkrivanjaOruzja.setSimilarity("auto", "auto", 0.6);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("auto", "javno", 0.5);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("auto", "kuća", 0.5);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("auto", "drugo", 0.5);

        slicnostNacinOtkrivanjaOruzja.setSimilarity("drugo", "drugo", 0.6);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("drugo", "javno", 0.5);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("drugo", "kuća", 0.5);
        slicnostNacinOtkrivanjaOruzja.setSimilarity("drugo", "auto", 0.5);

        slicnostNacinOtkrivanjaOruzja.setSimilarity("bezbedno", "bezbedno", 1.0);

        simConfig.addMapping(new Attribute("methodOfWeaponDiscovery", CaseDetails.class),
                slicnostNacinOtkrivanjaOruzja);
        simConfig.setWeight(new Attribute("methodOfWeaponDiscovery", CaseDetails.class), 0.8);

        // WEAPON TYPE
        TabularSimilarity slicnostTipOruzja = new TabularSimilarity(
                Arrays.asList("A", "B", "C", "D", "AB", "AC", "AD", "BC", "BD", "CD", "ABC", "ACD", "BCD", "ABCD"));
        slicnostTipOruzja.setSimilarity("A", "A", 1.0);
        slicnostTipOruzja.setSimilarity("B", "B", 1.0);
        slicnostTipOruzja.setSimilarity("C", "C", 1.0);
        slicnostTipOruzja.setSimilarity("D", "D", 1.0);
        slicnostTipOruzja.setSimilarity("AB", "AB", 1.0);
        slicnostTipOruzja.setSimilarity("AC", "AC", 1.0);
        slicnostTipOruzja.setSimilarity("AD", "AD", 1.0);
        slicnostTipOruzja.setSimilarity("BC", "BC", 1.0);
        slicnostTipOruzja.setSimilarity("BD", "BD", 1.0);
        slicnostTipOruzja.setSimilarity("CD", "CD", 1.0);
        slicnostTipOruzja.setSimilarity("ABC", "ABC", 1.0);
        slicnostTipOruzja.setSimilarity("ACD", "ACD", 1.0);
        slicnostTipOruzja.setSimilarity("BCD", "BCD", 1.0);
        slicnostTipOruzja.setSimilarity("ABCD", "ABCD", 1.0);
        slicnostTipOruzja.setSimilarity("A", "AB", 0.5);
        slicnostTipOruzja.setSimilarity("A", "AC", 0.5);
        slicnostTipOruzja.setSimilarity("A", "AD", 0.5);
        slicnostTipOruzja.setSimilarity("A", "ABC", 0.33);
        slicnostTipOruzja.setSimilarity("A", "ACD", 0.33);
        slicnostTipOruzja.setSimilarity("A", "ABCD", 0.25);
        slicnostTipOruzja.setSimilarity("B", "AB", 0.5);
        slicnostTipOruzja.setSimilarity("B", "BC", 0.5);
        slicnostTipOruzja.setSimilarity("B", "BD", 0.5);
        slicnostTipOruzja.setSimilarity("B", "ABC", 0.33);
        slicnostTipOruzja.setSimilarity("B", "BCD", 0.33);
        slicnostTipOruzja.setSimilarity("B", "ABCD", 0.25);
        slicnostTipOruzja.setSimilarity("C", "AC", 0.5);
        slicnostTipOruzja.setSimilarity("C", "BC", 0.5);
        slicnostTipOruzja.setSimilarity("C", "CD", 0.5);
        slicnostTipOruzja.setSimilarity("C", "ABC", 0.33);
        slicnostTipOruzja.setSimilarity("C", "ACD", 0.33);
        slicnostTipOruzja.setSimilarity("C", "BCD", 0.33);
        slicnostTipOruzja.setSimilarity("C", "ABCD", 0.25);
        slicnostTipOruzja.setSimilarity("D", "AD", 0.5);
        slicnostTipOruzja.setSimilarity("D", "BD", 0.5);
        slicnostTipOruzja.setSimilarity("D", "CD", 0.5);
        slicnostTipOruzja.setSimilarity("D", "ACD", 0.33);
        slicnostTipOruzja.setSimilarity("D", "BCD", 0.33);
        slicnostTipOruzja.setSimilarity("D", "ABCD", 0.25);
        slicnostTipOruzja.setSimilarity("AB", "AC", 0.33);
        slicnostTipOruzja.setSimilarity("AB", "AD", 0.33);
        slicnostTipOruzja.setSimilarity("AB", "BC", 0.33);
        slicnostTipOruzja.setSimilarity("AB", "BD", 0.33);
        slicnostTipOruzja.setSimilarity("AB", "ABC", 0.67);
        slicnostTipOruzja.setSimilarity("AB", "ACD", 0.25);
        slicnostTipOruzja.setSimilarity("AB", "BCD", 0.25);
        slicnostTipOruzja.setSimilarity("AB", "ABCD", 0.5);
        slicnostTipOruzja.setSimilarity("AC", "AD", 0.33);
        slicnostTipOruzja.setSimilarity("AC", "BC", 0.33);
        slicnostTipOruzja.setSimilarity("AC", "CD", 0.33);
        slicnostTipOruzja.setSimilarity("AC", "ABC", 0.67);
        slicnostTipOruzja.setSimilarity("AC", "ACD", 0.67);
        slicnostTipOruzja.setSimilarity("AC", "BCD", 0.25);
        slicnostTipOruzja.setSimilarity("AC", "ABCD", 0.5);
        slicnostTipOruzja.setSimilarity("AD", "BD", 0.33);
        slicnostTipOruzja.setSimilarity("AD", "CD", 0.33);
        slicnostTipOruzja.setSimilarity("AD", "ABC", 0.25);
        slicnostTipOruzja.setSimilarity("AD", "ACD", 0.67);
        slicnostTipOruzja.setSimilarity("AD", "BCD", 0.25);
        slicnostTipOruzja.setSimilarity("AD", "ABCD", 0.5);
        slicnostTipOruzja.setSimilarity("BC", "BD", 0.33);
        slicnostTipOruzja.setSimilarity("BC", "CD", 0.33);
        slicnostTipOruzja.setSimilarity("BC", "ABC", 0.67);
        slicnostTipOruzja.setSimilarity("BC", "ACD", 0.25);
        slicnostTipOruzja.setSimilarity("BC", "BCD", 0.67);
        slicnostTipOruzja.setSimilarity("BC", "ABCD", 0.5);
        slicnostTipOruzja.setSimilarity("BD", "CD", 0.33);
        slicnostTipOruzja.setSimilarity("BD", "ABC", 0.25);
        slicnostTipOruzja.setSimilarity("BD", "ACD", 0.25);
        slicnostTipOruzja.setSimilarity("BD", "BCD", 0.67);
        slicnostTipOruzja.setSimilarity("BD", "ABCD", 0.5);
        slicnostTipOruzja.setSimilarity("CD", "ABC", 0.25);
        slicnostTipOruzja.setSimilarity("CD", "ACD", 0.67);
        slicnostTipOruzja.setSimilarity("CD", "BCD", 0.67);
        slicnostTipOruzja.setSimilarity("CD", "ABCD", 0.5);
        slicnostTipOruzja.setSimilarity("ABC", "ACD", 0.5);
        slicnostTipOruzja.setSimilarity("ABC", "BCD", 0.5);
        slicnostTipOruzja.setSimilarity("ABC", "ABCD", 0.75);
        slicnostTipOruzja.setSimilarity("ACD", "BCD", 0.5);
        slicnostTipOruzja.setSimilarity("ACD", "ABCD", 0.75);
        slicnostTipOruzja.setSimilarity("BCD", "ABCD", 0.75);

        simConfig.addMapping(new Attribute("weaponType", CaseDetails.class),
                slicnostTipOruzja);
        simConfig.setWeight(new Attribute("weaponType", CaseDetails.class), 0.8);

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