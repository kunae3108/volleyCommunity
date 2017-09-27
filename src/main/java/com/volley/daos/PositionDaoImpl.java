package com.volley.daos;

import java.sql.Timestamp;
import java.util.Date;
import java.util.List;

import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.apache.log4j.Logger;
import org.hibernate.Session;
import org.springframework.stereotype.Repository;

import com.volley.config.BaseDao;
import com.volley.controllers.PositionManagementController;
import com.volley.model.VbPosition;
import com.volley.utilities.ProjectConstant;

@Repository(value = "positionDao")
public class PositionDaoImpl extends BaseDao implements PositionDao{

	final static Logger logger = Logger.getLogger(PositionDaoImpl.class);
	
	@Override
	public VbPosition insert(VbPosition vbPosition){
		Session session = getHibernateSession();
		vbPosition.setCreateBy(ProjectConstant.SYSTEM);
		vbPosition.setUpdateBy(ProjectConstant.SYSTEM);
		vbPosition.setCreateDate(ProjectConstant.currentTime);
		vbPosition.setUpdateDttm(ProjectConstant.currentTime);
		
		session.save(vbPosition);
		logger.info("Insert success : "+vbPosition.getPositionId());
		commitAndCloseSesstion(session);
		return vbPosition;
	}

	@Override
	public List<VbPosition> getPosition() {
		Session session = getHibernateSession();
		TypedQuery query = session.createNativeQuery("select * from VB_POSITION",VbPosition.class);
		List<VbPosition> vbPositions = query.getResultList();
		logger.info("size: "+vbPositions.size());
		commitAndCloseSesstion(session);
		return vbPositions;
	}

	@Override
	public Integer delete(Integer positionId) {
		try{
			Session session = getHibernateSession();
			TypedQuery query = session.createQuery("FROM VB_POSITION where POSITION_ID = :positionId ",VbPosition.class);
			query.setParameter("positionId", positionId);
			List<VbPosition> vbList = query.getResultList();
			if(vbList.size() != 1){
				logger.error("No object to delete found. id# "+positionId);
				return 0;
			}else{
				VbPosition delObj = vbList.get(0);
				session.delete(delObj);
				logger.error("Delete success.");
				commitAndCloseSesstion(session);
				return 1;
			}
		
		}catch(Exception e){
			logger.error(e.getMessage());
			return 0;
		}
	}

}
