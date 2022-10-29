package com.project.controller;


import com.project.service.LoginServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.ServletException;
import java.io.IOException;

@Controller
public class LoginController {

    @Autowired
    LoginServiceImpl service;

    @GetMapping("/loginForm")
    public String showLoginForm(Model model) {
        model.addAttribute( "title", "User Login" );
        return "login";
    }

    @PostMapping("/handleLogin")
    public String validateLogin(Model model, @RequestParam String usernameForm, @RequestParam String passwordForm)
            throws ServletException, IOException {

        if (service.validateUser( usernameForm, passwordForm )) {
            model.addAttribute( "name", service.validUserFirstName() );
            return "welcome";
        }
        model.addAttribute( "loginError", "Invalid Account! Try Again.." );
        return "login";
    }
}

