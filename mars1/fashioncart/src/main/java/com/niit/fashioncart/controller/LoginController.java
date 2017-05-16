package com.niit.fashioncart.controller;
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

import com.niit.fashioncart.dao.CategoryDAO;
import com.niit.fashioncart.dao.ProductDAO;
import com.niit.fashioncart.dao.SupplierDAO;
import com.niit.fashioncart.dao.UserDAO;
import com.niit.fashioncart.model.Category;
import com.niit.fashioncart.model.Product;
import com.niit.fashioncart.model.Supplier;
import com.niit.fashioncart.model.UserDetails;




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
			 session.setAttribute("successlogin", "successfully logged in");
	    	 session.setAttribute("categoryList",categoryDAO.list());
	    	 session.setAttribute("supplierList",supplierDAO.list());
	    	 session.setAttribute("productList",productDAO.list());
			 session.setAttribute("username",userDetails.getUsername());
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
	
	/*@RequestMapping(value="/isValidUser")
	public ModelAndView login(@RequestParam(value="username") String username,
			@RequestParam(value="password") String password,HttpSession session){
		System.out.println("login controller");
		userDetails = userDAO.isValidUser(username, password);
		ModelAndView mv = null;
		if(userDetails == null){
        mv = new ModelAndView ("Login");
		mv.addObject("message", "please try again");
	} else {
		if (userDetails.getRole().equals("ROLE_ADMIN")){
			mv = new ModelAndView("Admin");
		session.setAttribute("categoryList", categoryDao.list());
		session.setAttribute("supplierList", supplierDao.list());
		session.setAttribute("productList", productDao.list());
		
		session.setAttribute("category", category);
		session.setAttribute("supplier", supplier);
		session.setAttribute("product", product);
	
			}
	else if (userDetails.getRole().equals("ROLE_USER")){
			mv = new ModelAndView("Product");
		session.setAttribute("username", userDetails.getUsername());
	}
	}
	return mv;	
	}
*/  
	@RequestMapping("/Productview")
	public ModelAndView onLoadProductView(Model model)
	{
		model.addAttribute("category", new Category());
		model.addAttribute("categoryList", this.categoryDAO.list());
		model.addAttribute("product", new Product());
		model.addAttribute("productList",this.productDAO.list());
		ModelAndView mv=new ModelAndView("Productview");

		return mv;

	}

	@RequestMapping("/viewCustomers")
	public ModelAndView customers()
	{
		ModelAndView mv = new ModelAndView("customerdetails");
		mv.addObject("userDetails", userDetails);
	
		mv.addObject("ListUserDetails", userDAO.list());
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
	


