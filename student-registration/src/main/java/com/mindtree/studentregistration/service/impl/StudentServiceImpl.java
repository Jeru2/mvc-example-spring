package com.mindtree.studentregistration.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.studentregistration.model.Student;
import com.mindtree.studentregistration.repository.StudentRepository;
import com.mindtree.studentregistration.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService
{
	@Autowired
	StudentRepository stuRepo;
	
	
	@Override
	public Student addStudent(Student student)
	{	
		stuRepo.save(student);
		return student;
	}
	
	@Override
	public List<Student> getAllStudents()
	{
		return stuRepo.findAll();
	}
}
