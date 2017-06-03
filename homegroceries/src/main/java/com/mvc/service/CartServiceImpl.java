package com.mvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.dao.CartDao;
import com.mvc.dao.CartItemDao;
import com.mvc.model.Cart;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
	private CartDao cartDao;

	public Cart getCart(int cartId) {
		return cartDao.getCart(cartId);
	}
    
}