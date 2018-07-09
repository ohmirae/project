package com.bit.shop01.controller;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class JoinController {
	Logger log = Logger.getLogger(this.getClass());


	
//  회원가입 페이지로 이동
	@RequestMapping(value = "/join/", method = RequestMethod.GET)
	public String gojoin() {
		
		
		return "/info/join";
		
	}
	
	
//  회원가입 완료
	@RequestMapping(value = "/join/", method = RequestMethod.POST)
	public String welcome() {
		
		
		return "/info/welcome";
		
	}
	
	



}
	
	

	
	
	
	