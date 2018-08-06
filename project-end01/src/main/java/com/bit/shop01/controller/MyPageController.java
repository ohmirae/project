package com.bit.shop01.controller;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MyPageController {
	Logger log = Logger.getLogger(this.getClass());

	
	@RequestMapping(value = "/mypage2/", method = RequestMethod.GET)
	public String mypage2() {

		return "/info2/mypage2";

	}
	
	@RequestMapping(value = "/mypage3/", method = RequestMethod.GET)
	public String mypage3() {

		return "/info2/mypage3";

	}


}
