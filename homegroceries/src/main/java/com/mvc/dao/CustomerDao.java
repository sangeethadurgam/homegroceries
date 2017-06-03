package com.mvc.dao;

import java.util.List;

import com.mvc.model.Customer;

public interface CustomerDao {
void saveCustomer(Customer customer);
List<Customer> getCustomers();//duplicate username and email

public Customer getCustomerByUsername(String username) ;

}