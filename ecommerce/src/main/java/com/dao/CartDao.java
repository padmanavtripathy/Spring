package com.dao;

import java.util.List;

import com.model.Cart;

public interface CartDao {
	public void createProduct(Cart cart);
	public List<Cart> getAllProduct();
	public void deleteCartProduct(int id);
	public Cart getProduct(int id);
}
