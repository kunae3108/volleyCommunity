package com.volley.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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

		return vbPositionDao.getPosition();
	}

}
