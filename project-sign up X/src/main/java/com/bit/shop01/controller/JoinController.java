package com.bit.shop01.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.shop01.model.entity.MemVo;
import com.bit.shop01.service.MemService;



@Controller
public class JoinController {

	@Autowired
	private MemService memService;

	
//  ȸ������ �������� �̵�
	@RequestMapping(value = "/join/", method = RequestMethod.GET)
	public String gojoin(MemVo memVo) {
		
		memService.insert(memVo);
		return "/info/join";
		
	}
	
	
//  ȸ������ �Ϸ�
	@RequestMapping(value = "/join/", method = RequestMethod.POST)
	public String welcome(MemVo memVo) throws Exception{
		
		
		memService.insert(memVo);
		return "/info/welcome";
		
	}
	
	



}
	
	

	
	
	
	