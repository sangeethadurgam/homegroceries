package com.mvc.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvc.model.Category;
import com.mvc.service.CategoryService;

@Controller
public class CategoryController 
{
	@Autowired
	private CategoryService categoryService;
	
	@RequestMapping("/admin/category/categoryform")
	public String CategoryPage( @ModelAttribute("category") Category category,BindingResult bindingResult ,Model model) 
	{
	//  model.addAttribute("category", new Category());
		model.addAttribute("categoryList", categoryService.getAllCategorys());	
		return "categoryform";
		
	}
/*	=======================saving category Object=====================================*/
	@RequestMapping(value="admin/category/savecategory",method=RequestMethod.POST)
	
	public String saveOrUpdateCategory(@ModelAttribute("category") Category category,BindingResult bindingResult ,Model model) 
	{
		categoryService.saveOrUpdateCategory(category);
		return "redirect:/admin/category/categoryform";
	}
	
/*	=======================Listing category Object=====================================*/
	
	/*@RequestMapping("/admin/category/categorylist")
	public String getAllCategorys(Model model)
	{
		List<Category> categorys=categoryService.getAllCategorys();
		for(Category c:categorys)
		{
			System.out.println(c.getcId());
			System.out.println(c.getCategoryName());
		}
		model.addAttribute("categoryList",categorys);
		return "categoryform";
		}
	*/
/*	=======================Listing Individual product Object=====================================*/
	@RequestMapping("/all/category/viewcategory/{cid}")
	public String viewCategory(@PathVariable int cid,Model model)
	{
		Category category=categoryService.getCategoryById(cid);
		model.addAttribute("category",category);
		return "categorydetails";
	} 
	
	
/* ================================Edit Individual product object======================================= */
	
	@RequestMapping("/admin/category/editcategory/{cid}")
	public String editProduct(@PathVariable int cid, Model model)
	{	
		System.out.println("edit");
		Category category=categoryService.getCategoryById(cid);
		model.addAttribute("category", category);
		List<Category> categoryList=categoryService.getAllCategorys();
		model.addAttribute("categoryList", categoryList);
		return "categoryform";
	}
	
/*	=======================Deleting Individual product Object=====================================*/
	@RequestMapping("/admin/category/deletecategory/{cid}")
	public String deleteCategory(@PathVariable int cid,Model model)
	{
		categoryService.deleteCategory(cid);
		model.addAttribute("categoryList", categoryService.getAllCategorys());
		
		return "redirect:/admin/category/categoryform";
	}
}