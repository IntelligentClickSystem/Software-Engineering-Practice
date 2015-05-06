package com.entity;

import java.sql.Timestamp;

/**
 * Item entity. @author MyEclipse Persistence Tools
 */

public class Item implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private Float price;
	private String filepath;
	private String filename;
	private Timestamp addTime;

	// Constructors

	/** default constructor */
	public Item() {
	}

	/** minimal constructor */
	public Item(String title, String content, Float price) {
		this.title = title;
		this.content = content;
		this.price = price;
	}

	/** full constructor */
	public Item(String title, String content, Float price, String filepath,
			String filename, Timestamp addTime) {
		this.title = title;
		this.content = content;
		this.price = price;
		this.filepath = filepath;
		this.filename = filename;
		this.addTime = addTime;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getFilepath() {
		return this.filepath;
	}

	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}

	public String getFilename() {
		return this.filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

}