package com.example.app_backend.repository;

import com.example.app_backend.model.user.User;
import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.security.core.userdetails.UserDetails;

import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends MongoRepository<User, ObjectId> {

    User findByUsernameAndPassword(String username, String password);
    UserDetails findByUsername(String username);

}
