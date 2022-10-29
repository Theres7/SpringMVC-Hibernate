package com.project.service;

import com.project.dao.UserDao;
import com.project.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;

    // Add or Update User
    @Override
    public void createOrUpdate(User user) {
        userDao.addOrUpdateUser( user );
    }

    // Get All Users
    @Override
    public List<User> loadUsers() {
        return userDao.loadUsers();
    }

    // Get User by Id
    @Override
    public User getUserById(int userId) {
        return userDao.getUserById( userId );
    }


    // Delete User
    @Override
    public void deleteUser(int userId) {
        userDao.deleteUser( userId );
    }


}

