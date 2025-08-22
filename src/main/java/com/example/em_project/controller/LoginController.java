package com.example.em_project.controller;

import org.springframework.ui.Model;

import com.example.em_project.model.LoginDetails;
import com.example.em_project.service.LoginService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class LoginController {

    @Autowired
    LoginService loginService ;
    @GetMapping("/")
    public String index(Model model){
        System.out.println("Serving index.jsp.............................");
        model.addAttribute("ld",new LoginDetails());
        return "index";
    }

    @PostMapping("/login")
    public String isLogin(@ModelAttribute LoginDetails ld , Model model){
        System.out.println("Login route working.............................");
        boolean status=loginService.isLogin(ld);

        if(status){
            return "employeePage";
        }
        else {
            model.addAttribute("errorMsg", "Admin Not Found");
            return "index";
        }

    }
}
