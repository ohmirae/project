package com.bit.shop01.products;

import java.util.ArrayList;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.mybatis.ProductsMapper;
import com.bit.shop01.bbs.AttachFile;
import com.bit.shop01.page.PagingHelper;

@Service
public class ProductsServiceImpl implements ProductsService {

	@Autowired
	ProductsMapper productsMapper;

	private PagingHelper pagingHelper; // 페이징 처리 유틸리티 클래스

	/*
	 * 게시판 목록
	 */
	public ArrayList<ProductsVo> getProductsList(String procd, String searchWord, int start, int end) {
		Integer startRownum = start;
		Integer endRownum = end;

		HashMap<String, String> hashmap = new HashMap<String, String>();
		hashmap.put("procd", procd);
		hashmap.put("searchWord", searchWord);
		hashmap.put("start", startRownum.toString());
		hashmap.put("end", endRownum.toString());

		return productsMapper.getProductsList(hashmap);
	}
	
	 /*
	  * 특정 게시판의 총 게시물 갯수 구하기
	  */
	 public int getTotalRecord(String procd, String searchWord) {
	  HashMap<String,String> hashmap = new HashMap<String,String>();
	  hashmap.put("procd", procd);
	  hashmap.put("searchWord", searchWord);

	  return productsMapper.getTotalRecord(hashmap);
	 }
	 
	

	/*
	 * 새로운 게시글 추가
	 */
	public int insert(ProductsVo productsVo) {
		return productsMapper.insert(productsVo);
	}

	/*
	 * 게시글 수정
	 */
	public void update(ProductsVo productsVo) {
		productsMapper.update(productsVo);
	}

	/*
	 * 게시글 삭제
	 */
	public void delete(int productNum) {
		productsMapper.delete(productNum);
	}

	/*
	 * 게시판 이름(종류)
	 */
	public String getProductsNm(String procd) {
		return productsMapper.getProductsNum(procd);
	}

	/*
	 * 게시판 객체 가져오기
	 */
	public ProductsVo getProductVo(int productNum) {
		return productsMapper.getProductsVo(productNum);
	}
	

	 /*
	  * 이전글 보기
	  */
	 public ProductsVo getPrevProductsVo(int productNum, String procd, String searchWord) {
	  HashMap<String, String> hashmap = new HashMap<String, String>();
	  Integer no = productNum;
	  hashmap.put("productNum", no.toString());
	  hashmap.put("procd", procd);
	  hashmap.put("searchWord", searchWord);
	  
	  return productsMapper.getPrevProductsVo(hashmap);
	 }

	 /*
	  * 다음글 보기
	  */
	 public ProductsVo getNextProductsVo(int productNum, String procd, String searchWord) {
	  HashMap<String, String> hashmap = new HashMap<String, String>();
	  Integer no = productNum;
	  hashmap.put("productNum", no.toString());
	  hashmap.put("procd", procd);
	  hashmap.put("searchWord", searchWord);
	  
	  return productsMapper.getNextProductsVo(hashmap);
	 }
	 
	 /*
	  * 가장 최근 게시물 가져오기
	  */
	 public ProductsVo getNewProductsVo() {
	  return productsMapper.getNewProductsVo();  
	 }
	 
	 /*
	  * 첨부파일 추가
	  */
	 public void insertAttachFile(AttachFile attachFile) {
	  productsMapper.insertAttachFile(attachFile);
	 }
	 
	 /*
	  *  게시글의 첨부파일 리스트
	  */
	 public ArrayList<AttachFile> getAttachFileList(int productNum) {
	  return productsMapper.getAttachFileList(productNum);  
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


	}
	 
	
