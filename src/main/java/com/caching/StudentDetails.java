package com.caching;

import javax.persistence.Cacheable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

@Entity
@Cacheable
@Cache(usage = CacheConcurrencyStrategy.READ_WRITE)
public class StudentDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int roll;
	private String name;
	private int passingyear;
	public StudentDetails() {
		super();
		// TODO Auto-generated constructor stub
	}
	public StudentDetails(int roll, String name, int passingyear) {
		super();
		this.roll = roll;
		this.name = name;
		this.passingyear = passingyear;
	}
	public int getRoll() {
		return roll;
	}
	public void setRoll(int roll) {
		this.roll = roll;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPassingyear() {
		return passingyear;
	}
	public void setPassingyear(int passingyear) {
		this.passingyear = passingyear;
	}
	@Override
	public String toString() {
		return "StudentDetails [roll=" + roll + ", name=" + name + ", passingyear=" + passingyear + "]";
	}
	
	

}
