package com.mmadej.millstone.service;

import java.util.List;

import com.mmadej.millstone.domain.User;

public interface UserService {
    public User getUser(final long id);
    public List<User> getUsers();
    public void createUser(final User user);
}