package com.niit.fashioncart.dao;

import com.niit.fashioncart.model.Cart;
import com.niit.fashioncart.model.CartItem;

public interface CartItemDAO {
	void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByItemId (int itemId);

}
