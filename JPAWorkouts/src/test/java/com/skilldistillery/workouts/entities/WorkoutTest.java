package com.skilldistillery.workouts.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class WorkoutTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Workout workout;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAWorkouts");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		workout = em.find(Workout.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		workout = null;
	}

	@Test
	void test_workout_entity_mapping() {
		assertNotNull(workout);
		assertEquals("BackSquat", workout.getExersize());
	}
	@Test
	void test_workout_entity_mappings() {
		assertEquals("2022-08-10", workout.getDate());
	}
	@Test
	void test_workout_entity_mapping_set() {
		assertEquals(5, workout.getSet());
	}
	@Test
	void test_workout_entity_mappings_rep() {
		assertEquals(10, workout.getRep());
	}

}
