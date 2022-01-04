package com.Keep.Entities;

import java.util.Random;

import javax.persistence.Entity;

import javax.persistence.Id;

@Entity
public class Contact {
	@Id
	
	private int id;
	private String name;
	private String email;
	private String message;
	public Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(String name, String email, String message) {
		super();
		this.id = new Random().nextInt(10000);
		this.name = name;
		this.email = email;
		this.message = message;
		
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
}
	
