package com.example.app_backend.service.implementation;

import com.example.app_backend.dto.user.UserDTO;
import com.example.app_backend.model.user.Role;
import com.example.app_backend.model.user.User;
import com.example.app_backend.repository.RoleRepository;
import com.example.app_backend.repository.UserRepository;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
@Service
public class UserServiceImpl implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RoleRepository roleRepository;


    BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder(6, new SecureRandom());

    public User findOne(ObjectId id) {
        return userRepository.findById(id).orElse(null);
    }

    public List<User> findAll() {
        return userRepository.findAll();
    }


    public User save(User user) {
        return userRepository.save(user);
    }


    public User tryLogin(String username, String password) {
        return userRepository.findByUsernameAndPassword(username, password);
    }

    public User saveUser(UserDTO userDTO) throws IOException {
        if (loadUserByUsername(userDTO.getUsername()) != null) {
            return null;
        }
        User user = new User();
        user.setName(userDTO.getName());
        user.setSurname(userDTO.getSurname());
        user.setUsername(userDTO.getUsername());
        String encodedPassword = bCryptPasswordEncoder.encode(userDTO.getPassword());
        user.setPassword(encodedPassword);

        Role role = roleRepository.findRoleByName("User");
        List<Role> roles = new ArrayList<>();
        roles.add(role);
        user.setRoles(roles);
        return userRepository.save(user);
    }


    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        UserDetails user = userRepository.findByUsername(username);
        if (user == null) {
            return null;
        } else {
            return user;
        }
    }



}
