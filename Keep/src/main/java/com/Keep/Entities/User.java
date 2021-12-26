package com.Keep.Entities;

import java.sql.Timestamp;

import java.util.Random;

//import java.util.Random;

import javax.persistence.Entity;

import javax.persistence.Id;

import org.hibernate.annotations.CreationTimestamp;



@Entity
public class User {
	@Id
	private int id;
	private String email;
	private String password;
	private String name;
	@CreationTimestamp
	private Timestamp date;
	 // Constructors
	 
	 
	 public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	 public User(String email, String password) {
			super();
			this.id = new Random().nextInt(10000);
			this.email = email;
			this.password = password;
		}
	 

	 
	public User(String email, String password, String name) {
		super();
		this.id = new Random().nextInt(10000);
		this.email = email;
		this.password = password;
		this.name = name;
	}
	public User(String email, String password, String name, Timestamp date) {
		super();
		this.id = new Random().nextInt(10000);
		this.email = email;
		this.password = password;
		this.name = name;
		this.date = date;
	}
	// Getters And Setters

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
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
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
