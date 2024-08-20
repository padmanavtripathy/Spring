package com.menytomeny;

import java.util.*;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToMany;

@Entity
public class Project {
	@Id
	private int pid;
	@Column(name="project")
	private String name;
	
	@ManyToMany
	private List<Emp> employees;

	public Project() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Project(int pid, String name, List<Emp> employees) {
		super();
		this.pid = pid;
		this.name = name;
		this.employees = employees;
	}

	public int getPid() {
		return pid;
	}

	public void setPid(int pid) {
		this.pid = pid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Emp> getEmployees() {
		return employees;
	}

	public void setEmployees(List<Emp> employees) {
		this.employees = employees;
	}
	
}
