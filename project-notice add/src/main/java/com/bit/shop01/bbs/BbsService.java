package com.bit.shop01.bbs;

import java.util.ArrayList;

public interface BbsService{
	

    /*
     * 게시판 목록
     */
    public ArrayList<BbsVo> getbbseditList(String bbscd);
 
    /*
     * 새로운 게시글  추가
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
 
