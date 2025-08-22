package com.example.em_project.service;

import com.example.em_project.model.Employee;
import com.example.em_project.entity.EmployeeEntity;
import com.example.em_project.repository.EmployeeRepository;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;


    @Override
    public List<Employee> getAllEmployee() {
        List<Employee> employees = new ArrayList<>();

        List<EmployeeEntity> employeesList=employeeRepository.findAll();//getting data from database(repo) and storing in entity

        for (EmployeeEntity employeeEntity : employeesList) {
            Employee emp = new Employee();
            emp.setId(employeeEntity.getId());
            emp.setName(employeeEntity.getName());
            emp.setEmail(employeeEntity.getEmail());
            emp.setAddress(employeeEntity.getAddress());
            emp.setDesignation(employeeEntity.getDesignation());
            emp.setDepartment(employeeEntity.getDepartment());
            employees.add(emp);
        }
        return employees;
    }

    @Override
    public Employee getEmployeeById(Long id) {
        Optional<EmployeeEntity> employeeEntityOpt = employeeRepository.findById(id);

        if (employeeEntityOpt.isPresent()) {
            Employee emp = new Employee();
            BeanUtils.copyProperties(employeeEntityOpt.get(), emp);
            return emp;
        } else {
            return null;
        }
    }

    @Override
    public void createEmployee(Employee employee) {
        EmployeeEntity employeeEntity = new EmployeeEntity();
        BeanUtils.copyProperties(employee,employeeEntity);//saving from local object to entity
        employeeRepository.save(employeeEntity); //saving from entity(table-model) to database(repo)
    }

    @Override
    public boolean deleteEmployee(Long id) {
        Optional<EmployeeEntity> employeeEntityOpt = employeeRepository.findById(id);

        if (employeeEntityOpt.isPresent()) {
            employeeRepository.delete(employeeEntityOpt.get());
            return true;
        } else {
            return false;
        }
    }
    @Override
    public boolean updateEmployee(Long id, Employee employee){
        EmployeeEntity employeeEntity= employeeRepository.findById(id).get();
        employeeEntity.setName(employee.getName());
        employeeEntity.setEmail(employee.getEmail());
        employeeEntity.setAddress(employee.getAddress());
        employeeEntity.setDesignation(employee.getDesignation());
        employeeEntity.setDepartment(employee.getDepartment());
        employeeRepository.save(employeeEntity);
        return true;
    }
}

