package com.niit.bookstore.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

import org.springframework.stereotype.Component;
@Component
@Entity
public class UserOrder implements Serializable {
	 private static final long serialVersionUID = 16L;
	//the below field indicates the primary key of the current entity
	    @Id
	    @GeneratedValue
	    private int userOrderId;
		@OneToOne
	    @JoinColumn(name = "cartId")
	    private Cart cart;

	    @OneToOne
	    @JoinColumn(name = "username")
	    private UserDetails userDetails;

		
	    public int getUserOrderId() {
			return userOrderId;
		}

		public void setUserOrderId(int userOrderId) {
			this.userOrderId = userOrderId;
		}

	    public Cart getCart() {
	        return cart;
	    }

	    public void setCart(Cart cart) {
	        this.cart = cart;
	    }

		public UserDetails getUserDetails() {
			return userDetails;
		}

		public void setUserDetails(UserDetails userDetails) {																	               																																																																																																																				
			this.userDetails = userDetails;
		}


	  
	   
	}



