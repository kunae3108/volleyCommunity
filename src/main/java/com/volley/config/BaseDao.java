package com.volley.config;

import org.hibernate.Session;


public class BaseDao {
	
	public Session getHibernateSession(){
		Session session = HibernateUtil.getSessionFactory().openSession();
	    session.beginTransaction();
//
//	    // Check database version
//	    String sql = "select version()";
//
//	    String result = (String) session.createNativeQuery(sql).getSingleResult();
//	    System.out.println(result);

	    
	    return session ;
	}
	
	public void closeHibernateSession(Session session){

	    session.getTransaction().commit();
	    session.close();
	    
	    HibernateUtil.shutdown();
	}
	
	
}
