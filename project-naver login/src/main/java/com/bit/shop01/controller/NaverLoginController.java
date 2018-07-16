package com.bit.shop01.controller;



import java.io.IOException;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bit.shop01.model.entity.NaverLoginBo;
import com.github.scribejava.core.model.OAuth2AccessToken;


@Controller
public class NaverLoginController {

// ���θ� �α��� session1 , ���̹� �α��� session2

//	Logger log = Logger.getLogger(this.getClass());
//	private LoginVo loginVo;
//
//	// �α��� ȭ��
//	@RequestMapping(value = "/login/", method = RequestMethod.GET)
//	public String login() {
//		
//		
//		return "/info/login";
//		
//	}
//	
	// �α��� �Ϸ� 
	@RequestMapping(value = "/login/", method = RequestMethod.POST)
	public String logAfter() {
		
		
		return "/info/logAfter";
		
	}
	
	
	
	
	/* NaverLoginBO */
	private NaverLoginBo naverLoginBO;
	private String apiResult = null;
	
	@Autowired
	private void setNaverLoginBO(NaverLoginBo naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}
	

	//�α��� ù ȭ�� ��û �޼ҵ�
	@RequestMapping(value = "/login", method = { RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session2) {
		
		/* ���̹����̵�� ���� URL�� �����ϱ� ���Ͽ� naverLoginBOŬ������ getAuthorizationUrl�޼ҵ� ȣ�� */
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session2);
		
		//https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=sE***************&
		//redirect_uri=http%3A%2F%2F211.63.89.90%3A8090%2Flogin_project%2Fcallback&state=e68c269c-5ba9-4c31-85da-54c16c658125
		System.out.println("���̹�:" + naverAuthUrl);
		
		//���̹� 
		model.addAttribute("url", naverAuthUrl);

		/* ������ ���� URL�� View�� ���� */
		return "/info2/login";
	}

	//���̹� �α��� ������ callbackȣ�� �޼ҵ�
	@RequestMapping(value = "/callback", method = { RequestMethod.GET, RequestMethod.POST })
	public String callback(Model model, @RequestParam String code, @RequestParam String state, HttpSession session)
			throws IOException {
		System.out.println("����� callback");
		OAuth2AccessToken oauthToken;
        oauthToken = naverLoginBO.getAccessToken(session, code, state);
        //�α��� ����� ������ �о�´�.
	    apiResult = naverLoginBO.getUserProfile(oauthToken);
		model.addAttribute("result", apiResult);

        /* ���̹� �α��� ���� ������ View ȣ�� */
		return "/info/naverSuccess";
	}
}


	

	
	

	
	
	
	