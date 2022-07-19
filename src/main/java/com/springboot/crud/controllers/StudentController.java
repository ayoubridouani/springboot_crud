package com.springboot.crud.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.springboot.crud.entities.Student;
import com.springboot.crud.services.StudentService;

@Controller
public class StudentController {
	@Autowired
	StudentService studentservice;

	@GetMapping("/")
	public String index(Model model) {
		List<Student> students = studentservice.all();
		model.addAttribute("students", students);
		return "index";
	}

	@GetMapping("/create")
	public String create(Model model) {
		Student student = new Student();
		model.addAttribute("student", student);
		return "create";
	}

	@PostMapping("/store")
	public String store(Student student) {
		studentservice.create(student);
		return "redirect:/";
	}

	@GetMapping("/edit/{id}")
	public String edit(Model model, @PathVariable(name = "id") Long id) {
		Student student = studentservice.show(id);
		model.addAttribute("student", student);
		return "edit";
	}

	@PostMapping("/update")
	public String update(Student student) {
		studentservice.update(student);
		return "redirect:/";
	}

	@GetMapping("/delete/{id}")
	public String delete(@PathVariable(name = "id") Long id) {
		studentservice.delete(id);
		return "redirect:/";
	}
}