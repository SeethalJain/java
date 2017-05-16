package com.niit.bookstore.dao;

import com.niit.bookstore.model.UserOrder;

public interface OrderDAO {
	void addOrder(UserOrder userOrder);
    double getOrderGrandTotal(int cartId);
}

