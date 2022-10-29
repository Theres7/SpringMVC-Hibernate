package com.project.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;
import com.project.model.User;
import com.project.service.UserServiceImpl;
import javax.servlet.http.HttpServletRequest;

@Controller
public class RegisterController {

    @Autowired
    private UserServiceImpl service;

    @GetMapping("/addUserForm")
    public String showRegisterForm(Model model){
        model.addAttribute( "title","User Registration" );
        return "register";
    }

    // handle Create [registration] and Update
    @PostMapping("/handleUser")
    public RedirectView addUser(@ModelAttribute User user, HttpServletRequest request){
        service.createOrUpdate( user );        //addUser(user) + updateUser(user)
        return "redirect:/";
    }

    // Delete User
    @GetMapping("/deleteUser/{userId}")
    public String deleteUser(@PathVariable("userId") int userId){
        service.deleteUser( userId );
        return "redirect:/";
    }

    @GetMapping("/updateUser/{userId}")
    public String showEditUser(@PathVariable("userId") int userId, Model model){

        User user = service.getUserById( userId );
        model.addAttribute( "user", user );
        model.addAttribute( "title","Change Details" );
        return "updateForm";
    }
}

