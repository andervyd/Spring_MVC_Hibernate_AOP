package by.andervyd.controller;

import by.andervyd.dao.EmployeeDAO;
import by.andervyd.entity.Employee;
import by.andervyd.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @RequestMapping("/")
    public String showAllEmployees(Model model) {

        List<Employee> allEmployees = employeeService.getAllEmployees();
        model.addAttribute("allEmployees", allEmployees);

        return "all_employees";
    }

    @RequestMapping("/add-new-employee")
    public String addNewEmployee(Model model) {

        Employee employee = new Employee();
        model.addAttribute("employee", employee);

        return  "employee_info";
    }

    @RequestMapping("/saving-employee-data")
    public String savingEmployeeData(@ModelAttribute("employee") Employee employee) {

        employeeService.savingEmployeeData(employee);

        return  "redirect:/";
    }

    @RequestMapping("/update-info")
    public String updatingEmployee(@RequestParam("employeeId") Long id, Model model) {

        Employee employee = employeeService.getEmployee(id);
        model.addAttribute("employee", employee);

        return  "employee_info";
    }
}
