package com.mvc.service;

import java.util.List;

import com.mvc.model.Customer;

public interface CustomerService {
void saveCustomer(Customer customer);
List<Customer> getCustomers();
Customer getCustomerByUsername(String username);
}