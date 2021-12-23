package com.Keep.Entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
	@Id
	private int id;
	private String email;
	 private String password;
	
	 // Constructors
	 
	 
	 public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	 	
	// Getters And Setters

	public User(String email, String password) {
		super();
		this.email = email;
		this.password = password;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}
	 

	
}
