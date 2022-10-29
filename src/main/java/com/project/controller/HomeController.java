package com.project.controller;

import com.project.model.User;
import com.project.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class HomeController {
    @Autowired
    private UserService service;

    @GetMapping("/")
    public String home(Model model){
        List<User> userList = service.loadUsers();
        model.addAttribute( "users",userList );
        model.addAttribute( "title","User Registration and Login" );
        return "home";
    }
}

