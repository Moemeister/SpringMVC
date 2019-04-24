package com.uca.capas.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.uca.capas.domain.Student;

@Controller
public class MainController {
	
	
	@RequestMapping("/xd")
	@ResponseBody
	public Student studentF() {
		Student student = new Student("Gerardo","Mira","07/08/1997","Ing Informatica","Estudiante");
		return student;
	}

	@RequestMapping("/")
	public  ModelAndView initMain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("main");
		mav.addObject("message","Bienvenidos a MVC");
		return mav;
	}
	
	@RequestMapping(value="/formData",method = RequestMethod.POST)
	public ModelAndView formData(@RequestParam(value="name") String name,
		@RequestParam(value = "lname") String lName, @RequestParam(value = "bdate") String bDate,
		@RequestParam(value = "career") String career, @RequestParam(value = "experience") String experience) {
		
		ModelAndView mav = new ModelAndView();
		Student student = new Student();
		student.setName(name);
		student.setLastName(lName);
		student.setbDate(bDate);
		student.setCareer(career);
		student.setExperience(experience);
		mav.setViewName("form");
		mav.addObject("student",student);
		return mav;
	}
	
	
	
}
