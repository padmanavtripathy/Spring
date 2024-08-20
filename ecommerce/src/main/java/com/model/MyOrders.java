package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class MyOrders {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int oid;
	private String user;
	private String productName;
	private int quantity;
	private int total;
	public MyOrders() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public MyOrders(int oid, String user, String productName, int quantity, int total) {
		super();
		this.oid = oid;
		this.user = user;
		this.productName = productName;
		this.quantity = quantity;
		this.total = total;
	}

	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}
	
	
	
	
}
