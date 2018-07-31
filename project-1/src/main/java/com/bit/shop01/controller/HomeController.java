package com.bit.shop01.controller;

import java.util.Locale;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	Logger log = Logger.getLogger(this.getClass());

	// 비회원
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {

		return "home";

	}

	// 회원
	@RequestMapping(value = "/home2/", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {

		return "home2";

	}
	
	// 관리자
	@RequestMapping(value = "/home3/", method = RequestMethod.GET)
	public String home3(Locale locale, Model model) {

		return "home3";

	}

}
