package com.volley.services;

import java.util.List;

import com.volley.model.VbPosition;


public interface PositionService {

	public Integer insert(VbPosition vbPosition) throws Exception;
	
	public List<VbPosition> getPosition() throws Exception;
	
}
