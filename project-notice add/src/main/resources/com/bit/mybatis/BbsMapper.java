package com.bit.mybatis;

import java.util.ArrayList;
import java.util.HashMap;

import com.bit.shop01.bbs.BbsVo;

public interface BbsMapper {
	
	
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
}
 


