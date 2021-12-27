package com.Keep.Entities;

import java.sql.Timestamp;
import java.util.Random;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;


import org.hibernate.annotations.CreationTimestamp;
@Entity
public class Notes {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	private String noteTitle;
	private String noteMessage;
	
	private int userid;
	@CreationTimestamp
	private Timestamp date;
	
	
	public Notes() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Notes(String noteTitle, String noteMessage, int userid) {
		super();
		this.id = new Random().nextInt(1000000);
		this.noteTitle = noteTitle;
		this.noteMessage = noteMessage;
		this.userid = userid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNoteTitle() {
		return noteTitle;
	}

	public void setNoteTitle(String noteTitle) {
		this.noteTitle = noteTitle;
	}

	public String getNoteMessage() {
		return noteMessage;
	}

	public void setNoteMessage(String noteMessage) {
		this.noteMessage = noteMessage;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}
	
	
	
}
