package com.skilldistillery.workouts.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Workout {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	private String exersize;
	private String notes;
	
	
	@Column(name="number_sets")
	private Integer set;
	private Integer rep;
	private Integer weight;
	private String split;
	
	@Column(name="workout_date")
	private String date;
	

	public Workout() {
	}

	public Workout(String date, String exersize, String notes, Integer rep, Integer set, String split,
			Integer weight) {
	}

	// GETTERS AND SETTERS
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getExersize() {
		return exersize;
	}

	public void setExersize(String exersize) {
		this.exersize = exersize;
	}

	public String getNotes() {
		return notes;
	}

	public void setNotes(String notes) {
		this.notes = notes;
	}

	public Integer getSet() {
		return set;
	}

	public void setSet(Integer set) {
		this.set = set;
	}

	public Integer getRep() {
		return rep;
	}

	public void setRep(Integer rep) {
		this.rep = rep;
	}

	public Integer getWeight() {
		return weight;
	}

	public void setWeight(Integer weight) {
		this.weight = weight;
	}

	public String getSplit() {
		return split;
	}

	public void setSplit(String split) {
		this.split = split;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	// TOSTRING
	@Override
	public String toString() {
		
		return "Workout ID: " + id + ", Exercise: " + exersize + ", Notes: " + notes + ", Sets: " + set + ", Reps: " + rep
				+ ", Weight: " + weight + ", Split: " + split + ", Date: " + date;
	}



}
