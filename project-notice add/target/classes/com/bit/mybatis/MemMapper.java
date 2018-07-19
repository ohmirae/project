package com.bit.mybatis;

import org.apache.ibatis.annotations.Param;

import com.bit.shop01.model.entity.MemVo;

public interface MemMapper {
	
	public int insert(MemVo memVo);
	
	public MemVo login(@Param("memId") String memId, @Param("memPassword") String memPassword);
	
	public int modify(MemVo memVo);
	 
    public void changePasswd(MemVo memVo);
    
    
 
 

	}


