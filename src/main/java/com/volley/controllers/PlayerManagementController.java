package com.volley.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlayerManagementController {

	@RequestMapping(value = "/players",method = RequestMethod.GET)
	public ModelAndView showPlayers(){
		ModelAndView mView = new ModelAndView("players"); 
		return mView;
	}
	
	
	
	
	
	
	
}
    