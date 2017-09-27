package com.volley.controllers;

import java.sql.SQLException;
import java.util.List;

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

	@RequestMapping(value = "/position", method = RequestMethod.GET)
	public ModelAndView initPositionManagement() throws Exception {

		ModelAndView mv = new ModelAndView("position/positions");
		List<VbPosition> positions = positionService.getPosition();
		mv.addObject("positions", positions);

		return mv;
	}

	@RequestMapping(value = "/position/add", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody AjaxResponseObj addVolleyPosition(@RequestBody VbPosition vbPosition)  {
		AjaxResponseObj result = new AjaxResponseObj();
		logger.info("prepare to insert : " + vbPosition.toString());
		try {
			VbPosition resultInsert = positionService.insert(vbPosition);
			result.setCode("200");
			result.setResult(resultInsert);
			result.setMsg("insert success");
			logger.info("insert success : " + resultInsert.toString());
		} catch (Exception e) {
			result.setCode("500");
			result.setResult(e.getMessage());
			result.setMsg(e.getMessage());
		}

		return result;
	}

	@RequestMapping(value = "/position/delete", method = RequestMethod.POST, produces = "application/json")
	public @ResponseBody AjaxResponseObj delVolleyPosition(@RequestBody Integer positionId)  {
		AjaxResponseObj result = new AjaxResponseObj();
		logger.info("prepare to delete id : " + positionId);
		try {
			Integer resultInsert = positionService.delete(positionId);
			result.setCode("200");
			result.setResult(resultInsert==1?"success delete.":"fail delete.");
			result.setMsg(resultInsert==1?"success delete.":"fail delete.");
			logger.info("insert success : " + resultInsert.toString());
		} catch (Exception e) {
			result.setCode("500");
			result.setResult(e.getMessage());
			result.setMsg(e.getMessage());
		}

		return result;
	}
}
