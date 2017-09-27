package com.volley.daos;

import java.util.List;

import com.volley.model.VbPosition;


public interface PositionDao {

	public VbPosition insert(VbPosition vbPosition) ;
	public List<VbPosition> getPosition() ;
	public Integer delete(Integer positionId);
	
}
