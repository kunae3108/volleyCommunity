package com.volley.services;

import java.util.List;

import com.volley.model.VbPosition;


public interface PositionService {

	public VbPosition insert(VbPosition vbPosition) ;
	
	public List<VbPosition> getPosition() ;

	public Integer delete(Integer positionId);
	
}
