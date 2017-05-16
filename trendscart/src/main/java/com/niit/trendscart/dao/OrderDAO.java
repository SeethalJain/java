package com.niit.trendscart.dao;

import com.niit.trendscart.model.UserOrder;

public interface OrderDAO {
	void addOrder(UserOrder userOrder);
    double getOrderGrandTotal(int cartId);
}

