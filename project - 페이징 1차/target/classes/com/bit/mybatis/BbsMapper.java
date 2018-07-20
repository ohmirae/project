package com.bit.mybatis;

import java.util.ArrayList;
import java.util.HashMap;

import com.bit.shop01.bbs.BbsVo;

public interface BbsMapper {
	
	 /*
	  * 특정 게시판의 총 게시물 갯수 구하기
	  */
	 public int getTotalRecord(HashMap<String, String> hashmap);
	 
	/*
	 * 게시판 목록
	 */
	public ArrayList<BbsVo> getbbseditList(HashMap<String, String> hashmap);

	/*
	 * 새로운 게시글 추가
	 */
	public int insert(BbsVo bbsVo);

	/*
	 * 게시글 수정
	 */
	public void update(BbsVo bbsVo);

	/*
	 * 게시글 삭제
	 */
	public void delete(int bbseditno);

	/*
	 * 게시판 이름(종류)
	 */
	public String getBbsNm(String bbscd);

	/*
	 * 게시판 조회수 증가
	 */
	public void increaseHit(int bbseditno);

	/*
	 * 게시판 객체 가져오기
	 */
	public BbsVo getBbsVo(int bbseditno);
	
	/*
	  * 이전글 보기
	  */
	 public BbsVo getPrevBbsVo(HashMap<String, String> hashmap);

	 /*
	  * 다음글 보기
	  */
	 public BbsVo getNextBbsVo(HashMap<String, String> hashmap);

}
