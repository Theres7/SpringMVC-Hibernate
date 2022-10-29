package com.project.dao;

import com.project.model.User;

import java.util.List;

public interface UserDao {
    void addOrUpdateUser(User user);

    List<User> loadUsers();

    User getUserById(int userId);

    void deleteUser(int userId);
}

