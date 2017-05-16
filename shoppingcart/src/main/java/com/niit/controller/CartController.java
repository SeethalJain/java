package com.niit.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.CarddetailDAO;
import com.niit.dao.CategoryDAO;
import com.niit.dao.OrderDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.RegisterDAO;
import com.niit.model.Address;
import com.niit.model.Carddetail;
import com.niit.model.Category;
import com.niit.model.Product;


@SuppressWarnings("unused")
@Controller
public class CartController {
	Logger log = LoggerFactory.getLogger(CategoryController.class);
	  @Autowired
	    private ProductDAO productDAO;
	  
	   @Autowired
	    private RegisterDAO userDAO;

	   @Autowired
	    private OrderDAO orderDAO;


	   @Autowired
	    private CategoryDAO categoryDAO;
	   		 
		 
	   @Autowired
	    private CarddetailDAO carddetailDAO;
	   
		 
		 
//-------------------------------------------------------Add to cart----------------------------------------------------------------------------------------------
	 @RequestMapping(value="/addtocart",method=RequestMethod.GET)
	    public String addtocart(@RequestParam("username")String username, @RequestParam("productId")String productId,@RequestParam("productName")String productname, @RequestParam("quantity") int quantity,@RequestParam("action")String action, HttpSession session,Model model){
		 log.debug("inside addtocart controller");

		 if(orderDAO.addingproduct(username, productId,quantity)){
			 

			 if(action.equals("BuyNow")){
			 model.addAttribute("categoryList", categoryDAO.list());
			 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
			model.addAttribute("cartsize", orderDAO.getOrderListbyname(username).size());
			model.addAttribute("cartId", "ganesh");
				 log.debug("leaving addtocart controller");
			return "cartpage";}
			 else{
				  
				 model.addAttribute("productbyId", productDAO.getProductById(productId));
					model.addAttribute("productId", "productId");
					model.addAttribute("categoryList", categoryDAO.list());
					model.addAttribute("productList", productDAO.getProductById(productDAO.getProductById(productId).getCategory().getId()));
					//model.addAttribute("category", categoryDAO.getById(productDAO.getProductById(productId).getCategory()));
					
					String User = (String)session.getAttribute("Username");
					model.addAttribute("cartList", orderDAO.getOrderListbyname(User));
					model.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
					
					return "productpage";
			 }
		    
		 }
		 else{
		 
		 
		 if(action.equals("BuyNow")){
		 model.addAttribute("categoryList", categoryDAO.list());
		 orderDAO.add(productDAO.getProductById(productId),userDAO.getbyId(username),quantity,quantity*productDAO.getProductById(productId).getPrice());
		 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		model.addAttribute("cartsize", orderDAO.getOrderListbyname(username).size());
		log.debug("leaving addtocart controller");
		return "cartpage";}
		 else{
			 orderDAO.add(productDAO.getProductById(productId),userDAO.getbyId(username),quantity,quantity*productDAO.getProductById(productId).getPrice());
			  
			 model.addAttribute("productbyId", productDAO.getProductById(productId));
				model.addAttribute("productId", "productId");
				model.addAttribute("categoryList", categoryDAO.list());
				model.addAttribute("productList", productDAO.getProductListbycategory(productDAO.getProductById(productId).getCategory().getId()));
				model.addAttribute("category", categoryDAO.getCategoryById(productDAO.getProductById(productId).getCategory().getId()));
				
				String User = (String)session.getAttribute("User");
				model.addAttribute("cartList", orderDAO.getOrderListbyname(User));
				model.addAttribute("cartsize", orderDAO.getOrderListbyname(User).size());
				
				return "productpage";
		 }
	    }}

		 
	//-------------------------------------------------------Add to cart without quantity----------------------------------------------------------------------------------------------
	 @RequestMapping(value="/cartpage",method=RequestMethod.GET)
	    public String addtocart(@RequestParam("username")@ModelAttribute("product") Product product,String username, HttpSession session, Model model){
		 log.debug("inside addtocart controlller without quantity");
		 List<Product> plist= productDAO.plist();
		 model.addAttribute("productList", plist);
		 model.addAttribute("categoryList", categoryDAO.list());	
		 model.addAttribute("cartList", orderDAO.getOrderListbyname(username));
		 model.addAttribute("cartsize", orderDAO.getOrderListbyname(username).size());
		 log.debug("leaving addtocart controller without quantity");
		 return "cartpage";
	    }
	
	//-------------------------------------------------------Remove from cart----------------------------------------------------------------------------------------------
	 
		@RequestMapping(value = "/cartcancel") 
		public String deleteCategory(@RequestParam("orderid") int orderid, Model model) {
			orderDAO.deleteCart(orderid);
			System.out.println("CartCancel Controller Passed");
			return "cartpage";

		}
		 
		@RequestMapping(value="makepayment", method=RequestMethod.POST)
		public ModelAndView addCarddetail(Carddetail carddetail,Model model)
	     {
			System.out.println("Make Payment Controller Passed");
			ModelAndView mv=new ModelAndView("Home");
			mv.addObject("thnk","Thank You!!!"); 
			mv.addObject("dt","Payment Done & Order Confirmed");
			carddetailDAO.addCarddetail(carddetail);
			return mv;
		
		}
		
		@RequestMapping("Cartpage")
		public ModelAndView showCartpage(){		
		{
			System.out.println("Clicked on Cart link");
			ModelAndView mv = new ModelAndView("cartpage");
			return mv;
		}
		}





}
