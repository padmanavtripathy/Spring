package com.onetomeny;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Account {
	@Id
	private Long accnumber;
	
	private String type;
	
	public Account() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Account(Long accnumber, String type) {
		super();
		this.accnumber = accnumber;
		this.type = type;
	}
	public Long getAccnumber() {
		return accnumber;
	}
	public void setAccnumber(Long accnumber) {
		this.accnumber = accnumber;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	
}
