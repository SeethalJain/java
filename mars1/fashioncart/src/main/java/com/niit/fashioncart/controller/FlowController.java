package com.niit.fashioncart.controller;
/*package com.grostore.controller;

import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;

import com.grostore.dao.CartDAO;
import com.grostore.dao.CartItemDAO;
import com.grostore.dao.OrderDAO;
import com.grostore.dao.UserDAO;
import com.grostore.model.BillingAddress;
import com.grostore.model.Cart;
import com.grostore.model.Product;
import com.grostore.model.ShippingAddress;
import com.grostore.model.UserDetails;
@Controller
public class FlowController {

	@Autowired
	private ShippingAddress shippingAddress;

	@Autowired
	private BillingAddress billingAddress;
	@Autowired
	private CardDetail cardDetail;

	@Autowired
	private ShippingAddressDAO shippingAddressDAO;

	@Autowired
	private BillingAddressDAO billingAddressDAO;
	@Autowired
	private CardDetailDAO cardDetailDAO;
	@Autowired
	UserDetails userDetails;
	@Autowired
	UserDAO userDAO;

	@Autowired
	CartDAO cartDAO;

	@Autowired
	Cart cart;
	 
	@Autowired
	 private SessionFactory sessionFactory;

	@Autowired
	 private OrderDAO orderDAO;
	@Autowired
	CartItemDAO cartItemDAO;
	@Autowired
	HttpSession httpSession;
	@Autowired
	Product product;
	
	 public Cart validate(int cartId) throws IOException {
	        Cart cart=getCartById(cartId);
	        if(cart==null||cart.getCartItems().size()==0) {
	            throw new IOException(cartId+"");
	        }
	        update(cart);
	        return cart;
	    }
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
	public String addShippingAddress(ShippingAddress shippingAddress) {
		userDetails = userDAO.getCustomerByUsername(SecurityContextHolder.getContext()
				.getAuthentication().getName());

		shippingAddress.setUsername(userDetails.getUsername());
		//checkoutDetails.setShippingAddress(shippingAddress);

		this.shippingAddress.setUsername(userDetails.getUsername());
		this.shippingAddress.setLine1(shippingAddress.getLine1());
		this.shippingAddress.setLine2(shippingAddress.getLine2());
		this.shippingAddress.setCity(shippingAddress.getCity());
		this.shippingAddress.setState(shippingAddress.getState());
		this.shippingAddress.setCountry(shippingAddress.getCountry());
		this.shippingAddress.setZipCode(shippingAddress.getZipCode());

		return "success";
	}

	public String addBillingAddress( BillingAddress billingAddress) {
		userDetails = userDAO.getCustomerByUsername(SecurityContextHolder.getContext().getAuthentication().getName());
		billingAddress.setUserName(userDetails.getUsername());
		//checkoutDetails.setBillingAddress(billingAddress);

		this.billingAddress.setUserName(userDetails.getUsername());
		this.billingAddress.setLine1(billingAddress.getLine1());
		this.billingAddress.setLine2(billingAddress.getLine2());
		this.billingAddress.setCity(billingAddress.getCity());
		this.billingAddress.setState(billingAddress.getState());
		this.billingAddress.setCountry(billingAddress.getCountry());
		this.billingAddress.setZipCode(billingAddress.getZipCode());

		return "success";
	}

}
*/