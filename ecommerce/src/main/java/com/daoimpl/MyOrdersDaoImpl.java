package com.daoimpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;

import com.dao.OrdersDao;
import com.model.MyOrders;

public class MyOrdersDaoImpl implements OrdersDao {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}

	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

	@Transactional
	public void createOrder(MyOrders order) {
		this.hibernateTemplate.saveOrUpdate(order);
		
	}
	@Transactional
	public void deleteOrder(int id) {
		MyOrders order=this.hibernateTemplate.load(MyOrders.class, id);
		this.hibernateTemplate.delete(order);
		
	}

	public List<MyOrders> getAllOrder() {
		List<MyOrders> orders=this.hibernateTemplate.loadAll(MyOrders.class);
		return orders;
	}

}
