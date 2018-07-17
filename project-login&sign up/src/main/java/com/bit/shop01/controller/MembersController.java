
package com.bit.shop01.controller;


import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.method.support.ModelAndViewContainer;

import com.bit.shop01.model.entity.MemVo;
import com.bit.shop01.service.MemService;

@Controller
public class MembersController {
	
	@Autowired
	private MemService memService;

	Logger log = Logger.getLogger(this.getClass());

	// �α��� ȭ��
	@RequestMapping(value = "/login/", method = RequestMethod.GET)
	public String login() {
		
		
		
		return "/info/login";
		
	}
	
	  @RequestMapping(value="/login/", method=RequestMethod.POST)
	    public String login(String memId, String memPassword, HttpSession session) throws Exception {
		    MemVo loginMem = memService.login(memId, memPassword);
	        System.out.println(memId+memPassword);
	        if (loginMem != null) {
	            session.setAttribute("check", loginMem);
	            return "/info/changePasswd";
//	            return "/info/logAfter";
	        } else {
	            return "/info/login";
	        }
	    }
	  
//	  
//	  @RequestMapping(value="/login", method=RequestMethod.POST)
//	    public String login(String email, String passwd, HttpSession session) throws Exception {
//	        User loginUser = userService.login(email, passwd);
//	        if (loginUser != null) {
//	            session.setAttribute("check", loginUser);
//	            return "users/changePasswd";
//	        } else {
//	            return "users/login";
//	        }
//	    }
//	  
//
	
//  ȸ������ �������� �̵�
	@RequestMapping(value = "/join/", method = RequestMethod.GET)
	public String gojoin(MemVo memVo) {
		
		
		return "/info/join";
		
	}
	
	
//  ȸ������ �Ϸ�
	@RequestMapping(value = "/join/", method = RequestMethod.POST)
	public String welcome(MemVo memVo) throws Exception{
		
		
		System.out.println(memVo);
		memService.insert(memVo);
		return "/info/welcome";
		
	}
	
	
	
	
}
