package com.mvc.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.model.Authorities;
import com.mvc.model.Cart;
import com.mvc.model.Customer;
import com.mvc.model.Users;
@Repository
public class CustomerDaoImpl implements CustomerDao {
	@Autowired
private SessionFactory sessionFactory;
	
	
	public void saveCustomer(Customer customer) {
		Users users=customer.getUsers();
		users.setEnabled(true);
		//0,john,123,true
		Authorities authorities=new Authorities();
		authorities.setUsername(users.getUsername());
		authorities.setRole("ROLE_USER");
		
		Session session=sessionFactory.openSession();
		Transaction transaction=session.beginTransaction();
		session.save(authorities);//Authorities table //insert into authorities values (1,'john','ROLE_USER')
		
		Cart cart=new Cart();
		cart.setCustomer(customer); // update the value of customer_id column in the cart table.
		customer.setCart(cart);//update the cart_id in customer table
		session.save(customer); // Users,Customer,BillingAddress,ShippingAddress,Cart
		session.flush();
		transaction.commit();
		session.close();
		
		
	}


	public List<Customer> getCustomers() {
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Customer");
		List<Customer> customers=query.list();
		session.close();
		return customers;
	}
	public Customer getCustomerByUsername(String username) {
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Users where username=?");
		query.setString(0, username);
		Users users = (Users)query.uniqueResult();
		Customer customer = users.getCustomer();
		session.close();
		return customer;
	}
}