package com.bit.shop01.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.shop01.model.entity.BbsVo;

@Controller
public class BbsController {

	private BbsVo bbsVo;
	
	@RequestMapping(value="/bbs/" , method = RequestMethod.GET)
	public String not_bbs() {
		
		return "bbs/not_bbs";
	}
	
	
}
