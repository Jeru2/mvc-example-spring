package com.mindtree.studentregistration;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.mockito.Mockito.when;

import java.util.ArrayList;
import java.util.List;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;

import com.mindtree.studentregistration.model.Student;
import com.mindtree.studentregistration.repository.StudentRepository;
import com.mindtree.studentregistration.service.impl.StudentServiceImpl;

@SpringBootTest
public class StudentServiceTest
{
	@Autowired
	StudentServiceImpl studentService;
	
	@MockBean
	StudentRepository studentRepo;
	
	@Test
	void testAddStudent()
	{
		Student student1 = new Student("Albert", "Palmer", "al.9palmer@gmail.com", 8977444555L, "United Kingdom");
		when(studentRepo.save(student1)).thenReturn(student1);
		assertEquals(student1, studentService.addStudent(student1));
	}
	
	@Test
	void testGetAllStudents()
	{
		List<Student> students = new ArrayList<Student>();
		Student student1 = new Student("Albert", "Palmer", "al.9palmer@gmail.com", 8977444555L, "United Kingdom");
		Student student2 = new Student("Rob", "Taylor", "robtaylor0110@gmail.com", 8783999215L, "Canada");
		Student student3 = new Student("Harsh", "Singh", "harshsingh35@gmail.com", 9274832894L, "India");
		Student student4 = new Student("Louiz", "Carlos", "geneammons2@gmail.com", 9946891102L, "Brazil");
		Student student5 = new Student("Niels", "Orsted", "orstedniels@gmail.com", 8440847563L, "Denmark");
		Student student6 = new Student("Fred", "Schmidt", "Schmidt.max@gmail.com", 9402718455L, "Austria");
		students.add(student1);
		students.add(student2);
		students.add(student3);
		students.add(student4);
		students.add(student5);
		students.add(student6);
		when(studentRepo.findAll()).thenReturn(students);
		assertEquals(students, studentService.getAllStudents());
	}
	
	
}
