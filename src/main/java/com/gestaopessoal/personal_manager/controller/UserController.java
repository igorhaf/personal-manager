package com.gestaopessoal.personal_manager.controller;

import com.gestaopessoal.personal_manager.model.User;
import com.gestaopessoal.personal_manager.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/users")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @PostMapping
    public User createUser(@RequestBody User user) {
        return userRepository.save(user);
    }

    @GetMapping
    public List<User> listUsers() {
        return userRepository.findAll();
    }
}
