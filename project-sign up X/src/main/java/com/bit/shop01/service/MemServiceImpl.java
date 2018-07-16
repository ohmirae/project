package com.bit.shop01.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.mybatis.MemMapper;
import com.bit.shop01.model.entity.MemVo;

@Service
public class MemServiceImpl implements MemService{

	
	@Autowired
	MemMapper memMapper;
	
	
	public int insert(MemVo memVo) {
		
		return memMapper.insert(memVo);
	}
}
