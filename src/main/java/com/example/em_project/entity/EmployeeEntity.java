package com.example.em_project.entity;

import com.example.em_project.model.Employee;
import jakarta.persistence.*;

import java.util.Arrays;
import java.util.List;

//comunication with table
@Entity

@Table(name="employee")

public class EmployeeEntity {

    @Id
    private Long id;
    private String name;
    private String email;
    private String address;
    private String designation;
    private String department;
    private String skills;
    public long getId(){
        return id;
    }
    public void setId(Long id){
        this.id=id;
    }
    public String getName(){
        return name;
    }
    public void setName(String name){
        this.name=name;
    }
    public String getEmail(){
        return email;
    }
    public void setEmail(String email){
        this.email=email;
    }
    public String getAddress(){
        return address;
    }
    public void setAddress(String address){
        this.address=address;
    }
    public String getDesignation(){
        return designation;
    }
    public void setDesignation(String designation){
        this.designation=designation;
    }
    public String getDepartment(){
        return department;
    }
    public void setDepartment(String department){
        this.department=department;
    }
    public List<String> getSkills() {
        return Arrays.asList(skills.split(","));
    }

    public void setSkills(List<String> skills) {
        this.skills = String.join(",", skills);
    }




}
