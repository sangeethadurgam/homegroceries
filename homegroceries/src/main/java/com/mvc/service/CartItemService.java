package com.mvc.service;

import com.mvc.model.Cart;
import com.mvc.model.CartItem;
import com.mvc.model.Customer;

public interface CartItemService {
  void addCartItem(CartItem cartItem);
  CartItem getCartItem(int cartItemId);
  void removeCartItem(CartItem cartItem);
  void removeAllCartItems(Cart cart);
}