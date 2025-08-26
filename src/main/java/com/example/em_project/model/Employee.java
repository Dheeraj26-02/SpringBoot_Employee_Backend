package com.example.em_project.model;


import com.example.em_project.entity.SkillsEntity;
import jakarta.persistence.OneToMany;

import java.util.List;

public class Employee {
    private Long id;
    private String name;
    private String email;
    private String address;
    private String designation;
    private String department;

    @OneToMany
    private List<SkillsEntity> skills;
    public long getId(){
        return id;
    }
    public void setId(long id){
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

    public List<SkillsEntity> getSkills(){
        return skills;
    }
    public void setSkills(List<SkillsEntity> skills){
        this.skills=skills;
    }

}
