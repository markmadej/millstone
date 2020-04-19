package com.mmadej.millstone.restservice;

import java.util.List;

import com.mmadej.millstone.domain.User;
import com.mmadej.millstone.service.UserService;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class UserController {

    Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserService userService;

    @GetMapping("/user")
    public User user(@RequestParam(value = "id", defaultValue = "0") long id) {
        logger.debug("in user GET handler with id " + id);
        return userService.getUser(id);
    }

    @GetMapping("/users")
    public List<User> users() {
        logger.debug("in users GET handler");
        return userService.getUsers();
    }

    @PostMapping("/user/create")
    public void createUser(@RequestBody User user) {
        logger.debug("in user POST handler");
        userService.createUser(user);
    }
}