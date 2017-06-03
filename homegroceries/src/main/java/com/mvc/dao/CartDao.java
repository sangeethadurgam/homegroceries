package com.mvc.dao;

import com.mvc.model.Cart;

public interface CartDao {
  Cart getCart(int cartId);
}