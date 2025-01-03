package com.example.app_backend.repository;

import com.example.app_backend.model.user.Role;

import org.bson.types.ObjectId;
import org.springframework.data.mongodb.repository.MongoRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends MongoRepository<Role, ObjectId> {
    Role findRoleByName(String name);
}
