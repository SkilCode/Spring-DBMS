package com.abhi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import org.springframework.stereotype.Component;
@Entity
public class Login_details {
@Id
@Column(name = "login_id")
	Integer id;
@Column(name = "login_password")
	String pass;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
				}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	@Override
	public String toString() {
		return "Login_details [id=" + id + ", pass=" + pass + "]";
	}

}
