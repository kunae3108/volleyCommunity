package com.volley.daos;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.volley.config.BaseDao;
import com.volley.model.VbPosition;

@Repository(value = "positionDao")
public class PositionDaoImpl extends BaseDao implements PositionDao{

	@Override
	public Integer insert() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<VbPosition> getPosition() throws Exception {
		Session session = getHibernateSession();
		Query query = session.createNativeQuery("select * from vb_position");
				
//				.createNativeQuery("select * from vb_position").getResultList();
		List<VbPosition> vbPositions = query.getResultList();
		System.out.println("size: "+vbPositions.size());
		return vbPositions;
	}
	

}
