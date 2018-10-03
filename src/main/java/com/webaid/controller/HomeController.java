package com.webaid.controller;

import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("index");
		
		return "main/index";
	}
	
	@RequestMapping(value = "/menu01_1", method = RequestMethod.GET)
	public String menu01_01() {
		logger.info("menu01_01");
		
		return "menu01/intro";
	}
	
	@RequestMapping(value = "/menu01_2", method = RequestMethod.GET)
	public String menu01_02() {
		logger.info("menu01_02");
		
		return "menu01/intro2";
	}
	
	@RequestMapping(value = "/menu01_3", method = RequestMethod.GET)
	public String menu01_03(){
		logger.info("menu01_03");
		
		return "menu01/location";
	}
	
	@RequestMapping(value = "/menu02_1", method = RequestMethod.GET)
	public String menu02_01() {
		logger.info("menu02_01");
		
		return "menu02/menu02_01";
	}
	
	@RequestMapping(value = "/menu02_2", method = RequestMethod.GET)
	public String menu02_02() {
		logger.info("menu02_02");
		
		return "menu02/menu02_02";
	}
	
	@RequestMapping(value = "/menu02_3", method = RequestMethod.GET)
	public String menu02_03(){
		logger.info("menu02_03");
		
		return "menu02/menu02_03";
	}
	
	@RequestMapping(value = "/menu03_1", method = RequestMethod.GET)
	public String menu03_01() {
		logger.info("menu03_01");
		
		return "menu03/menu03_01";
	}
	
	@RequestMapping(value = "/menu03_2", method = RequestMethod.GET)
	public String menu03_02() {
		logger.info("menu03_02");
		
		return "menu03/menu03_02";
	}
	
	@RequestMapping(value = "/menu03_3", method = RequestMethod.GET)
	public String menu03_03(){
		logger.info("menu03_03");
		
		return "menu03/menu03_03";
	}
	
	@RequestMapping(value = "/menu04_1", method = RequestMethod.GET)
	public String menu04_01() {
		logger.info("menu04_01");
		
		return "menu04/menu04_01";
	}
	
	@RequestMapping(value = "/menu04_2", method = RequestMethod.GET)
	public String menu04_02() {
		logger.info("menu04_02");
		
		return "menu04/menu04_02";
	}
	
	@RequestMapping(value = "/menu04_3", method = RequestMethod.GET)
	public String menu04_03(){
		logger.info("menu04_03");
		
		return "menu04/menu04_03";
	}
	
	
	@RequestMapping(value = "/menu05_1", method = RequestMethod.GET)
	public String menu05_01() {
		logger.info("menu05_01");
		
		return "menu05/freqQnA1";
	}
	
	@RequestMapping(value = "/menu05_2", method = RequestMethod.GET)
	public String menu05_02() {
		logger.info("menu05_02");
		
		return "menu05/freqQnA2";
	}
}
