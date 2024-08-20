package com.embedingobjects;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class StudentMark {
	@Id
	private int id;
	private String name;
	
	private Score score;

	public StudentMark(int id, String name, Score score) {
		super();
		this.id = id;
		this.name = name;
		this.score = score;
	}

	public StudentMark() {
		super();
		// TODO Auto-generated constructor stub
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Score getScore() {
		return score;
	}

	public void setScore(Score score) {
		this.score = score;
	}

	@Override
	public String toString() {
		return "StudentMark [id=" + id + ", name=" + name + ", score=" + score + "]";
	}

	
}
