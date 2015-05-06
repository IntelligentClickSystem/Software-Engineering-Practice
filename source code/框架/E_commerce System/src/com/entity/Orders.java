package com.entity;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Orders entity. @author MyEclipse Persistence Tools
 */

public class Orders implements java.io.Serializable {

	// Fields

	private Integer ono;
	private User user;
	private String trueName;
	private String uaddress;
	private String umail;
	private String uphone;
	private String cardNo;
	private Integer hasApproved;
	private Timestamp addTime;
	private Set details = new HashSet(0);

	// Constructors

	/** default constructor */
	public Orders() {
	}

	/** minimal constructor */
	public Orders(Integer ono, String trueName, String uaddress, String umail,
			String uphone, String cardNo) {
		this.ono = ono;
		this.trueName = trueName;
		this.uaddress = uaddress;
		this.umail = umail;
		this.uphone = uphone;
		this.cardNo = cardNo;
	}

	/** full constructor */
	public Orders(Integer ono, User user, String trueName, String uaddress,
			String umail, String uphone, String cardNo, Integer hasApproved,
			Timestamp addTime, Set details) {
		this.ono = ono;
		this.user = user;
		this.trueName = trueName;
		this.uaddress = uaddress;
		this.umail = umail;
		this.uphone = uphone;
		this.cardNo = cardNo;
		this.hasApproved = hasApproved;
		this.addTime = addTime;
		this.details = details;
	}

	// Property accessors

	public Integer getOno() {
		return this.ono;
	}

	public void setOno(Integer ono) {
		this.ono = ono;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public String getTrueName() {
		return this.trueName;
	}

	public void setTrueName(String trueName) {
		this.trueName = trueName;
	}

	public String getUaddress() {
		return this.uaddress;
	}

	public void setUaddress(String uaddress) {
		this.uaddress = uaddress;
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

	public String getCardNo() {
		return this.cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public Integer getHasApproved() {
		return this.hasApproved;
	}

	public void setHasApproved(Integer hasApproved) {
		this.hasApproved = hasApproved;
	}

	public Timestamp getAddTime() {
		return this.addTime;
	}

	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}

	public Set getDetails() {
		return this.details;
	}

	public void setDetails(Set details) {
		this.details = details;
	}

}