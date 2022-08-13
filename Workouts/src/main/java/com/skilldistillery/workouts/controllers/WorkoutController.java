package com.skilldistillery.workouts.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.skilldistillery.workouts.data.WorkoutDAO;

@Controller
public class WorkoutController {
	
	@Autowired
	private WorkoutDAO dao;
	
	
	@RequestMapping(path = {"/", "home.do"})
	public String homePage(Model model) {
		model.addAttribute("DELETEME", dao.findById(1));
		return "index";
	}

}
