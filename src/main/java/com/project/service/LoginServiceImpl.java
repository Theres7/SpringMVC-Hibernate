package com.project.service;

import com.project.dao.LoginDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginDao loginDao;

    public boolean validateUser(String username, String password) {

        return loginDao.validateUser( username, password );
    }

    public String validUserFirstName() {

        return loginDao.validUserFirstName();
    }
}
