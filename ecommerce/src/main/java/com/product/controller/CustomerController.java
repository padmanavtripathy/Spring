package com.product.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import com.daoimpl.CustomerDaoImpl;
import com.model.Customer;
import com.mysql.cj.Session;

import javax.servlet.http.HttpServletRequest;

@Controller
public class CustomerController {
	@Autowired
	private CustomerDaoImpl daoimpl;
	
	
	
	public CustomerDaoImpl getDaoimpl() {
		return daoimpl;
	}

	public void setDaoimpl(CustomerDaoImpl daoimpl) {
		this.daoimpl = daoimpl;
	}
	
	@RequestMapping(value="/register",method=RequestMethod.POST)
	public String addCustomer(@ModelAttribute Customer customer,Model model)
	{
		try {
		daoimpl.createCustomer(customer);
		return "redirect:login";
		}catch (Exception e) {
			model.addAttribute("Rerror", "user already exist");
			return "login";
		}
	}
	
	@RequestMapping("/updateCustomer")
	public String upadteCustomer(Customer customer)
	{
		daoimpl.updateCustomer(customer);
		return "login";
	}
	
	@RequestMapping("/delete")
	public String deleteCustomer(String userName)
	{
		daoimpl.deleteCustomer(userName);
		return "homepage";
		
	}
	@RequestMapping(value="/validate",method=RequestMethod.POST)
	public String getCustomer(@RequestParam("user") String user,@RequestParam("password") String Password,Model model,HttpServletRequest req)
	{
		System.out.println(user);
		System.out.println(Password);
		List<Customer> customers=daoimpl.getAllCustomer();
		for(Customer customer:customers)
		{
			if((customer.getUser().equals(user)||customer.getEmail().equals(user))&&customer.getPassword().equals(Password))
			{
				
				HttpSession session =(HttpSession) req.getSession();
				session.setAttribute("username", user);
				return "redirect:home";
				
			}
			else{
				System.out.println(user);
				System.out.println(Password);
			}
		}
        
		model.addAttribute("Error", "Invalid username or password");
		return "redirect:login";
	}
	@RequestMapping("/logout")
	public String logout(HttpServletRequest req)
	{
		HttpSession session=req.getSession();
		session.invalidate();
		return "redirect:home";
	}
	
	
}
