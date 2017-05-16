package com.niit.trendscart.dao;

import java.io.IOException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.trendscart.model.Cart;
@Repository
@Transactional
public class CartDAOImpl implements CartDAO{
	 @Autowired
	    private SessionFactory sessionFactory;

	    @Autowired
	    private OrderDAO orderDAO;

	    public Cart getCartById (int cartId) {
	        Session session = sessionFactory.getCurrentSession();
	        return (Cart) session.get(Cart.class, cartId);
	    }

	    public void update(Cart cart) {
	        int cartId = cart.getCartId();
	        double grandTotal = orderDAO.getOrderGrandTotal(cartId);
	        cart.setGrandTotal(grandTotal);
             Session session = sessionFactory.getCurrentSession();
	        session.saveOrUpdate(cart);
	    }

	    public Cart validate(int cartId) throws IOException {
	        Cart cart=getCartById(cartId);
	        if(cart==null||cart.getCartItems().size()==0) {
	            throw new IOException(cartId+"");
	        }
	        update(cart);
	        return cart;
	    }
	   
	 }
