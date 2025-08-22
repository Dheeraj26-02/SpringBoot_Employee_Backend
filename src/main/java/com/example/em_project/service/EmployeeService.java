package com.example.em_project.service;

import com.example.em_project.model.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> getAllEmployee();
    Employee getEmployeeById(Long id);

    void createEmployee(Employee employee);
    boolean deleteEmployee(Long id);
    boolean updateEmployee(Employee employee);

}
