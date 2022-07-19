package com.springboot.crud.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springboot.crud.entities.Student;
import com.springboot.crud.repositories.StudentRepository;

@Service
public class StudentService {
	
	@Autowired
	StudentRepository studentrepository;
	
	public List<Student> all(){
		return studentrepository.findAll();
	}
	
	public Student show(Long id) {
		return studentrepository.findById(id).orElseGet(null);
	}
	
	public Student create(Student student) {
		return studentrepository.save(student);
	}

	public Student update(Student student) {
		return studentrepository.save(student);
	}
	
	public void delete(Long id) {
		studentrepository.deleteById(id);
	}
}