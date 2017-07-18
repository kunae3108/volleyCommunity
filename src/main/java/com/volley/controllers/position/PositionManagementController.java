package com.volley.controllers.position;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PositionManagementController {
	
	@RequestMapping(value = "positions",method = RequestMethod.GET)
	public ModelAndView initPositionManagement(){
		ModelAndView mv = new ModelAndView("positions");
		
		
		return mv;
	}
	
	
	
}
