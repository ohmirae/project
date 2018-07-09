package com.bit.shop01.controller;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class LoginController {
	Logger log = Logger.getLogger(this.getClass());

	
	@RequestMapping(value = "/login/", method = RequestMethod.GET)
	public String login() {
		
		
		return "/info/login";
		
	}
	
	

	
}
	
	

	
	
	
	