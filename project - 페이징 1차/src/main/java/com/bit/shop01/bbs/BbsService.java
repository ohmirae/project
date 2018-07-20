package com.bit.shop01.bbs;

import java.util.ArrayList;
import com.bit.shop01.page.PagingHelper;

public interface BbsService {

	/*
	 * 게시판 목록
	 */
	public ArrayList<BbsVo> getbbseditList(String bbscd, int start, int end);
	 
	 /*
	  * 특정 게시판의 총 게시물 갯수 구하기
	  */
	 public int getTotalRecord(String bbscd);

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
	  * paging
	  */
	 public int getListNo();
	 
	 public int getPrevLink();
	 
	 public int getFirstPage();
	 
	 public int getLastPage();
	 
	 public int getNextLink();

	 public int[] getPageLinks();

	 public void setPagingHelper(PagingHelper pagingHelper);
	
	
	 /*
	  * 이전글 보기
	  */
	 public BbsVo getPrevBbsVo(int bbseditno, String bbscd);

	 /*
	  * 다음글 보기
	  */
	 public BbsVo getNextBbsVo(int bbseditno, String bbscd);

}
