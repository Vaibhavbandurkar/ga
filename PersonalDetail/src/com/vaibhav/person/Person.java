package com.vaibhav.person;


import javax.validation.constraints.Max;    
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;

import java.sql.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


@Entity
public class Person {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
/*	@NotEmpty(message="FirstName can't be empty")*/
/*	@Size(min=2, max=30)*/
	private String firstName;
	/*@NotEmpty(message="LastName can't be empty")
	@Size(min=2, max=30)*/
	private String lastName;
	/*@NotEmpty(message="Email can't be empty")
	@Email(message="Enter valid Email")*/
	private String email;

	/*@DateTimeFormat(pattern="dd-mm-yyyy")
	private Date birthDate;*/
	/*@NotEmpty(message="Company Name can't be empty")*/
	private String companyName;
	/*@NotEmpty(message="Address can't be empty")*/
	private String address;
	/*@NotEmpty(message="City can't be empty")*/
	private String city;
	/*@NotEmpty(message="Email can't be empty")*/
	private String gender;
	/*@NotEmpty(message="Contact Number can't be empty")
	@Max(value=10, message="Contact Number can't be greater than 10")*/
	private Long contactNumber;
	
	
	
	protected Person() {
		
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	/*public Date getBirthDate() {
		return birthDate;
	}
	public void setBirthDate(Date birthDate) {
		this.birthDate = birthDate;
	}*/
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Long getContactNumber() {
		return contactNumber;
	}
	public void setContactNumber(Long contactNumber) {
		this.contactNumber = contactNumber;
	}
	
	

}
