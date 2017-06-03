package com.mvc.dao;

import com.mvc.model.Cart;
import com.mvc.model.CartItem;

public interface CartItemDao {
 void addCartItem(CartItem cartItem);
 CartItem getCartItem(int cartItem);
 void removeCartItem(CartItem cartItem);
 void removeAllCartItems(Cart cart);
}