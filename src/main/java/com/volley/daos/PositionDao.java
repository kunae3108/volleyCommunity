package com.volley.daos;

import java.util.List;

import com.volley.model.VbPosition;


public interface PositionDao {

	public Integer insert() throws Exception;
	public List<VbPosition> getPosition() throws Exception;
	
}
