package com.mindtree.studentregistration.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mindtree.studentregistration.model.Student;
import com.mindtree.studentregistration.service.impl.StudentServiceImpl;

@Controller
public class StudentController {
	
	@Autowired
	StudentServiceImpl stuServ;

   @RequestMapping("/")
   public String index() {
      return "index";
   }

   @GetMapping("/registration")
   public String registrationRedirect(ModelMap studentModel)
   {
	   studentModel.addAttribute("student", new Student());	  
	   return "registration";
   }
   @PostMapping("/success")
   public String sayHello(@ModelAttribute("registeredStudent") Student student) {
	   
	   stuServ.addStudent(student);
      return "success";
   }
}
