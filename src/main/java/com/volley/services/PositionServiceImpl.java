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
	public VbPosition insert(VbPosition vbPosition) {
		return vbPositionDao.insert(vbPosition);
	}

	@Override
	public List<VbPosition> getPosition() {
		return vbPositionDao.getPosition();
	}

	@Override
	public Integer delete(Integer positionId) {
		return vbPositionDao.delete(positionId);
	}

}
