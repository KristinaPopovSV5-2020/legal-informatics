package com.example.app_backend.model.cases;

import lombok.Getter;
import lombok.Setter;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.core.mapping.Document;
import org.springframework.data.annotation.Id;

import java.io.Serializable;

@Setter
@Getter
@Document(collection = "caseDetails")
public class CaseDetails implements Serializable {

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

    public CaseDetails(ObjectId id, String caseId, String caseNumber, String judge, String defendant, String criminalOffense, String court, String date, String previouslyConvicted, String forSameOffense, String illegallyPossessesWeapon, String location, String weapon, String ammunitionCount, String financialStatus, String admittedGuilt, String remorseful, String weaponType, String injuryCausedByWeapon, String fineAmount, String securityMeasure, String violatedArticles, String sentence) {
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

    public CaseDetails(String caseId, String caseNumber, String judge, String defendant, String criminalOffense, String court, String date, String previouslyConvicted, String forSameOffense, String illegallyPossessesWeapon, String location, String weapon, String ammunitionCount, String financialStatus, String admittedGuilt, String remorseful, String weaponType, String injuryCausedByWeapon, String fineAmount, String securityMeasure, String violatedArticles, String sentence) {
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
}
