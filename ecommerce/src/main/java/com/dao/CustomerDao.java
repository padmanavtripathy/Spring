package com.dao;

import java.util.List;

import com.model.Customer;

public interface CustomerDao {

	public void createCustomer(Customer customer);
	public void deleteCustomer(String userName);
	public Customer getCustomer(String userName);
	public void updateCustomer(Customer customer);
	public List<Customer> getAllCustomer();
}
