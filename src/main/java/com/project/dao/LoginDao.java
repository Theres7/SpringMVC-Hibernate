package com.project.dao;

public interface LoginDao {
    boolean validateUser(String username, String password);
    String validUserFirstName(); //optional
}

