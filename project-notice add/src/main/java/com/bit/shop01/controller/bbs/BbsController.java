package com.bit.shop01.controller.bbs;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.shop01.bbs.BbsService;
import com.bit.shop01.bbs.BbsVo;

@Controller
public class BbsController {

	 @Autowired
	    private BbsService bbsService;
	 
	   
	    @RequestMapping(value="/not_bbs", method={RequestMethod.GET, RequestMethod.POST})
	    public String bbs(String bbscd, Model model) throws Exception{
	               
	        if (bbscd == null) bbscd = "notice";
	       
	        ArrayList<BbsVo> list = bbsService.getbbseditList(bbscd);
	        String bbsnm = bbsService.getBbsNm(bbscd);
	       
	        model.addAttribute("list", list);
	        model.addAttribute("bbsnm" , bbsnm);
	        model.addAttribute("bbscd" , bbscd);
	       
	        
	        return "/bbs/not_bbs"; 
	    }
	    
	    
	    
	    
	    
	    @RequestMapping(value="/not_bbs_write", method=RequestMethod.GET)
	    public String write(String bbscd, Model model) throws Exception {
	       
	        //게시판 이름
	        String bbsnm = bbsService.getBbsNm(bbscd);
	        model.addAttribute("bbsnm", bbsnm);
	       
	        return "/bbs/not_bbs_write";
	    }
	   
	    
	    @RequestMapping(value="/not_bbs_write", method=RequestMethod.POST)
	    public String write(BbsVo bbsVo) {
	        bbsVo.setMemId("${memId}");
	        System.out.println(bbsVo);
	        bbsService.insert(bbsVo);
	        return "redirect:/not_bbs?bbscd=" + bbsVo.getBbscd();
	    }
	    
	}
	
