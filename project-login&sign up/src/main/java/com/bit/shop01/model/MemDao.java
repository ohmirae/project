package com.bit.shop01.model;

import com.bit.shop01.model.entity.MemVo;

public interface MemDao {


	public int insert(MemVo memVo);
	
	public MemVo login(String memId, String memPassword);
	

	
	
}
