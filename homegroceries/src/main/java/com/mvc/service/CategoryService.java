package com.mvc.service;

import java.util.List;
import com.mvc.model.Category;

public interface CategoryService 
{
	void saveOrUpdateCategory(Category category);

	List<Category> getAllCategorys();

	Category getCategoryById(int cid);

	void deleteCategory(int cid);
}