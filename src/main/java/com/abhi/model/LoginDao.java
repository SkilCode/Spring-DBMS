package com.abhi.model;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

public interface LoginDao extends JpaRepository<Login_details, Integer> {
	

}
