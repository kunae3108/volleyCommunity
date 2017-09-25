package com.volley.config;

import org.hibernate.Session;


public class BaseDao {
	
	public Session getHibernateSession(){
		Session session = HibernateUtil.getSessionFactory().openSession();
	    session.beginTransaction();
	    return session ;
	}
	
	public void commitAndCloseSesstion(Session session){

	    session.getTransaction().commit();
	    session.close();
	    
//	    HibernateUtil.shutdown();
	}
	
	
}
