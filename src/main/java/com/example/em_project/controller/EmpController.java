package com.example.em_project.controller;


import com.example.em_project.entity.SkillsEntity;
import com.example.em_project.model.Skills;
import com.example.em_project.service.SkillsService;
import org.antlr.v4.runtime.tree.pattern.ParseTreePattern;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import com.example.em_project.model.Employee;
import com.example.em_project.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("")
public class EmpController {
    @Autowired
    EmployeeService employeeService;

    @Autowired
    SkillsService skillsService;


    @GetMapping("/home")
    public String home() {
        return "employeePage";
    }

    @ResponseBody
    @GetMapping("/api/employees")
    public List<Employee> getAllEmployees() {
        return employeeService.getAllEmployee();
    }


    @GetMapping("/getEmployee")
    public String getEmpl(Model model) {
        List<Skills> skills = skillsService.getAllSkills();
        model.addAttribute("skills", skills);
        return "getEmpForm";
    }

    @PostMapping("/getEmployee")
    public String getEmployeeById(@RequestParam("id") Long id, Model model) {
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
    public String employeePage(Model model) {
        List<Skills> skills = skillsService.getAllSkills();
        model.addAttribute("skills", skills);
        return "addEmployee";
    }

    @PostMapping("/register")
    public String registerEmployee(@ModelAttribute Employee employee, Model model) {
        employeeService.createEmployee(employee);
        model.addAttribute("employee", employee);
        model.addAttribute("successMsg", "Employee created successfully!");
        model.addAttribute("formDisabled", true);
        List<Skills> skills = skillsService.getAllSkills();
        model.addAttribute("skills", skills);
        return "addEmployee";
    }

    @GetMapping("/deleteEmployee")
    public String deleteEmployee() {
        return "deleteEmployee";
    }

    @PostMapping("/delete")
    public String deleteEmployee(@RequestParam("id") Long id, Model model) {
        if (employeeService.deleteEmployee(id)) {
            model.addAttribute("successMsg", "Employee deleted successfully");
            return "deleteEmployee";
        } else {
            model.addAttribute("errorMsg", "Employee not found with ID " + id);
            return "deleteEmployee";
        }
    }

    @GetMapping("/updateEmployee")
    public String updateEmployee() {
        return "updatePage";
    }

    @PostMapping("/updateById")
    public String updateById(@RequestParam("id") Long id, Model model) {
        Employee emp = employeeService.getEmployeeById(id);
        List<Skills> skills = skillsService.getAllSkills();
        model.addAttribute("skills", skills);
        if (emp != null) {
            model.addAttribute("employee", emp);
            return "updateEmployee";
        } else {
            model.addAttribute("errorMsg", "Employee not found with ID " + id);
            return "updatePage";
        }
    }

    @PostMapping("/update")
    public String updateEmployee(@ModelAttribute("employee") Employee emp, Model model) {
        boolean updated = employeeService.updateEmployee(emp);

        if (updated) {
            model.addAttribute("successMsg", "Employee updated successfully!");
            return "updatePage";
        } else {
            model.addAttribute("errorMsg", "Failed to update employee. ID not found.");
            return "updatePage";
        }
    }

}
