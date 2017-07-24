package com.volley.controllers.position;

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


@Controller
public class PositionManagementController {
	
	@Autowired
	
	
	final static Logger logger = Logger.getLogger(PositionManagementController.class);
	
	@RequestMapping(value = "positions",method = RequestMethod.GET)
	public ModelAndView initPositionManagement(){
		ModelAndView mv = new ModelAndView("position/positions");
		
		
		return mv;
	}
	
	
	@RequestMapping(value = "position/addVbPosition",method = RequestMethod.POST ,produces = "application/json" )
	public @ResponseBody AjaxResponseObj addVolleyPosition(@RequestBody VbPosition vbPosition){
		AjaxResponseObj result = new AjaxResponseObj();
		result.setCode("200");
		result.setResult("Success ja");
		result.setMsg("success message");
		
		logger.debug(vbPosition.toString());
		
		return result;
	}
	
	
}
