package com.volley.services;

import java.util.List;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.volley.config.HibernateUtil;
import com.volley.daos.PositionDao;
import com.volley.model.VbPosition;

@Service(value = "positionService")
public class PositionServiceImpl implements PositionService {

	@Autowired
	PositionDao vbPositionDao;
	
	@Override
	public Integer insert(VbPosition vbPosition) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VbPosition> getPosition() throws Exception {

//		Session session = HibernateUtil.getSessionFactory().openSession();
//		session.beginTransaction();
//
//		// Check database version
//		String sql = "select version()";
//
//		String result = (String) session.createNativeQuery(sql).getSingleResult();
//		System.out.println(result);
//
//		session.getTransaction().commit();
//		session.close();
//
//		HibernateUtil.shutdown();

		return vbPositionDao.getPosition();
	}

}
