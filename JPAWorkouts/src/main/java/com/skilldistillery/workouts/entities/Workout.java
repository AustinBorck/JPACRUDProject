package com.skilldistillery.workouts.entities;

import java.time.LocalDateTime;

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
	private int set;
	private int rep;
	private int weight;
	private String split;
	private LocalDateTime date;

	public Workout() {
	}

	// GETTERS AND SETTERS
	public int getId() {
		return id;
	}

	public void setId(int id) {
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

	public int getSet() {
		return set;
	}

	public void setSet(int set) {
		this.set = set;
	}

	public int getRep() {
		return rep;
	}

	public void setRep(int rep) {
		this.rep = rep;
	}

	public int getWeight() {
		return weight;
	}

	public void setWeight(int weight) {
		this.weight = weight;
	}

	public String getSplit() {
		return split;
	}

	public void setSplit(String split) {
		this.split = split;
	}

	public LocalDateTime getDate() {
		return date;
	}

	public void setDate(LocalDateTime date) {
		this.date = date;
	}

	// TOSTRING
	@Override
	public String toString() {
		return "Workout ID: " + id + ", Exersize: " + exersize + " Split: " + split + " Date: " + date.getYear() + "-" + date.getMonthValue() + "-" + date.getDayOfMonth() + " Sets: " + set + " Reps: " + rep + " Weight: " + weight + " Notes: " + notes;
	}

}
