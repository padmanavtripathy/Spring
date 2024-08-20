package com.menytomeny;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Emp {
	@Id
	private int empid;
	
	private String name;
	
	@ManyToMany
	private List<Project> projects;
	

	public Emp() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Emp(int empid, String name) {
		super();
		this.empid = empid;
		this.name = name;
	}

	public int getEmpid() {
		return empid;
	}

	public void setEmpid(int empid) {
		this.empid = empid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Project> getProjects() {
		return projects;
	}

	public void setProjects(List<Project> project) {
		this.projects = project;
	}

	@Override
	public String toString() {
		return "Employee [empid=" + empid + ", name=" + name + "]";
	}

	
	
	
}
