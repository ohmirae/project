package com.bit.shop01.products;

import java.util.ArrayList;

import com.bit.shop01.bbs.AttachFile;
import com.bit.shop01.bbs.AttachFile2;
import com.bit.shop01.page.PagingHelper;
import com.bit.shop01.products.ProductsVo;

public interface ProductsService {

	  /*
     * 게시판 목록
     */
    public ArrayList<ProductsVo> getProductsList(String procd, String searchWord, int start, int end);
    
    /*
     * 특정 게시판의 총 게시물 갯수 구하기
     */
    public int getTotalRecord(String procd, String searchWord);
    
 
    /*
     * 새로운 게시글  추가
     */
    public int insert(ProductsVo productsVo);
 
   
    /*
     * 게시글 수정
     */
    public void update(ProductsVo productsVo);
   
    /*
     * 게시글 삭제
     */
    public void delete(int productNum);
    /*
     * 게시판 이름(종류)
     */
    public String getProductsNm(String procd);
    
    /*
     * 게시판 객체 가져오기
     */
    public ProductsVo getProductVo(int productNum);
    
    /*
     * 이전글 보기
     */
    public ProductsVo getPrevProductsVo(int productNum, String procd, String searchWord);

    /*
     * 다음글 보기
     */
    public ProductsVo getNextProductsVo(int productNum, String procd, String searchWord);
    
    
    /*
     * 가장 최근 게시물 가져오기
     */
    public ProductsVo getNewProductsVo();

    /*
     * 첨부파일 추가
     */
    public void insertAttachFile(AttachFile attachFile);
    
    /*
     *  게시글의 첨부파일 리스트
     */
    public ArrayList<AttachFile> getAttachFileList(int productNum);


    
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

    
}

