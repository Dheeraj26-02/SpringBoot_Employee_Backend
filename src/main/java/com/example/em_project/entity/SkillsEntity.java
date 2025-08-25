package com.example.em_project.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="skills")
public class SkillsEntity {
    @Id
    private Long id;
    private String skill;

    public void setId(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }
    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getSkills() {
        return skill;
    }
}
