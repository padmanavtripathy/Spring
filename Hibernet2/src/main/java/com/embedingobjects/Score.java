package com.embedingobjects;

import javax.persistence.Embeddable;

@Embeddable
public class Score {
	private int Total;
	private int contains;
	public int getContains() {
		return contains;
	}
	public void setContains(int contains) {
		this.contains = contains;
	}
	public int getTotal() {
		return Total;
	}
	public void setTotal(int total) {
		Total = total;
	}
	public Score() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Score(int total, int contains) {
		super();
		Total = total;
		this.contains = contains;
	}
	@Override
	public String toString() {
		return "Score [Total=" + Total + ", contains=" + contains + "]";
	}
	
}
