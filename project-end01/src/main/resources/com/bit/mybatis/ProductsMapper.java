package com.bit.mybatis;

import java.util.ArrayList;
import java.util.HashMap;

import com.bit.shop01.bbs.AttachFile;
import com.bit.shop01.bbs.AttachFile2;
import com.bit.shop01.products.ProductsVo;

public interface ProductsMapper {
	
	 /*
	  * 특정 게시판의 총 게시물 갯수 구하기
	  */
	 public int getTotalRecord(HashMap<String, String> hashmap);

	 /*
     * 게시판 목록
     */
    public ArrayList<ProductsVo> getProductsList(HashMap<String, String> hashmap);
    /*
     * 새로운 게시글 추가
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
    public String getProductsNum(String procd);
    
    /*
     * 게시판 객체 가져오기
     */
    public ProductsVo getProductsVo(int productNum);

	public ProductsVo getPrevProductsVo(HashMap<String, String> hashmap);

	public ProductsVo getNextProductsVo(HashMap<String, String> hashmap);
	
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
}
 
	
