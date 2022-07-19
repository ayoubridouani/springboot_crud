package com.springboot.crud.repositories;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.springboot.crud.entities.User;

public interface UserRepository extends CrudRepository<User, Integer> {

	@Query("select u from User u where username = :username")
	public User getUserByUsername(@Param("username") String username);
}