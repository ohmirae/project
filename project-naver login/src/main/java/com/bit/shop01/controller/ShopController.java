package com.bit.shop01.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ShopController {


	@RequestMapping("/outer/")
	public String outer(Model model,HttpServletRequest req) throws SQLException {
		return "outDetail";
	}
	
	
	@RequestMapping("/top/")
	public String top(Model model,HttpServletRequest req) throws SQLException {
		return "topDetail";
	}
	
	
	@RequestMapping("/bottom/")
	public String bottom(Model model,HttpServletRequest req) throws SQLException {
			return "botDetail";
	}

	
	@RequestMapping("/dress/")
	public String dress(Model model,HttpServletRequest req) throws SQLException {
	return "dreDetail";
	}

	
	@RequestMapping("/shoeacc/")
	public String shoeacc(Model model,HttpServletRequest req) throws SQLException {
		return "sho&accDetail";
	}

	
	@RequestMapping("/sale/")
	public String sale(Model model,HttpServletRequest req) throws SQLException {
		return "saleDetail";
	}

	   
	
	
	}
	


	

