package com.mvc.dao;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.mvc.model.Category;

@Repository
public class CategoryDaoImpl implements CategoryDao 
{
	@Autowired
	private SessionFactory sessionFactory;
	
	public void saveOrUpdateCategory(Category category) 
	{
		Session session=sessionFactory.openSession();
		System.out.println("CATEGORY ID BEFORE INSERTION " + category.getcId());
		session.saveOrUpdate(category);
		System.out.println("CATEGORY ID AFTER INSERTION " + category.getcId());
		session.flush();
		session.close();
	}
	
	public List<Category> getAllCategorys() 
	{
		Session  session=sessionFactory.openSession();
		Query query=session.createQuery("from Category");
		List<Category> categorys=query.list();
		session.close();
		return categorys;
		
	}
	public Category getCategoryById(int cid) 
	{
           Session session=sessionFactory.openSession();
           Category category=(Category)session.get(Category.class, cid);
           session.close();
           return category;
	}
	public void deleteCategory(int cid) 
	{
		Session session=sessionFactory.openSession();
		Category category=(Category)session.get(Category.class, cid); 
		session.delete(category);
		session.flush();
		session.close();
	}
}