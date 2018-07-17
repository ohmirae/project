package com.bit.shop01.controller;



import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class CartController {
	Logger log = Logger.getLogger(this.getClass());



	
	@RequestMapping(value = "/cart/", method = RequestMethod.GET)
	public String cart() {
		
		
		return "/info/cart";
		
	}
	
}
	
	

	
	
	
	