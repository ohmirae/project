package com.bit.shop01.bbs;

import java.util.ArrayList;
import com.bit.shop01.page.PagingHelper;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.mybatis.BbsMapper;

@Service
public class BbsServiceImpl implements BbsService {

	@Autowired
	private BbsMapper bbsMapper;
	
	 private PagingHelper pagingHelper; //페이징 처리 유틸클래스
	 

	public ArrayList<BbsVo> getbbseditList(String bbscd, int start, int end) {
   
		 Integer startRownum = start;
		 Integer endRownum = end;
		
		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("bbscd", bbscd);
		hashmap.put("start", startRownum.toString());
		hashmap.put("end", endRownum.toString());

		return bbsMapper.getbbseditList(hashmap);
	}
	
	 /*
	  * 특정 게시판의 총 게시물 갯수 구하기
	  */
	 public int getTotalRecord(String bbscd) {
	  HashMap<String,String> hashmap = new HashMap<String,String>();
	  hashmap.put("bbsd", bbscd);

	  return bbsMapper.getTotalRecord(hashmap);
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

	/*
	 * 게시판 조회수 증가
	 */
	public void increaseHit(int bbseditno) {
		bbsMapper.increaseHit(bbseditno);
	}

	/*
	 * 게시판 객체 가져오기
	 */
	public BbsVo getBbsVo(int bbseditno) {
		return bbsMapper.getBbsVo(bbseditno);
	}
	
	 /*
	  * paging
	  */
	 public int getListNo() {
	  return pagingHelper.getListNo(); 
	 }
	 
	 public int getPrevLink() {
	  return pagingHelper.getPrevLink();
	 }
	 
	 public int getFirstPage() {
	  return pagingHelper.getFirstPage();
	 }
	 
	 public int getLastPage() {
	  return pagingHelper.getLastPage();
	 }
	 
	 public int getNextLink() {
	  return pagingHelper.getNextLink();
	 }

	 public int[] getPageLinks() {
	  return pagingHelper.getPageLinks();
	 }

	 public PagingHelper getPagingHelper() {
	  return pagingHelper;
	 }

	 public void setPagingHelper(PagingHelper pagingHelper) {
	  this.pagingHelper = pagingHelper;
	 }
	
	
	
	/*
	 * 이전 글 보기
	 */
	public BbsVo getPrevBbsVo(int bbseditno, String bbscd) {
		
		 HashMap<String, String> hashmap = new HashMap<String, String>();
		  Integer no = bbseditno;
		  hashmap.put("bbseditno", no.toString());
		  hashmap.put("bbscd", bbscd);
		  
		  return bbsMapper.getPrevBbsVo(hashmap);
	}

	/*
	 * 다음 글 보기
	 */
	public BbsVo getNextBbsVo(int bbseditno, String bbscd) {
		
		 HashMap<String, String> hashmap = new HashMap<String, String>();
		  Integer no = bbseditno;
		  hashmap.put("bbseditno", no.toString());
		  hashmap.put("bbscd", bbscd);
		  
		  return bbsMapper.getNextBbsVo(hashmap);
	}
	
	
}
