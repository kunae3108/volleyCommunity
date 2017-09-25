package com.volley.daos;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.volley.config.BaseDao;
import com.volley.model.VbPosition;
import com.volley.utilities.ProjectConstant;

@Repository(value = "positionDao")
public class PositionDaoImpl extends BaseDao implements PositionDao{

	
	@Override
	public Integer insert(VbPosition vbPosition){
		Session session = getHibernateSession();
		vbPosition.setCreateBy(ProjectConstant.SYSTEM);
		vbPosition.setUpdateBy(ProjectConstant.SYSTEM);
		vbPosition.setCreateDate(ProjectConstant.currentTime);
		vbPosition.setUpdateDtt(ProjectConstant.currentTime);
		
		session.save(vbPosition);
		commitAndCloseSesstion(session);
		return 1;
	}

	@Override
	public List<VbPosition> getPosition() {
		Session session = getHibernateSession();
		TypedQuery query = session.createNativeQuery("select * from VB_POSITION",VbPosition.class);
		List<VbPosition> vbPositions = query.getResultList();
		System.out.println("size: "+vbPositions.size());
		commitAndCloseSesstion(session);
		return vbPositions;
	}

}
