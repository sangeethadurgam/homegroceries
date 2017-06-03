package com.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.dao.CartItemDao;
import com.mvc.model.Cart;
import com.mvc.model.CartItem;
@Service
public class CartItemServiceImpl implements CartItemService {

	@Autowired
	private CartItemDao cartItemDao;
	
	public void addCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItemDao.addCartItem(cartItem);
		
	}

	public CartItem getCartItem(int cartItemId) {
		// TODO Auto-generated method stub
		return cartItemDao.getCartItem(cartItemId);
	}

	public void removeCartItem(CartItem cartItem) {
		// TODO Auto-generated method stub
		cartItemDao.removeCartItem(cartItem);
	}

	public void removeAllCartItems(Cart cart) {
		// TODO Auto-generated method stub
		cartItemDao.removeAllCartItems(cart);
	}

}