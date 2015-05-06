package com.struts;

import com.dao.UserDao;
import com.entity.User;
import com.opensymphony.xwork2.Action;

public class RegisterAction implements Action{

	User user = new User();
	
	UserDao ud = new UserDao();
	
	private String name;
	private String pwd;
	private String mail;
	private String phone;
	private String address;
	private String cardNo;
	private int rank = 0;
	
	public String getUsername() {
		return name;
	}

	public String getUserpwd() {
		return pwd;
	}
	
	public String getMail() {
		return mail;
	}

	public String getPhone() {
		return phone;
	}
	
	public String getAddress() {
		return address;
	}

	public String getCardNo() {
		return cardNo;
	}
	
	public void setUsername(String name) {
		this.name=name;
	}

	public void  setUserpwd(String pwd) {
		this.pwd=pwd;
	}
	
	public void setMail(String mail) {
		this.mail=mail;
	}

	public void  setPhone(String phone) {
		this.phone=phone;
	}
	
	public void setAddress(String address) {
		this.address=address;
	}

	public void setCardNo(String cardNo) {
		this.cardNo=cardNo;
	}
	
	
	
	

	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		System.out.println(name);
		System.out.println(pwd);
		System.out.println(mail);
		System.out.println(phone);
		System.out.println(address);
		System.out.println(cardNo);
		
        System.out.println(ud.isExist(name));
		
		if(!ud.isExist(name)){
			user.setUsername(name);
			user.setPassword(pwd);
			user.setUmail(mail);
			user.setUphone(phone);
			user.setUaddress(address);
			user.setCardNo(cardNo);
			user.setRank(rank);
			ud.create(user);
			
			
			System.out.println("OK!");
			
		    return SUCCESS;
		}else{
		    return ERROR;
		}
	}
}

