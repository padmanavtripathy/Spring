package com.product.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.daoimpl.CustomerDaoImpl;
import com.daoimpl.ProductDaoImpl;
import com.model.Product;

@Controller
public class MainController {
	@Autowired
	private ProductDaoImpl daoImpl;

	@Autowired
	private CustomerDaoImpl customerDaoImpl;
	
	@RequestMapping("/")
	public String index(Model m) {
		List<Product> products = daoImpl.getAllProduct();
		m.addAttribute("products", products);
		return "homepage";

	}

	@RequestMapping("/home")
	public String home(Model m) {
		List<Product> products = daoImpl.getAllProduct();
		m.addAttribute("products", products);
		return "homepage";

	}

	@RequestMapping("/aboutus")
	public String aboutus() {
		return "aboutus";
	}

	@RequestMapping("/contactus")
	public String contactus() {
		return "contactus";
	}

	@RequestMapping("/checkout")
	public String checkout() {
		return "checkout";
	}

	@RequestMapping("/login")
	public String login() {
		return "login";
	}

	@RequestMapping("/description")
	public String pdp(Model m, HttpServletRequest request) {
		int productId = Integer.parseInt(request.getParameter("id"));
		System.out.println(productId);
		Product product = daoImpl.getProduct(productId);
		m.addAttribute("name", product.getName());
		m.addAttribute("product", product);
		return "pdp";
	}

	@RequestMapping("/plp")
	public String plp(Model model, HttpServletRequest request) {
		String productType = request.getParameter("productType");
		List<Product> products = daoImpl.getAllProduct();
		List<Product> filterproduct = new ArrayList<Product>();
		if (!productType.equals("all")) {
			for (Product pro : products) {
				if ((pro.getType()).equals(productType)) {
					filterproduct.add(pro);
				}
			}
		}
		else
		{
			filterproduct=products;
		}
		model.addAttribute("products", filterproduct);
		model.addAttribute("type", productType);
		return "plp";
	}
	@RequestMapping("/profile")
	public String profile(HttpSession session,Model model)
	{
		try {
			String user = session.getAttribute("username").toString();
			model.addAttribute("user",user);
			return "profile";
		}
		catch(Exception e){
			return "redirect:login";
		}
	}
}
