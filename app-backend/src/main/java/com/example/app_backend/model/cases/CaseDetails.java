package com.example.app_backend.model.cases;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.mapping.Document;

import es.ucm.fdi.gaia.jcolibri.cbrcore.Attribute;
import es.ucm.fdi.gaia.jcolibri.cbrcore.CaseComponent;

import org.springframework.data.annotation.Id;

import java.io.Serializable;

@Document(collection = "caseDetails")
public class CaseDetails implements Serializable, CaseComponent {

    @Id
    private ObjectId id;

    private String caseId;
    private String caseNumber;
    private String judge;
    private String defendant;
    private String criminalOffense;
    private String court;
    private String date;
    private String previouslyConvicted; // Yes/No
    private String forSameOffense; // Yes/No
    private String illegallyPossessesWeapon; // Yes/No
    private String location;
    private String weapon;
    private String ammunitionCount;
    private String financialStatus;
    private String admittedGuilt; // Yes/No
    private String remorseful; // Yes/No
    private String weaponType;
    private String injuryCausedByWeapon;
    private String fineAmount;
    private String securityMeasure;
    private String violatedArticles;
    private String sentence;

    public CaseDetails(ObjectId id, String caseId, String caseNumber, String judge, String defendant,
            String criminalOffense, String court, String date, String previouslyConvicted, String forSameOffense,
            String illegallyPossessesWeapon, String location, String weapon, String ammunitionCount,
            String financialStatus, String admittedGuilt, String remorseful, String weaponType,
            String injuryCausedByWeapon, String fineAmount, String securityMeasure, String violatedArticles,
            String sentence) {
        this.id = id;
        this.caseId = caseId;
        this.caseNumber = caseNumber;
        this.judge = judge;
        this.defendant = defendant;
        this.criminalOffense = criminalOffense;
        this.court = court;
        this.date = date;
        this.previouslyConvicted = previouslyConvicted;
        this.forSameOffense = forSameOffense;
        this.illegallyPossessesWeapon = illegallyPossessesWeapon;
        this.location = location;
        this.weapon = weapon;
        this.ammunitionCount = ammunitionCount;
        this.financialStatus = financialStatus;
        this.admittedGuilt = admittedGuilt;
        this.remorseful = remorseful;
        this.weaponType = weaponType;
        this.injuryCausedByWeapon = injuryCausedByWeapon;
        this.fineAmount = fineAmount;
        this.securityMeasure = securityMeasure;
        this.violatedArticles = violatedArticles;
        this.sentence = sentence;
    }

    public CaseDetails(String caseId, String caseNumber, String judge, String defendant, String criminalOffense,
            String court, String date, String previouslyConvicted, String forSameOffense,
            String illegallyPossessesWeapon, String location, String weapon, String ammunitionCount,
            String financialStatus, String admittedGuilt, String remorseful, String weaponType,
            String injuryCausedByWeapon, String fineAmount, String securityMeasure, String violatedArticles,
            String sentence) {
        this.caseId = caseId;
        this.caseNumber = caseNumber;
        this.judge = judge;
        this.defendant = defendant;
        this.criminalOffense = criminalOffense;
        this.court = court;
        this.date = date;
        this.previouslyConvicted = previouslyConvicted;
        this.forSameOffense = forSameOffense;
        this.illegallyPossessesWeapon = illegallyPossessesWeapon;
        this.location = location;
        this.weapon = weapon;
        this.ammunitionCount = ammunitionCount;
        this.financialStatus = financialStatus;
        this.admittedGuilt = admittedGuilt;
        this.remorseful = remorseful;
        this.weaponType = weaponType;
        this.injuryCausedByWeapon = injuryCausedByWeapon;
        this.fineAmount = fineAmount;
        this.securityMeasure = securityMeasure;
        this.violatedArticles = violatedArticles;
        this.sentence = sentence;
    }

    public CaseDetails() {
    }

    public ObjectId getId() {
        return id;
    }

    public void setId(ObjectId id) {
        this.id = id;
    }

    public String getCaseId() {
        return caseId;
    }

    public void setCaseId(String caseId) {
        this.caseId = caseId;
    }

    public String getCaseNumber() {
        return caseNumber;
    }

    public void setCaseNumber(String caseNumber) {
        this.caseNumber = caseNumber;
    }

    public String getJudge() {
        return judge;
    }

    public void setJudge(String judge) {
        this.judge = judge;
    }

    public String getDefendant() {
        return defendant;
    }

    public void setDefendant(String defendant) {
        this.defendant = defendant;
    }

    public String getCriminalOffense() {
        return criminalOffense;
    }

    public void setCriminalOffense(String criminalOffense) {
        this.criminalOffense = criminalOffense;
    }

    public String getCourt() {
        return court;
    }

    public void setCourt(String court) {
        this.court = court;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getPreviouslyConvicted() {
        return previouslyConvicted;
    }

    public void setPreviouslyConvicted(String previouslyConvicted) {
        this.previouslyConvicted = previouslyConvicted;
    }

    public String getForSameOffense() {
        return forSameOffense;
    }

    public void setForSameOffense(String forSameOffense) {
        this.forSameOffense = forSameOffense;
    }

    public String getIllegallyPossessesWeapon() {
        return illegallyPossessesWeapon;
    }

    public void setIllegallyPossessesWeapon(String illegallyPossessesWeapon) {
        this.illegallyPossessesWeapon = illegallyPossessesWeapon;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getWeapon() {
        return weapon;
    }

    public void setWeapon(String weapon) {
        this.weapon = weapon;
    }

    public String getAmmunitionCount() {
        return ammunitionCount;
    }

    public void setAmmunitionCount(String ammunitionCount) {
        this.ammunitionCount = ammunitionCount;
    }

    public String getFinancialStatus() {
        return financialStatus;
    }

    public void setFinancialStatus(String financialStatus) {
        this.financialStatus = financialStatus;
    }

    public String getAdmittedGuilt() {
        return admittedGuilt;
    }

    public void setAdmittedGuilt(String admittedGuilt) {
        this.admittedGuilt = admittedGuilt;
    }

    public String getRemorseful() {
        return remorseful;
    }

    public void setRemorseful(String remorseful) {
        this.remorseful = remorseful;
    }

    public String getWeaponType() {
        return weaponType;
    }

    public void setWeaponType(String weaponType) {
        this.weaponType = weaponType;
    }

    public String getInjuryCausedByWeapon() {
        return injuryCausedByWeapon;
    }

    public void setInjuryCausedByWeapon(String injuryCausedByWeapon) {
        this.injuryCausedByWeapon = injuryCausedByWeapon;
    }

    public String getFineAmount() {
        return fineAmount;
    }

    public void setFineAmount(String fineAmount) {
        this.fineAmount = fineAmount;
    }

    public String getSecurityMeasure() {
        return securityMeasure;
    }

    public void setSecurityMeasure(String securityMeasure) {
        this.securityMeasure = securityMeasure;
    }

    public String getViolatedArticles() {
        return violatedArticles;
    }

    public void setViolatedArticles(String violatedArticles) {
        this.violatedArticles = violatedArticles;
    }

    public String getSentence() {
        return sentence;
    }

    public void setSentence(String sentence) {
        this.sentence = sentence;
    }

    @Override
    public Attribute getIdAttribute() {
        return new Attribute("id", this.getClass());
    }

    @Override
    public String toString() {
        return "{"
                + "\"id\": \"" + id + "\", "
                + "\"caseId\": \"" + caseId + "\", "
                + "\"caseNumber\": \"" + caseNumber + "\", "
                + "\"judge\": \"" + judge + "\", "
                + "\"defendant\": \"" + defendant + "\", "
                + "\"criminalOffense\": \"" + criminalOffense + "\", "
                + "\"court\": \"" + court + "\", "
                + "\"date\": \"" + date + "\", "
                + "\"previouslyConvicted\": " + previouslyConvicted + ", "
                + "\"forSameOffense\": " + forSameOffense + ", "
                + "\"illegallyPossessesWeapon\": " + illegallyPossessesWeapon + ", "
                + "\"location\": \"" + location + "\", "
                + "\"weapon\": \"" + weapon + "\", "
                + "\"ammunitionCount\": " + ammunitionCount + ", "
                + "\"financialStatus\": \"" + financialStatus + "\", "
                + "\"admittedGuilt\": " + admittedGuilt + ", "
                + "\"remorseful\": " + remorseful + ", "
                + "\"weaponType\": \"" + weaponType + "\", "
                + "\"injuryCausedByWeapon\": " + injuryCausedByWeapon + ", "
                + "\"fineAmount\": " + fineAmount + ", "
                + "\"securityMeasure\": \"" + securityMeasure + "\", "
                + "\"violatedArticles\": \"" + violatedArticles + "\", "
                + "\"sentence\": \"" + sentence + "\""
                + "}";
    }
}
