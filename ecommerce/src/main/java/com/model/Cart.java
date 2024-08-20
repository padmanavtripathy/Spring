package com.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cart {
	
	@Id
	private int id;
	private String image;
	private String product;
	private int price;
	private int quantity;
	private String userid;
	public Cart() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Cart(int id, String image, String product, int price, int quantity, String userid) {
		super();
		this.id = id;
		this.image = image;
		this.product = product;
		this.price = price;
		this.quantity = quantity;
		this.userid = userid;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getProduct() {
		return product;
	}
	public void setProduct(String product) {
		this.product = product;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}

	@Override
	public String toString() {
		return "Cart [id=" + id + ", image=" + image + ", product=" + product + ", price=" + price + ", quantity="
				+ quantity + ", userid=" + userid + "]";
	}
	
}
