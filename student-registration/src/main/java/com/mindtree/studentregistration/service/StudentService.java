package com.mindtree.studentregistration.service;

import java.util.List;

import com.mindtree.studentregistration.model.Student;

public interface StudentService
{

	Student addStudent(Student student);

	List<Student> getAllStudents();

}