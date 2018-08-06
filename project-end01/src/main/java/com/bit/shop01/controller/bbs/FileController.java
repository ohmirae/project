package com.bit.shop01.controller.bbs;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class FileController {
	
	
	@RequestMapping("/rev_bbs_detail")
	 public ModelAndView upload(@RequestParam("number") String number, @RequestParam("file") MultipartFile file, HttpServletRequest request) {

	  ModelAndView mav = new ModelAndView();
	  // 파일 이름 출력
	  System.out.println("파일이름" + file.getOriginalFilename());

	  //참고, String filePath=request.getSession().getServletContext().getRealPath("upload");
	  //절대경로 : String filePath = "c:\\data\\" + file.getOriginalFilename();

	  // 파일을 실제 서버에 저장

	  // 웹서비스 root 경로​

	      String root_path = request.getSession().getServletContext().getRealPath("/");  

	      final String attach_path = "C:\\spring\\spring2018\\project\\src\\main\\webapp\\resources\\imgs2\\";
	      String filename = file.getOriginalFilename();

	  File f = new File(root_path + attach_path + filename);
	  try {
	   file.transferTo(f);
	  } catch (Exception e) {
	   System.out.println(e.getMessage());
	  }  
	  mav.setViewName("file/filelist");
	  mav.addObject("number", number);
	  mav.addObject("filename", filename);
	  return mav;

	 } 

	 

}
