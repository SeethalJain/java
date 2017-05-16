package com.niit.bookstore.controller;
import java.util.Collection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.niit.bookstore.dao.CategoryDAO;
import com.niit.bookstore.dao.ProductDAO;
import com.niit.bookstore.dao.SupplierDAO;
import com.niit.bookstore.dao.UserDAO;
import com.niit.bookstore.model.Cart;
import com.niit.bookstore.model.Category;
import com.niit.bookstore.model.Product;
import com.niit.bookstore.model.Supplier;
import com.niit.bookstore.model.UserDetails;




@Controller
public class LoginController {
	
	@Autowired(required=true)
	UserDetails userDetails;
	
	@Autowired(required=true)
	UserDAO userDAO;
	
	@Autowired
	Category category;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	Supplier supplier;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@Autowired
	Product product;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	Cart cart;
	
	@RequestMapping("/loginsuccess")
	public String showMessage(@RequestParam(value="username")String name,@RequestParam(value="password")String password, 
			HttpSession session,Model model) {
String username = SecurityContextHolder.getContext().getAuthentication().getName();
		
		@SuppressWarnings("unchecked")
		Collection<GrantedAuthority> authorities = (Collection<GrantedAuthority>) SecurityContextHolder.getContext().getAuthentication().getAuthorities();
		String page="";
		
		String role="ROLE_USER";
		for (GrantedAuthority authority:authorities) 
		{
		 System.out.println(authority.getAuthority());
		
		 if (authority.getAuthority().equals(role)) 
	     {
			 session.setAttribute("successlogin", "successfully logged in...");
	    	 session.setAttribute("categoryList",categoryDAO.list());
	    	 session.setAttribute("supplierList",supplierDAO.list());
	    	 session.setAttribute("productList",productDAO.list());
			 session.setAttribute("user",userDetails.getUsername());
		
			 session.setAttribute("category",category);
			 session.setAttribute("supplier",supplier);
			 session.setAttribute("product",product);
	         session.setAttribute("username",username);
	    	 page="index";
	    	 
	    	 
	    	 break;
	     }
	     else 
	     {
	  
	    page="Admin";
	    	 break;
	    }
		}
		 
		 return page;
		}

	@RequestMapping("/isValidUser")
	public ModelAndView showMessage(@RequestParam(value = "username") String username,
			@RequestParam(value = "password") String password) {
		System.out.println("in controller");

		String message;
		ModelAndView mv ;
		if (userDAO.isValidUser(username,password)) 
		{
			message = "Successfully Logged in";
			 mv = new ModelAndView("product");
		} else{
			message="Please enter a valid username and password";
			mv=new ModelAndView("Success");
		}
	
		mv.addObject("message", message);
		mv.addObject("username", username);
		return mv;
	}
	
	
	@RequestMapping("/Logout")
	public ModelAndView logout(HttpServletRequest request,HttpSession session)
	{
		ModelAndView mv=new ModelAndView("index");
		session.invalidate();
		session=request.getSession(true);
		mv.addObject("logoutMessage","you are successfully logged out");
		mv.addObject("loggedOut","true");
		return mv;
	}
}
	


