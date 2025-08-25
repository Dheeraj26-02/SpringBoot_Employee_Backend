package com.example.em_project.repository;

import com.example.em_project.entity.LoginEntity;
import com.example.em_project.entity.SkillsEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface SkillsRepository extends JpaRepository<SkillsEntity,Long> {
}
