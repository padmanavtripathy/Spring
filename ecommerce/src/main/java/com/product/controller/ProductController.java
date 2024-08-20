package com.product.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.daoimpl.ProductDaoImpl;
import com.model.Product;



@Controller
public class ProductController {
	@Autowired
	private ProductDaoImpl daoImpl;
	@RequestMapping("/view-product")
	public String home(Model m)
	{
		List<Product> products=daoImpl.getAllProduct();
		m.addAttribute("products",products);
		return "allProducts";
	}
	//show add product form
	@RequestMapping("/add-product")
	public String addProduct(Model model)
	{
		model.addAttribute("title", "Add Product");
		return "add_product_form";
	}
	//handle add product form
	@RequestMapping(value="/handle-form",method=RequestMethod.GET)
	public RedirectView handleForm(@ModelAttribute Product product,HttpServletRequest request)
	{
		System.out.println(product);
		daoImpl.createProduct(product);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/add-product");
		return redirectView;	
	}
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request)
	{
		this.daoImpl.deleteProduct(productId);
		RedirectView redirectView=new RedirectView();
		redirectView.setUrl(request.getContextPath()+"/view-product");
		return redirectView;
	}
	
	@RequestMapping("/update/{productId}")
	public String updateForm(@PathVariable("productId") int pid,Model m)
	{
		Product product=daoImpl.getProduct(pid);
		m.addAttribute("product",product);
		return "update_form";
	}
}
