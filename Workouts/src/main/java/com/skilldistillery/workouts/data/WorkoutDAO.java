package com.skilldistillery.workouts.data;

import java.time.LocalDate;
import java.util.List;

import com.skilldistillery.workouts.entities.Workout;

public interface WorkoutDAO {
	Workout findById(int id);
	List<Workout> findAll();
	List<Workout> findWorkoutsByDate(String date);
	boolean deleteWorkout(int id);
	Workout updateWorkout(int id);
	Workout createWorkout(Workout newWorkout);
}
