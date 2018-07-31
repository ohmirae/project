package com.bit.mybatis;

import java.util.ArrayList;
import java.util.HashMap;

import com.bit.shop01.bbs.AttachFile;
import com.bit.shop01.bbs.BbsVo;
import com.bit.shop01.bbs.Comment;

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
	 
	 
	 /*
	  * 가장 최근 게시물 가져오기
	  */
	 public BbsVo getNewBbsVo();
	 
	 /*
	  * 첨부파일 추가
	  */
	 public void insertAttachFile(AttachFile attachFile);

	 /*
	  *  게시글의 첨부파일 리스트
	  */
	 public ArrayList<AttachFile> getAttachFileList(int bbseditno);
	 
	 /*
	  * 덧글쓰기
	  */
	 public void insertComment(Comment comment); 
	 
	 /*
	  * 덧글수정
	  */
	 public void updateComment(Comment comment);
	 
	 /*
	  * 덧글삭제
	  */
	 public void deleteComment(int commentno);
	 
	 /*
	  * 덧글 가져오기
	  */
	 public Comment getComment(int commentno);
	 
	 /*
	  * 게시글의 덧글리스트 구하기
	  */
	 public ArrayList<Comment> getCommentList(int bbseditno);



}
