package com.dao;

import java.util.Iterator;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.entity.User;
import com.utils.HibernateUtil;

public class UserDao {

	private Session session;  
    private Transaction tx;  
    
    public UserDao() {  
        //session = HibernateUtil.getSession();  
    }  
    
    /*  
     * 将User对象插入到数据库中  
     * @param user  
     */  
    public void create(User user) {  
        try {
        	session = HibernateUtil.getSession();
            tx = session.beginTransaction();  
            session.save(user);  
            tx.commit();  
        } catch (HibernateException e) {  
            HibernateUtil.rollback(tx);  
        } finally { 
        }  
        if(session.isOpen())
        session.close();
    }  
    
    public boolean check(User user) {  
    	//session.close();
    	session = HibernateUtil.getSession();  
        String sql = "select u.password from User u where u.username='" +user.getUsername()+ "'";  
        List list = session.createQuery(sql).list();  
        if(!list.isEmpty()) {  
            Iterator it = list.iterator();  
            while(it.hasNext()) {  
                String get = (String) it.next();  
                System.out.println(get);  
                if(get.equals(user.getPassword())) {  
                    return true;  
                }  
            }  
        }if(session.isOpen())
        session.close();
        return false;  
         
    } 
    
    public boolean isExist(String name) {
    	session = HibernateUtil.getSession();
    	boolean isExist=false;
    	String hql = "from User u where u.username='"+name+"'";
		if(true){
			SessionFactory sf = new Configuration().configure().buildSessionFactory();
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			
			Query query=session.createQuery(hql);
			List list=(List) query.list(); 
			
			tx.commit();
			
			Iterator it=list.iterator(); 
		       if(it.hasNext()){
		    	   isExist=true; 

		       }
          
		}
		if(session.isOpen())
		session.close();
		return isExist; 
    } 
    
}
