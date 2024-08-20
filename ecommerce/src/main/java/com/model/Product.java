package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String description;
	private String type;
	private String sid;
	private long price;
	private String image1;
	private String image2;
	private String image3;
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Product(int id, String name, String description, String type, String sid, long price, String image1,
			String image2, String image3) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.type = type;
		this.sid = sid;
		this.price = price;
		this.image1 = image1;
		this.image2 = image2;
		this.image3 = image3;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getSid() {
		return sid;
	}
	public void setSid(String sid) {
		this.sid = sid;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public String getImage3() {
		return image3;
	}
	public void setImage3(String image3) {
		this.image3 = image3;
	}
	@Override
	public String toString() {
		return "Product [id=" + id + ", name=" + name + ", description=" + description + ", type=" + type + ", sid="
				+ sid + ", price=" + price + ", image1=" + image1 + ", image2=" + image2 + ", image3=" + image3 + "]";
	}
	
}
