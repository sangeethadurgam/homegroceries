package com.mvc.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class BillingAddress implements Serializable {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
private int id;
	@NotEmpty
private String apartmentnumber;
	@NotEmpty
private String streetName;
	@NotEmpty
private String city;
	@NotEmpty
private String country;
	@NotEmpty
private String zipcode;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getApartmentnumber() {
	return apartmentnumber;
}
public void setApartmentnumber(String apartmentnumber) {
	this.apartmentnumber = apartmentnumber;
}

public String getStreetName() {
	return streetName;
}
public void setStreetName(String streetName) {
	this.streetName = streetName;
}
public String getCity() {
	return city;
}
public void setCity(String city) {
	this.city = city;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}
public String getZipcode() {
	return zipcode;
}
public void setZipcode(String zipcode) {
	this.zipcode = zipcode;
}

}