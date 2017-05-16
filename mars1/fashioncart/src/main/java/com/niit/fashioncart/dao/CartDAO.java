package com.niit.fashioncart.dao;

import java.io.IOException;

import com.niit.fashioncart.model.Cart;

public interface CartDAO {
	 Cart getCartById (int cartId);
Cart validate(int cartId) throws IOException;
	   void update(Cart cart);
}
