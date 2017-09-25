package com.volley.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.volley.model.VbPosition;
import com.volley.services.PositionService;

@Controller
public class HomeController {
	
	
	@Autowired
	PositionService positionService;
	
	@RequestMapping("/")
	public ModelAndView index() throws Exception{
		
		
		
		ModelAndView mv = new ModelAndView("index");
		
		
		
		
		return mv;
	}
}
