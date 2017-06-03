package com.mvc.dao;

import java.util.List;
import com.mvc.model.Category;

public interface CategoryDao 
{
	void saveOrUpdateCategory(Category category);

	List<Category> getAllCategorys();

	Category getCategoryById(int cid);

	void deleteCategory(int cid);
}