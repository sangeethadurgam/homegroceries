package com.mvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

import com.mvc.model.Cart;
import com.mvc.model.Customer;

import com.mvc.service.CartService;
import com.mvc.service.CustomerService;

@Controller
public class CartController {
	@Autowired
	private CustomerService customerService;
	@Autowired
	private CartService cartService;

	
  @RequestMapping("/cart/getCartId")
  public String getCartId(Model model){
	  System.out.println("hello---------------");
	  User user = (User)SecurityContextHolder.getContext().getAuthentication().getPrincipal();
	  String username = user.getUsername();
	  Customer customer = customerService.getCustomerByUsername(username);
	  Cart cart = customer.getCart();
	  System.out.println("hello---------------"+cart);
	  int cartId = cart.getId();
	  System.out.println("hello---------------"+cartId);
	  model.addAttribute("cartId",cartId);
	  return "cart";
  }
  @RequestMapping("/cart/getCart/{cartId}")
  public @ResponseBody Cart getCart(@PathVariable int cartId){
	  Cart cart = cartService.getCart(cartId);
	  System.out.println("i am in response "+cart.getId());
	  return cart;
  }
 
}