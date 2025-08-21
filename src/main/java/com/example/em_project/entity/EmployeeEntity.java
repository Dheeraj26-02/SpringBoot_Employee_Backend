package com.example.em_project.entity;

import jakarta.persistence.*;
import lombok.Data;
//comunication with table
@Data
@Entity
@Table(name="employee")
public class EmployeeEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;


    private String name;
    private String email;
}
