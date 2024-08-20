package com.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.dao.CartDao;
import com.model.Cart;


public class CartDaoImpl implements CartDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void createProduct(Cart cart) {
		this.hibernateTemplate.saveOrUpdate(cart);
		
	}

	public List<Cart> getAllProduct() {
		List<Cart> products=this.hibernateTemplate.loadAll(Cart.class);
		return products;
	}
	

	public Cart getProduct(int pid) {
		return this.hibernateTemplate.get(Cart.class, pid);
	}
	@Transactional
	public void deleteCartProduct(int id) {
		Cart p=this.hibernateTemplate.load(Cart.class, id);
		this.hibernateTemplate.delete(p);
		
	}

}
