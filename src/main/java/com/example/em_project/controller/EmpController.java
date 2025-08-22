package com.example.em_project.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.example.em_project.model.Employee;
import com.example.em_project.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller

public class EmpController {
    @Autowired
    EmployeeService employeeService ;



    @GetMapping("/employees")
    public String getAllEmployee(Model model) {
        List<Employee> employees = employeeService.getAllEmployee();
        model.addAttribute("employees", employees);
        return "employeeList";
    }

    @GetMapping("/getEmployee")
    public String getEmpl(){
        return "getEmpForm";
    }

    @PostMapping("/getEmployee")
    public String getEmployeeById(@RequestParam("id") Long id, Model model) {
        System.out.print("Getting employee by id............");
        Employee emp = employeeService.getEmployeeById(id);

        if (emp != null) {
            model.addAttribute("employee", emp);
            return "getEmpForm";
        } else {
            model.addAttribute("errorMsg", "Employee not found with ID " + id);
            return "getEmpForm";
        }
    }


    @GetMapping("/addEmployeePage")
    public String employeePage(){
        return "addEmployee";
    }

    @PostMapping("/register")
    public String registerEmployee(@ModelAttribute Employee employee, Model model) {
        employeeService.createEmployee(employee);
        model.addAttribute("employee", employee);
        model.addAttribute("successMsg", "Employee created successfully!");
        model.addAttribute("formDisabled", true);
        return "addEmployee";
    }

    @GetMapping("/deleteEmployee")
    public String deleteEmployee(){
        return "deleteEmployee";
    }

    @PostMapping("/delete")
    public String deleteEmployee(@RequestParam("id") Long id, Model model) {
        System.out.println("Deleting.......");
        if (employeeService.deleteEmployee(id)) {
            model.addAttribute("successMsg","Employee deleted successfully");
            return "deleteEmployee";
        }
        else {
            model.addAttribute("errorMsg", "Employee not found with ID " + id);
            return "deleteEmployee";
        }
    }

    @GetMapping("/updateEmployee")
    public String updateEmployee() {
        return "updatePage";
    }

    @PostMapping("/updateById")
    public String updateById(@RequestParam("id") Long id, Model model){
        System.out.print("Getting employee by id............");
        Employee emp = employeeService.getEmployeeById(id);

        if (emp != null) {
            return "updateEmployee";
        } else {
            model.addAttribute("errorMsg", "Employee not found with ID " + id);
            return "updatePage";
        }
    }
    @PostMapping("/update")
    public String updateEmployee(Employee emp,Model model){
//        employeeService.updateEmployee(id,employee)
        if(true){
            return "Updated Successfully";
        }
        return "Not Updated Successfully";
    }

}
