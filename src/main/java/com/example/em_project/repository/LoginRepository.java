package com.example.em_project.repository;

import com.example.em_project.entity.EmployeeEntity;
import com.example.em_project.entity.LoginEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface LoginRepository extends JpaRepository<LoginEntity,String> {
}
