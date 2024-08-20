package com.model;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {

	@Id
	@Column(nullable = false, length = 32)
	private String user;
	
	
	private String name;
	private String Email;

	private String password;
	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Customer(String user, String name, String email, String password) {
		super();
		this.user = user;
		this.name = name;
		Email = email;
		this.password = password;
	}
	
	
	
}
