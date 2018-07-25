package com.bit.shop01.controller.bbs;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bit.shop01.bbs.BbsService;
import com.bit.shop01.bbs.BbsVo;
import com.bit.shop01.page.PagingHelper;

@Controller
@RequestMapping("/bbs")
public class BbsController2 {

	@Autowired
	private BbsService bbsService;

	// notice 게시판 맵핑
	@RequestMapping(value = "/qna", method = { RequestMethod.GET, RequestMethod.POST })
	public String bbs(String bbscd, Integer curPage, 
			   String searchWord, Model model ) throws Exception {

		if (bbscd == null)
			bbscd = "qna";
		if (curPage == null)
			curPage = 1;
		if (searchWord == null) searchWord = "";

		int numPerPage = 10;// 페이지당 레코드 수 지정
		int pagePerBlock = 100;// 페이지 링크의 그룹(block)의 크기 지정

		int totalRecord = bbsService.getTotalRecord(bbscd, searchWord);

		PagingHelper pagingHelper = new PagingHelper(totalRecord, curPage, numPerPage, pagePerBlock);
		bbsService.setPagingHelper(pagingHelper);

		int start = pagingHelper.getStartRecord();
		int end = pagingHelper.getEndRecord();

		ArrayList<BbsVo> list = bbsService.getbbseditList(bbscd, searchWord, start, end);
		String bbsnm = bbsService.getBbsNm(bbscd);
		Integer no = bbsService.getListNo();
		Integer prevLink = bbsService.getPrevLink();
		Integer nextLink = bbsService.getNextLink();
		Integer firstPage = bbsService.getFirstPage();
		Integer lastPage = bbsService.getLastPage();
		int[] pageLinks = bbsService.getPageLinks();


		model.addAttribute("list", list);
		model.addAttribute("bbsnm", bbsnm);
		model.addAttribute("bbscd", bbscd);

		model.addAttribute("no", no);
		model.addAttribute("prevLink", prevLink);
		model.addAttribute("nextLink", nextLink);
		model.addAttribute("firstPage", firstPage);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("pageLinks", pageLinks);
		model.addAttribute("curPage", curPage);// curPage는 null 값이면 1로 만들어야 하므로

		return "/bbs/qna";
	}

	// 게시판 글쓰기
	@RequestMapping(value = "/qna_write", method = RequestMethod.GET)
	public String write(String bbscd, Model model) throws Exception {

		// 게시판 이름
		String bbsnm = bbsService.getBbsNm(bbscd);
		model.addAttribute("bbsnm", bbsnm);

		return "/bbs/qna_write";
	}

	// notice 게시판 글작성
	@RequestMapping(value = "/qna_write", method = RequestMethod.POST)
	public String write(BbsVo bbsVo) throws Exception{
		bbsVo.setMemId("관리자");
		System.out.println(bbsVo);
		bbsService.insert(bbsVo);
		return "redirect:/qna?bbscd=" + bbsVo.getBbscd();
	}

	@RequestMapping(value = "/qna_detail", method = RequestMethod.GET)
	public String view(int bbseditno, String bbscd, Integer curPage,String searchWord , Model model) throws Exception{

		int numPerPage = 10;// 페이지당 레코드 수 지정
		int pagePerBlock = 10;// 페이지 링크의 그룹(block)의 크기 지정
		if (searchWord == null) searchWord = ""; // 검색어가 null 이면 ""으로 변경 
		// 목록보기
		int totalRecord = bbsService.getTotalRecord(bbscd, searchWord);
		System.out.println(curPage);
		PagingHelper pagingHelper = new PagingHelper(totalRecord, curPage, numPerPage, pagePerBlock);
		bbsService.setPagingHelper(pagingHelper);

		int start = pagingHelper.getStartRecord();
		int end = pagingHelper.getEndRecord();

		// 상세보기
		BbsVo thisBbsVo = bbsService.getBbsVo(bbseditno);
		BbsVo prevBbsVo = bbsService.getPrevBbsVo(bbseditno, bbscd, searchWord);
		BbsVo nextBbsVo = bbsService.getNextBbsVo(bbseditno, bbscd, searchWord);


		ArrayList<BbsVo> list = bbsService.getbbseditList(bbscd, searchWord, start, end);
		String bbsnm = bbsService.getBbsNm(bbscd);
		Integer no = bbsService.getListNo();
		Integer prevLink = bbsService.getPrevLink();
		Integer nextLink = bbsService.getNextLink();
		Integer firstPage = bbsService.getFirstPage();
		Integer lastPage = bbsService.getLastPage();
		int[] pageLinks = bbsService.getPageLinks();

		 model.addAttribute("thisBbsVo", thisBbsVo);
		 model.addAttribute("prevBbsVo", prevBbsVo);
		 model.addAttribute("nextBbsVo", nextBbsVo);

		System.out.println(thisBbsVo);

		model.addAttribute("list", list);
		model.addAttribute("bbsnm", bbsnm);
		model.addAttribute("bbscd", bbscd);

		model.addAttribute("no", no);
		model.addAttribute("prevLink", prevLink);
		model.addAttribute("nextLink", nextLink);
		model.addAttribute("firstPage", firstPage);
		model.addAttribute("lastPage", lastPage);
		model.addAttribute("pageLinks", pageLinks);

		// 조회수 증가
		bbsService.increaseHit(bbseditno);

		return "/bbs/qna_detail";
	}
	
	

	// 게시글 삭제
	@RequestMapping(value = "/qna_delete", method = RequestMethod.GET)
	public String delete(int bbseditno,  String searchWord, String bbscd) throws Exception {

		bbsService.delete(bbseditno);

		return "redirect:/qna?bbscd=" + bbscd + "&searchWord=" + searchWord;

	}

	// 게시글 수정
	@RequestMapping(value = "/qna_edit", method = RequestMethod.GET)
	public String update(int bbseditno, String bbscd, Model model) throws Exception {

		BbsVo thisBbsVo = bbsService.getBbsVo(bbseditno);
		String bbsnm = bbsService.getBbsNm(bbscd);

		// 수정페이지에서 보일 게시글 정보
		model.addAttribute("thisBbsVo", thisBbsVo);
		model.addAttribute("bbsnm", bbsnm);

		return "/bbs/qna_edit";
	}

	@RequestMapping(value = "/qna_edit", method = RequestMethod.POST)
	public String update(BbsVo bbsVo, Integer curPage, String bbscd, String searchWord, Model model) throws Exception {

		bbsService.update(bbsVo);

		return "redirect:/qna_detail?bbseditno=" + bbsVo.getBbseditno() + "&bbscd=" + bbsVo.getBbscd() +   "&curPage=" + curPage + "&searchWord=" + searchWord;
	}

}
