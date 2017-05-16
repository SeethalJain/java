package com.niit.fashioncart.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.fashioncart.dao.CartDAO;
import com.niit.fashioncart.dao.OrderDAO;
import com.niit.fashioncart.model.Cart;
import com.niit.fashioncart.model.UserDetails;
import com.niit.fashioncart.model.UserOrder;
@Controller
public class OrderController {
	 @Autowired
	    private CartDAO cartDAO;

	    @Autowired
	    private OrderDAO orderDAO;
	    /*
	     * createOrder method is used to insert user order into the database.
	     */
	    @RequestMapping("/order/{cartId}")
	    public String createOrder(@PathVariable("cartId") int cartId) {
	    	System.out.println("in order");
	    	UserOrder userOrder = new UserOrder();
	        Cart cart=cartDAO.getCartById(cartId);
	        userOrder.setCart(cart);

	        UserDetails userDetails = cart.getUserDetails();
	        userOrder.setUserDetails(userDetails);
	       // userOrder.setBillingAddress(userdetails.getBillingAddress());
	        //userOrder.setShippingAddress(usersDetail.getShippingAddress());

	        orderDAO.addOrder(userOrder);

	        return "redirect:/checkout?cartId="+cartId;
	    }
	}



