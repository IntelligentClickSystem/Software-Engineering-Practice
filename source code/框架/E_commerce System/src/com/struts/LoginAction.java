package com.struts;



import com.dao.UserDao;
import com.entity.User;
import com.opensymphony.xwork2.Action;

public class LoginAction implements Action{

	UserDao ud = new UserDao();
	User user = new User();
	private int id;
	private String name;
	private String pwd;
	
	public String getUsername() {
		return name;
	}

	public String getUserpwd() {
		return pwd;
	}
	
	public int getId() {
		return id;
	}	
	
	public void setUsername(String name) {
		this.name=name;
	}

	public void  setUserpwd(String pwd) {
		this.pwd=pwd;
	}
	
	public void  setId(int id) {
		this.id=id;
	}
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		UserDao userDao = new UserDao();  
        User user = new User();  
        user.setUsername(name);  
        user.setPassword(pwd); 
        
        boolean bool=userDao.check(user);
        System.out.println(bool);
        
        if(bool){
        	return SUCCESS;
        }else{
        	return ERROR;
        }
	}

}
