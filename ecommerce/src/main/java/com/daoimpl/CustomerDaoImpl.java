package com.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.dao.CustomerDao;
import com.model.Customer;


public class CustomerDaoImpl implements CustomerDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public void createCustomer(Customer customer) {
		
		this.hibernateTemplate.save(customer);
		
	}
	@Transactional
	public void deleteCustomer(String userName) {
		Customer customer=this.hibernateTemplate.load(Customer.class, userName);
		this.hibernateTemplate.delete(customer);
	}

	public Customer getCustomer(String userName) {
		return this.hibernateTemplate.get(Customer.class, userName);
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void updateCustomer(Customer customer) {
		this.hibernateTemplate.update(customer);
	}
	public List<Customer> getAllCustomer() {
		
		List<Customer> customers=this.hibernateTemplate.loadAll(Customer.class);
		return customers;
	}

}
