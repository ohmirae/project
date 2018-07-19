package com.bit.shop01.service;

import com.bit.shop01.model.entity.MemVo;

public interface MemService {

	
	public int insert(MemVo memVo);
	
	public MemVo login(String memId, String memPassword);
	
	  public int modify(MemVo memVo);
	  
	  public void changePasswd(MemVo memVo);
	  
	 

}

	

