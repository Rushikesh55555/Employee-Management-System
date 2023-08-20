package com.ems.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ems.dao.EmployeeDao;
import com.ems.pojo.Employee;

import jakarta.servlet.http.HttpSession;

@Controller
public class EmsController {
	
	@Autowired
	EmployeeDao eDao;
	
	@GetMapping("/")
	public String index(Model model) {
		model.addAttribute("employees", eDao.allEmp());
		return "index";
	}
	
	@GetMapping("/add")
	public String addEmpForm() {
		return "add-emp";
	}
	
	@PostMapping("/add")
	public String addEmp(@ModelAttribute Employee e, Model model ) {
		System.out.println(e);
		if(eDao.saveEmp(e)!=null) {
			model.addAttribute("msg", "One Employee Added");
		} else {
			model.addAttribute("msg", "Error");
		}
		return "add-emp";
	}
	
	@GetMapping("/details/{id}")
	public String empDetails(@PathVariable("id") int id, Model model) {
		model.addAttribute("employee", eDao.getEmployeeById(id));
		return "emp-details";
	}
	
	@GetMapping("/update/{id}")
	public String empUpdate(@PathVariable("id") int id, Model model) {
		model.addAttribute("employee", eDao.getEmployeeById(id));
		return "emp-update";
	}
	
	@PostMapping("/update/{id}")
	public String empUpdate(
			@ModelAttribute Employee e,
			@PathVariable("id") int id,
			HttpSession session
			) {
		e.setId(id);
		if(eDao.saveEmp(e)!=null) {
			session.setAttribute("msg", "One Employee Updated");
		} else {
			session.setAttribute("msg", "Error");
		}
		return "redirect:/";
	}
	
	@GetMapping("/delete/{id}")
	public String empDelete(@PathVariable("id") int id) {
		eDao.deleteEmployee(id);
		return "redirect:/";
	}
	
	@PostMapping("/search")
	public String searchEmployee(@RequestParam("key") String key, Model model) {
		model.addAttribute("employees", eDao.search(key));
		return "search-result";
	}
	
}
