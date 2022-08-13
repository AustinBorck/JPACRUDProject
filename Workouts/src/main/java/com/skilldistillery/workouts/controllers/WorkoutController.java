package com.skilldistillery.workouts.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.skilldistillery.workouts.data.WorkoutDAO;
import com.skilldistillery.workouts.entities.Workout;

@Controller
public class WorkoutController {
	
	@Autowired
	private WorkoutDAO dao;
	
	
	@RequestMapping(path = {"/", "home.do"})
	public String homePage(Model model) {
		model.addAttribute("DELETEME", dao.findById(1));
		return "index";
	}

	@RequestMapping(path = "showWorkouts.do")
	public ModelAndView showingWorkouts(Model model) {
		ModelAndView mv = new ModelAndView();
		mv.addObject("workouts", dao.findAll());
		mv.setViewName("allWorkouts");
		return mv;
	}
	@RequestMapping(path = "workoutByDate.do")
	public String dateWorkouts(String date, Model model) {
		List<Workout> workouts = dao.findWorkoutsByDate(date);
		if(workouts.size() > 0 && workouts != null) {
		model.addAttribute("workouts", workouts);
		return "workoutByDate";
		}
		return "noneFound";
	}
	@RequestMapping(path = "workoutById.do")
	public String idWorkout(Integer id, Model model) {
		Workout workout = dao.findById(id);
		if(workout != null) {
			model.addAttribute("workout", workout);
			return "workoutById";
			}
			return "noneFound";
	}
	@RequestMapping(path = "delete.do")
	public String deleteWorkout(Integer DeleteThisWorkout, Model model) {
		dao.deleteWorkout(DeleteThisWorkout);
		return "deletedWorkout";
	}
	@RequestMapping(path = "createWorkout.do", method=RequestMethod.POST)
	public String createWorkout(Workout newWorkout, Model model) {
		newWorkout = dao.createWorkout(newWorkout);
		if(newWorkout != null) {
			model.addAttribute("workout", newWorkout);
			return "createdWorkout";
		} return "noneFound";
	}
	@RequestMapping(path = "createPage.do")
	public String createPage(Model model) {
		return "createWorkout";
	}
	
	@RequestMapping(path = "updatePage.do")
	public String updatePage (Model model) {
		return "updatePage";
	}
	
}
