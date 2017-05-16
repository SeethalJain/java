package com.niit.trendscart.dao;

import com.niit.trendscart.model.Cart;
import com.niit.trendscart.model.CartItem;

public interface CartItemDAO {
	void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByItemId (int itemId);

}
