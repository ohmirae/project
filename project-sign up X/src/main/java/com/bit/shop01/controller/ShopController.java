package com.bit.shop01.controller;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ShopController {


	@RequestMapping(value = "/bottom/", method = RequestMethod.GET)
	public String bottom() {
		
		
		return "/products/botDetail";
		
	}
	
	
	@RequestMapping(value = "/dress/", method = RequestMethod.GET)
	public String dress() {
		
		
		return "/products/dreDetail";
		
	}
	


	@RequestMapping(value = "/outer/", method = RequestMethod.GET)
	public String outer() {
		
		
		return "/products/outDetail";
		
	}
	

	@RequestMapping(value = "/sale/", method = RequestMethod.GET)
	public String sale() {
		
		
		return "/products/saleDetail";
		
	}
	

	@RequestMapping(value = "/shoeacc/", method = RequestMethod.GET)
	public String shoeacc() {
		
		
		return "/products/sho&accDetail";
		
	}
	

	@RequestMapping(value = "/top/", method = RequestMethod.GET)
	public String top() {
		
		
		return "/products/topDetail";
		
	}
	
	
//	@RequestMapping("/outer/")
//	public String outer(Model model,HttpServletRequest req) throws SQLException {
//		return "/products/outDetail";
//	}
//	
//	@RequestMapping("/top/")
//	public String top(Model model,HttpServletRequest req) throws SQLException {
//		return "/products/topDetail";
//	}
//	
//	
//	@RequestMapping("/bottom/")
//	public String bottom(Model model,HttpServletRequest req) throws SQLException {
//			return "/products/botDetail";
//	}
//
//	
//	@RequestMapping("/dress/")
//	public String dress(Model model,HttpServletRequest req) throws SQLException {
//	return "/products/dreDetail";
//	}
//
//	
//	@RequestMapping("/shoeacc/")
//	public String shoeacc(Model model,HttpServletRequest req) throws SQLException {
//		return "/products/sho&accDetail";
//	}
//
//	
//	@RequestMapping("/sale/")
//	public String sale(Model model,HttpServletRequest req) throws SQLException {
//		return "/products/saleDetail";
//	}
//
//	   
	
	
	}
	


	

