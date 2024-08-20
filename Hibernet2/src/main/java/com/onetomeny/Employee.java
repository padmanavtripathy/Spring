package com.onetomeny;
import java.util.*;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

@Entity
public class Employee {
	@Id
	private int empid;
	private String name;
	
	@OneToMany(mappedBy = "accnumber",fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	private List<Account> account;
	
	public Employee() {
		super();
		
		// TODO Auto-generated constructor stub
	}
	
	public Employee(int empid, String name, List<Account> account) {
		super();
		this.empid = empid;
		this.name = name;
		this.account = account;
	}

	public List<Account> getAccount() {
		return account;
	}

	public void setAccount(List<Account> account) {
		this.account = account;
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
	
	
	
}
