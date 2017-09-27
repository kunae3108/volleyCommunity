package com.volley.config;

import org.hibernate.Session;

import com.volley.model.BaseModel;


public class BaseDao {
	
	public Session getHibernateSession(){
		Session session = HibernateUtil.getSessionFactory().openSession();
	    session.beginTransaction();
	    return session ;
	}
	
	public void commitAndCloseSesstion(Session session){
	    session.getTransaction().commit();
	    session.close();
	}
	
}
