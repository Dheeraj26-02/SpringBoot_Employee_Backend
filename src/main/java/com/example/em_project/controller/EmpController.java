package com.example.em_project.controller;


import com.example.em_project.model.Employee;
import com.example.em_project.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class EmpController {
    @Autowired
    EmployeeService employeeService ;


    @GetMapping("/")
    public List<Employee> getAllEmployee() {
        return employeeService.getAllEmployee();
    }

    @GetMapping("/getEmployee/{id}")
    public Employee getEmployee(@PathVariable Long id){
        return employeeService.getEmployeeById(id);
    }

    @PostMapping("/register")
    public String registerEmployee(@RequestBody Employee employee) {
        employeeService.createEmployee(employee);
        return "Employee created sucessfully";
    }

    @DeleteMapping("/delete/{id}")
    public String deleteEmployee(@PathVariable Long id) {
        if (employeeService.deleteEmployee(id)) {
            return "Employee deleted successfully";
        }
        return "Employee not Found";
    }
    @PutMapping("update/{id}")
    public String updateEmployee(@PathVariable Long id,@RequestBody Employee employee){
        if(employeeService.updateEmployee(id,employee)){
            return "Updated Successfully";
        }
        return "Not Updated Successfully";
    }

}
