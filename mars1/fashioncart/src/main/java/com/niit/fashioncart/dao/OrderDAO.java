package com.niit.fashioncart.dao;

import com.niit.fashioncart.model.UserOrder;

public interface OrderDAO {
	void addOrder(UserOrder userOrder);
    double getOrderGrandTotal(int cartId);
}

