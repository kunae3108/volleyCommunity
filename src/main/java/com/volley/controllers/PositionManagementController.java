package com.volley.controllers;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.volley.model.AjaxResponseObj;
import com.volley.model.VbPosition;
import com.volley.services.PositionService;

@Controller
public class PositionManagementController {
	
	final static Logger logger = Logger.getLogger(PositionManagementController.class);
	
	@Autowired
	PositionService positionService;
	
	@RequestMapping(value = "/positions",method = RequestMethod.GET)
	public ModelAndView initPositionManagement() throws Exception{
		positionService.getPosition();
		
		
		ModelAndView mv = new ModelAndView("position/positions");
		
		
		return mv;
	}
	
	
	@RequestMapping(value = "/position/addVbPosition",method = RequestMethod.POST ,produces = "application/json" )
	public @ResponseBody AjaxResponseObj addVolleyPosition(@RequestBody VbPosition vbPosition){
		AjaxResponseObj result = new AjaxResponseObj();
		result.setCode("200");
		result.setResult("Success ja");
		result.setMsg("success message");
		
		logger.debug(vbPosition.toString());
		
		return result;
	}
	
	
}
