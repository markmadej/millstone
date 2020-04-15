package com.mmadej.millstone.controllers;

import com.mmadej.millstone.domain.User;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/user")
    public User user(@RequestParam(value = "id") Long id) {
        return userService.getUser(id);
    }

    @PostMapping("/user/create")
    public void createUser(@RequestBody User user) {
        userService.insertUser(user);
    }
}