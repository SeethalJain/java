package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.niit.dao.AddressDAO;
import com.niit.model.Address;

@Controller
public class AddressController {
	
	@Autowired
    AddressDAO addressdao;
	
	@RequestMapping(value="Address",method=RequestMethod.GET)
	public ModelAndView sendaddress(@ModelAttribute("address") Address address)
	{
		ModelAndView mv=new ModelAndView("Address");
		System.out.println("Address Page Opened");
		return mv;
	}
	
	@RequestMapping(value="saveaddress", method=RequestMethod.POST)
	public ModelAndView addAddress(Address address,Model model)
     {
		
		ModelAndView mv=new ModelAndView("Payment");
		addressdao.addAddress(address);
		return mv;
	
	}


}
