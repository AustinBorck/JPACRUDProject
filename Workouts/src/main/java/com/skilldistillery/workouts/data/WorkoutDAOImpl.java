package com.skilldistillery.workouts.data;

import java.text.SimpleDateFormat;
import java.time.LocalDate;
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
		String jpql = "SELECT w FROM Workout w";
		return em.createQuery(jpql, Workout.class).getResultList();
	}

	@Override
	public List<Workout> findWorkoutsByDate(String date) {
		String jpql = "SELECT w FROM Workout w WHERE w.date LIKE :date";
		List<Workout> workouts = null;
		workouts = em.createQuery(jpql, Workout.class).setParameter("date", date).getResultList();
		return workouts;
	}

	@Override
	public boolean deleteWorkout(int id) {
		boolean worked = false;
		Workout deleteMe = em.find(Workout.class, id);
		if (deleteMe != null) {
			em.remove(deleteMe);
			worked = !em.contains(deleteMe);
		}
		return worked;
	}

	@Override
	public Workout updateWorkout(int id, Workout updatedWorkout) {
		Workout editedWorkout = em.find(Workout.class, id);
		editedWorkout.setDate(updatedWorkout.getDate());
		editedWorkout.setExersize(updatedWorkout.getExersize());
		editedWorkout.setSplit(updatedWorkout.getSplit());
		editedWorkout.setSet(updatedWorkout.getSet());
		editedWorkout.setRep(updatedWorkout.getRep());
		editedWorkout.setWeight(updatedWorkout.getWeight());
		editedWorkout.setNotes(updatedWorkout.getNotes());
		return editedWorkout;
	}

	@Override
	public Workout createWorkout(Workout newWorkout) {
		em.persist(newWorkout);
		return newWorkout;
	}

}
