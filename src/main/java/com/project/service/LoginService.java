package com.project.service;

public interface LoginService {
    boolean validateUser(String username, String password);

    String validUserFirstName();
}
