package com.niit.dao;

import java.util.List;

import com.niit.model.OrderModel;
import com.niit.model.Product;
import com.niit.model.Register;


public interface OrderDAO {
	
	public boolean add(Product productModel, Register user, int quantity,int total);
	public List<OrderModel> getOrderListbyname(String username);
	public boolean addingproduct(String username, String productId, int quantity);
	public boolean deleteCart(int orderid);
	


}
