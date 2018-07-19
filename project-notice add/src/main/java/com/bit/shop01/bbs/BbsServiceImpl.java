package com.bit.shop01.bbs;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.mybatis.BbsMapper;

@Service
public class BbsServiceImpl implements BbsService {
	
	
	@Autowired
	private BbsMapper bbsMapper;
	
	

	public ArrayList<BbsVo> getbbseditList(String bbscd) {
		
		   HashMap<String, String> hashmap = new HashMap<String, String>();
	        hashmap.put("bbscd", bbscd);
	   
	        return bbsMapper.getbbseditList(hashmap);
	}

	public int insert(BbsVo bbsVo) {

		  return bbsMapper.insert(bbsVo);
	}

	public void update(BbsVo bbsVo) {

		bbsMapper.update(bbsVo);

	}

	public void delete(int bbseditno) {

		bbsMapper.delete(bbseditno);
	}

	public String getBbsNm(String bbscd) {

		return bbsMapper.getBbsNm(bbscd);
	}

}
