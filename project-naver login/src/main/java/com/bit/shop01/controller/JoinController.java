package com.bit.shop01.controller;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class JoinController {
	Logger log = Logger.getLogger(this.getClass());


	
//  ȸ������ �������� �̵�
	@RequestMapping(value = "/join/", method = RequestMethod.GET)
	public String gojoin() {
		
		
		return "/info/join";
		
	}
	
	
//  ȸ������ �Ϸ�
	@RequestMapping(value = "/join/", method = RequestMethod.POST)
	public String welcome() {
		
		
		return "/info/welcome";
		
	}
	
	



}
	
	

	
	
	
	