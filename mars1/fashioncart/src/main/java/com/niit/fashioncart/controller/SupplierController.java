package com.niit.fashioncart.controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.fashioncart.dao.SupplierDAO;
import com.niit.fashioncart.model.Supplier;
import com.niit.fashioncart.util.Util;

@Controller
public class SupplierController {
	
	@Autowired(required=true)
	private SupplierDAO supplierDAO;
	
	@Autowired(required=true)
	private Supplier supplier;
	
	
	@RequestMapping(value="/supplier")
	public String listsupplier(Model model)
	{
	model.addAttribute("supplier",supplier);
	model.addAttribute("supplierList",this.supplierDAO.list());
	return "supplier";
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

	
	
	@RequestMapping("/removesupplier/{id}")
	public String deleteSupplier(@PathVariable("id") String id, ModelMap model)
	
	{
		System.out.println("delete");
		supplierDAO.delete(id);
		return "redirect:/supplier";
	}
	
	
	@RequestMapping("/editsupplier/{id}")
	public String editSupplier(@PathVariable("id")String id, Model model)
	{
		model.addAttribute("supplier",this.supplierDAO.get(id));
		/*model.addAttribute("category", category);*/
		model.addAttribute("supplierList", this.supplierDAO.list());
		
		return "supplier";
	}
		
}
