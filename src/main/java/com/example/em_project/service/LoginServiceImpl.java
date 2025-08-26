package com.example.em_project.service;

import com.example.em_project.entity.LoginEntity;
import com.example.em_project.model.LoginDetails;
import com.example.em_project.repository.LoginRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import java.util.Optional;

@Service
public class LoginServiceImpl implements LoginService {
    @Autowired
    private LoginRepository loginRepository;

    @Override
    public boolean isLogin(LoginDetails ld) {
        String email = ld.getEmail();
        String password = ld.getPassword();
        System.out.println(email+" "+password);

        Optional<LoginEntity> optionalLogin = loginRepository.findById(email);

        if (optionalLogin.isPresent()) {
            LoginEntity loginEntity = optionalLogin.get();
            return loginEntity.getPassword().equals(password)     ;
        }
        return false;
    }
}
