package com.entities;

import java.util.Date;
import java.util.Random;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="notes")
public class Note {
    @Id
	private int id;
    
	private String name;
	@Column(length=1500)
	private String content;
	
	private Date addedDate;

	public Note(String name, String content, Date addedDate) {
		super();
		this.id = new Random().nextInt(1000);
		this.name = name;
		this.content = content;
		this.addedDate = addedDate;
	}

	public Note() {
		super();
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}
	
	
	
}
