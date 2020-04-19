package com.mmadej.millstone.service;

import java.util.List;

import com.mmadej.millstone.dao.UserMapper;
import com.mmadej.millstone.domain.User;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class UserServiceImpl implements UserService {

    Logger logger = LoggerFactory.getLogger(UserServiceImpl.class);
    
    @Autowired
    private UserMapper userMapper;

    @Autowired
    public UserServiceImpl() {}

    @Override
    public List<User> getUsers() {
        logger.debug("In getUsers");
        return userMapper.getUsers();
    }

    @Override
    public User getUser(final long id) {
        logger.debug("In getUser");
        return userMapper.getUser(id);
    }

    @Override
    public void createUser(final User user) {
        logger.debug("In createUser");
        userMapper.createUser(user);
    }
}