package com.dao;


import java.util.List;

import com.model.MyOrders;

public interface OrdersDao {
	public void createOrder(MyOrders order);
	public void deleteOrder(int id);
	public List<MyOrders> getAllOrder();
}
