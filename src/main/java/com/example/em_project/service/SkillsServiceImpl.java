package com.example.em_project.service;

import com.example.em_project.entity.EmployeeEntity;
import com.example.em_project.entity.SkillsEntity;
import com.example.em_project.model.Employee;
import com.example.em_project.model.Skills;
import com.example.em_project.repository.EmployeeRepository;
import com.example.em_project.repository.SkillsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class SkillsServiceImpl implements SkillsService{

    @Autowired
    private SkillsRepository skillsRepository;
    @Override
    public List<Skills> getAllSkills() {
        List<Skills> skills = new ArrayList<>();
        List<SkillsEntity> skillsList=skillsRepository.findAll();
        for (SkillsEntity skillsEntity : skillsList) {
            Skills s = new Skills();
            s.setId(skillsEntity.getId());
            s.setSkill(skillsEntity.getSkills());
            skills.add(s);
        }
        return skills;
    }

    @Override
    public void setAllSkills(List<Skills> skills) {
    }
}
