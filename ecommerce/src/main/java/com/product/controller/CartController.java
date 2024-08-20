package com.product.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

import com.daoimpl.CartDaoImpl;
import com.daoimpl.MyOrdersDaoImpl;
import com.model.Cart;
import com.model.MyOrders;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class CartController {
	@Autowired
	private CartDaoImpl daoImpl;
	@Autowired
	private MyOrdersDaoImpl myorderdaoImpl;

	@RequestMapping("/addToCart")
	public String addproduct(HttpSession session, @ModelAttribute Cart cart) {
		try
		{
		String user = session.getAttribute("username").toString();
		System.out.println(user);
		cart.setUserid(user);
		if (!user.equals(null)) {
			int pid = cart.getId();
			List<Cart> products = daoImpl.getAllProduct();
			for (Cart cartProducts : products) {
				if (cartProducts.getId() == pid) {
					
					cart.setQuantity(cart.getQuantity() + cartProducts.getQuantity());
				}
			}
			daoImpl.createProduct(cart);
			return "redirect:home";
		} else
			return "login";
		}
		catch (Exception e) {
			return "login";
		}

	}

	@RequestMapping("changeFromCart")
	public String changeProduct(@ModelAttribute Cart cart,HttpSession session) {
		try
		{
		String user = session.getAttribute("username").toString();
		System.out.println(user);
		cart.setUserid(user);
		daoImpl.createProduct(cart);
		}catch(Exception e)
		{
			return "redirect:home";
		}
		return "redirect:cart";
	}

	@RequestMapping("/cart")
	public String printCart(Model model, HttpSession session) {
		try {
			String user = session.getAttribute("username").toString();
			if (!user.equals(null)) {
				List<Cart> cartProducts = daoImpl.getAllProduct();
				if (cartProducts.isEmpty()) {
					return "emptycart";
				}
				int total = 0;
				for (Cart cart : cartProducts) {
					total += cart.getPrice() * cart.getQuantity();
				}
				model.addAttribute("total", total + 40);
				model.addAttribute("cartProducts", cartProducts);
				return "cart";
			} else {
				return "login";
			}
		} catch (Exception e) {
			return "login";
		}
	}

	@RequestMapping("/deleteCartSingle")
	public String deleteFromCart2(HttpServletRequest request) {
		int pid = Integer.parseInt(request.getParameter("id"));
		this.daoImpl.deleteCartProduct(pid);
		return "redirect:cart";

	}

	@RequestMapping("/deleteOnOrderPlace")
	private String deleteFromCart(HttpServletRequest request) {
		String user = request.getParameter("user");
		List<Cart> products = daoImpl.getAllProduct();
		for (Cart cart : products) {
			if (cart.getUserid().equals(user)) {
				this.daoImpl.deleteCartProduct(cart.getId());
			}
		}
		return "home";
	}

	@RequestMapping("/checkoutFromCart")
	public String printCart2(Model model,HttpSession session) {
		String user = session.getAttribute("username").toString();
		List<Cart> cartProduct=new ArrayList<Cart>();
		List<Cart> cartProducts = daoImpl.getAllProduct();
		int total = 0;
		for (Cart cart : cartProducts) {
			if(cart.getUserid().equals(user))
			{
				cartProduct.add(cart);
				total += cart.getPrice() * cart.getQuantity();
			}
		}
		model.addAttribute("total", total + 40);
		model.addAttribute("cartProducts", cartProduct);
		return "checkout";
	}

	@RequestMapping("/deleteCart")
	public String addOrders(HttpSession session) {
		String user = session.getAttribute("username").toString();
		MyOrders myOrders = new MyOrders();
		List<Cart> cartProducts = this.daoImpl.getAllProduct();
		{
			for (Cart cart : cartProducts)
				if (cart.getUserid().equals(user)) {
					System.out.print(cart.getUserid());
					myOrders.setProductName(cart.getProduct());
					myOrders.setQuantity(cart.getQuantity());
					myOrders.setTotal(cart.getPrice() * cart.getQuantity());
					myOrders.setUser(cart.getUserid());
					daoImpl.deleteCartProduct(cart.getId());
					myorderdaoImpl.createOrder(myOrders);
				}
		}
		return "redirect:printOrders";
	}

	@RequestMapping("/printOrders")
	public String printOrders(Model model,HttpSession session) {
		String user = session.getAttribute("username").toString();
		List<MyOrders> myOrders = this.myorderdaoImpl.getAllOrder();
		List<MyOrders> myOrdersPrint=new ArrayList<MyOrders>();
		for(MyOrders order:myOrders)
		{
			if(order.getUser().equals(user))
			{
				myOrdersPrint.add(order);
			}
		}
		model.addAttribute("myOrders", myOrdersPrint);
		return "orders";
	}

	public CartDaoImpl getDaoImpl() {
		return daoImpl;
	}

	public void setDaoImpl(CartDaoImpl daoImpl) {
		this.daoImpl = daoImpl;
	}

	public MyOrdersDaoImpl getMyorderdaoImpl() {
		return myorderdaoImpl;
	}

	public void setMyorderdaoImpl(MyOrdersDaoImpl myorderdaoImpl) {
		this.myorderdaoImpl = myorderdaoImpl;
	}
}
