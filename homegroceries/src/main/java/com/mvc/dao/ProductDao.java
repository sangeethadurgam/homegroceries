package com.mvc.dao;

import java.util.List;
import com.mvc.model.Product;

public interface ProductDao 
{
	void saveOrUpdateProduct(Product product);

	List<Product> getAllProducts();

	Product getProductById(int id);

	void deleteProduct(int id);
}