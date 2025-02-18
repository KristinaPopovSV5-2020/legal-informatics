package com.example.app_backend.repository;

import com.example.app_backend.model.cases.CaseDetails;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

import java.util.Optional;

@Repository
public interface CaseDetailsRepository extends MongoRepository<CaseDetails, ObjectId> {

    Optional<CaseDetails> findByCaseId(String caseId);

}
