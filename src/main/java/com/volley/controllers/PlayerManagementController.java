package com.volley.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlayerManagementController {

	@RequestMapping(value = "/players",method = RequestMethod.GET)
	public ModelAndView showPlayers(){
		ModelAndView mView = new ModelAndView("player/players"); 
		mView.addObject("playerList", null);
		return mView;
	}

	@RequestMapping(value = "/addPlayer",method = RequestMethod.GET)
	public ModelAndView initAddPlayer(){
		ModelAndView mView = new ModelAndView("player/players");
		mView.addObject("playerList", null); 
		return mView;
	}
	
	
	
	
	
}
    