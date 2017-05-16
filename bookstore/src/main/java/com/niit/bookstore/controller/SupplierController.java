package com.niit.bookstore.controller;
import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.niit.bookstore.dao.SupplierDAO;
import com.niit.bookstore.model.Supplier;
import com.niit.bookstore.util.Util;

@Controller
public class SupplierController {
	
	@Autowired(required=true)
	private SupplierDAO supplierDAO;
	
	@Autowired(required=true)
	private Supplier supplier;
	public String getdata()
	{
		ArrayList<Supplier> list=(ArrayList<Supplier>)supplierDAO.list();
		Gson gson = new Gson();
		String jsonInString = gson.toJson(list);
		return jsonInString;
	}
	
	
	
	
	@RequestMapping(value="/supplier")
	public ModelAndView listsupplier(Model model)
	{
	model.addAttribute("supplier",supplier);
	model.addAttribute("supplierList",getdata());
	ModelAndView mv=new ModelAndView("supplier","Supplier",new Supplier());
	ArrayList<Supplier> list=(ArrayList<Supplier>)supplierDAO.list();
		Gson gson= new Gson();
		mv.addObject("supplierList", gson.toJson(list));
	return mv;
	/*model.addAttribute("supplierList",this.supplierDAO.list());
	return "supplier";*/
	}
	
	
	@RequestMapping(value="/addsupplier")
	public String addcategory(@ModelAttribute("supplier") Supplier supplier,Model model)
	{
		String newid = Util.removeComma(supplier.getId());
		supplier.setId(newid);
	
		supplierDAO.saveOrUpdate(supplier);
	/*model.addAttribute("category", category);
	model.addAttribute("categoryList", this.categoryDAO.list());*/
	return "redirect:/supplier";
    }

	
	
	@RequestMapping("/removesupplier/")
	public String deleteSupplier(@RequestParam("id") String id, ModelMap model)
	
	{
		System.out.println("delete");
		supplierDAO.delete(id);
		model.addAttribute("supplier",supplier);
		model.addAttribute("supplierList",getdata());
		
		return "redirect:/supplier";
	}
	
	
	@RequestMapping("/editsupplier/")
	public String editSupplier(@RequestParam("id")String id, Model model)
	{
		model.addAttribute("supplier",supplier);
		model.addAttribute("supplierList",getdata());
		model.addAttribute("supplier",this.supplierDAO.get(id));
		/*model.addAttribute("category", category);*/
		//model.addAttribute("supplierList", this.supplierDAO.list());
		
		return "supplier";
	}
		
}
