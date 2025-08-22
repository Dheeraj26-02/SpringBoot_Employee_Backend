package com.example.em_project.service;

import com.example.em_project.model.LoginDetails;
import org.springframework.stereotype.Service;

public interface LoginService {
    boolean isLogin(LoginDetails ld);
}
