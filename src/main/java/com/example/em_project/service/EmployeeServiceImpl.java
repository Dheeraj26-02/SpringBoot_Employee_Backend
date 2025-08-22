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
    public boolean updateEmployee(Employee employee){
        Optional<EmployeeEntity> opt = employeeRepository.findById(employee.getId());
        if (opt.isPresent()) {
            EmployeeEntity existing = opt.get();

            // update fields
            existing.setName(employee.getName());
            existing.setEmail(employee.getEmail());
            existing.setAddress(employee.getAddress());
            existing.setDesignation(employee.getDesignation());
            existing.setDepartment(employee.getDepartment());
            employeeRepository.save(existing);
            return true;
        }
        return false;
    }
}

