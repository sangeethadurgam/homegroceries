package com.mvc.dao;



import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.model.Cart;
import com.mvc.model.CartItem;
import com.mvc.model.CustomerOrder;



@Repository
public class CustomerOrderDaoImpl {

	@Autowired
	private SessionFactory sessionFactory;
	
	public void addCustomerOrder(Cart cart){
		CustomerOrder customerOrder = new CustomerOrder();
		customerOrder.setCart(cart);
		customerOrder.setCustomer(cart.getCustomer());
		customerOrder.setBillingAddress(cart.getCustomer().getBillingAddress());
		customerOrder.setShippingAddress(cart.getCustomer().getShippingAddress());
		//insert the data customerorder
		Session session = sessionFactory.openSession();
		session.save(customerOrder);
		//to update grandtotal in cart table
		List<CartItem> cartItems = cart.getCartItems();
		double grandTotal = 0.0;
		for(CartItem cartItem:cartItems){
			grandTotal = grandTotal + cartItem.getTotalPrice();
		}
		cart.setGrandTotal(grandTotal);
		//updating the cart with grandtotal
		session.update(cart);
		session.flush();
		session.close();
	}
}
