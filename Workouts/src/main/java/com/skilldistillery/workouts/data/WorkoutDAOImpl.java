package com.skilldistillery.workouts.data;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.workouts.entities.Workout;
@Service
@Transactional
public class WorkoutDAOImpl implements WorkoutDAO {

	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public Workout findById(int id) {
		return em.find(Workout.class, id);
	}

	@Override
	public List<Workout> findAll() {
		List<Workout> workouts = null;
//		String jpql = "SELECT f FROM Film f";
//		return em.createQuery(jpql, Film.class).getResultList();
		return workouts;
	}

	@Override
	public List<Workout> findWorkoutsByDate(Date date) {
		List<Workout> workouts = null;
		return workouts;
	}

	@Override
	public boolean deleteWorkout(int id) {
		return false;
	}

	@Override
	public Workout updateWorkout(int id) {
		return null;
	}

	@Override
	public Workout createWorkout(Workout newWorkout) {
		
		return null;
	}

}
