package com.project.service;

import com.project.model.User;

import java.util.List;

public interface UserService {
    void createOrUpdate(User user);

    List<User> loadUsers();

    User getUserById(int userId);

    void deleteUser(int userId);
}

