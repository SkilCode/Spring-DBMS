package com.abhi.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

import com.sun.istack.internal.NotNull;

@Entity
public class Student {
@Id
@NotNull	
@Column(name = "student_id")
String id;
@Column(name = "student_name")
String name;
@Column(name = "student_grade")
String grade;
@Column(name = "student_gender")
String gender;
public String getId() {
	return id;
}
public void setId(String id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getGrade() {
	return grade;
}
public void setGrade(String grade) {
	this.grade = grade;
}

public String getGender() {
	return gender;
}
public void setGender(String gender) {
	this.gender = gender;
}
@Override
public String toString() {
	return "Student [id=" + id + ", name=" + name + ", grade=" + grade + ", gender=" + gender + "]";
}

}
