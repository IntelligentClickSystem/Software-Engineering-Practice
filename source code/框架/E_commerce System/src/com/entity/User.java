package com.entity;
// default package

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * User entity. @author MyEclipse Persistence Tools
 */

public class User implements java.io.Serializable {

	// Fields

	private Integer id;
	private String username;
	private String password;
	private String umail;
	private String uphone;
	private String uaddress;
	private Timestamp addTime;
	private String cardNo;
	private Integer rank;
	private Integer looked;
	private Set orderses = new HashSet(0);

	// Constructors

	/** default constructor */
	public User() {
	}

	/** minimal constructor */
	public User(String username, String password, String umail, String uphone,
			String uaddress, String cardNo, Integer rank) {
		this.username = username;
		this.password = password;
		this.umail = umail;
		this.uphone = uphone;
		this.uaddress = uaddress;
		this.cardNo = cardNo;
		this.rank = rank;
	}

	/** full constructor */
	public User(String username, String password, String umail, String uphone,
			String uaddress, Timestamp addTime, String cardNo, Integer rank,
			Integer looked, Set orderses) {
		this.username = username;
		this.password = password;
		this.umail = umail;
		this.uphone = uphone;
		this.uaddress = uaddress;
		this.addTime = addTime;
		this.cardNo = cardNo;
		this.rank = rank;
		this.looked = looked;
		this.orderses = orderses;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUmail() {
		return this.umail;
	}

	public void setUmail(String umail) {
		this.umail = umail;
	}

	public String getUphone() {
		return this.uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getUaddress() {
		return this.uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public String getCardNo() {
		return this.cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public Integer getRank() {
		return this.rank;
	}

	public void setRank(Integer rank) {
		this.rank = rank;
	}

	public Integer getLooked() {
		return this.looked;
	}

	public void setLooked(Integer looked) {
		this.looked = looked;
	}

	public Set getOrderses() {
		return this.orderses;
	}

	public void setOrderses(Set orderses) {
		this.orderses = orderses;
	}

}