package com.webaid.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	@RequestMapping(value="/test", method=RequestMethod.GET)
	public String test(){
		logger.info("test");
		return "test";
	}
	
	@RequestMapping(value="/test2", method=RequestMethod.GET)
	public String test2(){
		logger.info("test2");
		return "test2";
	}
	
}
