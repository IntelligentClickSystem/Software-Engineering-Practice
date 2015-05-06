package com.entity;

/**
 * Detail entity. @author MyEclipse Persistence Tools
 */

public class Detail implements java.io.Serializable {

	// Fields

	private Integer id;
	private Orders orders;
	private Integer IId;
	private String itemName;
	private Integer itemCount;
	private Float price;

	// Constructors

	/** default constructor */
	public Detail() {
	}

	/** minimal constructor */
	public Detail(Integer IId, String itemName, Float price) {
		this.IId = IId;
		this.itemName = itemName;
		this.price = price;
	}

	/** full constructor */
	public Detail(Orders orders, Integer IId, String itemName,
			Integer itemCount, Float price) {
		this.orders = orders;
		this.IId = IId;
		this.itemName = itemName;
		this.itemCount = itemCount;
		this.price = price;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Orders getOrders() {
		return this.orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

	public Integer getIId() {
		return this.IId;
	}

	public void setIId(Integer IId) {
		this.IId = IId;
	}

	public String getItemName() {
		return this.itemName;
	}

	public void setItemName(String itemName) {
		this.itemName = itemName;
	}

	public Integer getItemCount() {
		return this.itemCount;
	}

	public void setItemCount(Integer itemCount) {
		this.itemCount = itemCount;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

}