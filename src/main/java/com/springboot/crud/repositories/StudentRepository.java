package com.springboot.crud.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.springboot.crud.entities.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Long> {

}