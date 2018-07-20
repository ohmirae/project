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
public class BbsController3 {

	@Autowired
	private BbsService bbsService;

	// notice 게시판 맵핑
	@RequestMapping(value = "/rev_bbs", method = { RequestMethod.GET, RequestMethod.POST })
	public String bbs(String bbscd, Integer curPage, Model model) throws Exception {

		if (bbscd == null)
			bbscd = "review";
		if (curPage == null)
			curPage = 1;

		int numPerPage = 10;// 페이지당 레코드 수 지정
		int pagePerBlock = 10;// 페이지 링크의 그룹(block)의 크기 지정

		int totalRecord = bbsService.getTotalRecord(bbscd);

		PagingHelper pagingHelper = new PagingHelper(totalRecord, curPage, numPerPage, pagePerBlock);
		bbsService.setPagingHelper(pagingHelper);

		int start = pagingHelper.getStartRecord();
		int end = pagingHelper.getEndRecord();

		ArrayList<BbsVo> list = bbsService.getbbseditList(bbscd, start, end);
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

		return "/bbs/rev_bbs";
	}

	// 게시판 글쓰기
	@RequestMapping(value = "/rev_bbs_write", method = RequestMethod.GET)
	public String write(String bbscd, Model model) throws Exception {

		// 게시판 이름
		String bbsnm = bbsService.getBbsNm(bbscd);
		model.addAttribute("bbsnm", bbsnm);

		return "/bbs/rev_bbs_write";
	}

	// notice 게시판 글작성
	@RequestMapping(value = "/rev_bbs_write", method = RequestMethod.POST)
	public String write(BbsVo bbsVo) throws Exception{
		bbsVo.setMemId("${memId}");
		System.out.println(bbsVo);
		bbsService.insert(bbsVo);
		return "redirect:/rev_bbs?bbscd=" + bbsVo.getBbscd();
	}

	@RequestMapping(value = "/rev_bbs_detail", method = RequestMethod.GET)
	public String view(int bbseditno, String bbscd, Integer curPage, Model model) throws Exception{

		int numPerPage = 10;// 페이지당 레코드 수 지정
		int pagePerBlock = 10;// 페이지 링크의 그룹(block)의 크기 지정
		// 목록보기
		int totalRecord = bbsService.getTotalRecord(bbscd);
		System.out.println(curPage);
		PagingHelper pagingHelper = new PagingHelper(totalRecord, curPage, numPerPage, pagePerBlock);
		bbsService.setPagingHelper(pagingHelper);

		int start = pagingHelper.getStartRecord();
		int end = pagingHelper.getEndRecord();

		// 상세보기
		BbsVo thisBbsVo = bbsService.getBbsVo(bbseditno);

		// 이전, 다음 글 보기
		// BbsVo prevBbsVo = bbsService.getPrevBbsVo(bbseditno, bbscd);
		// BbsVo nextBbsVo = bbsService.getNextBbsVo(bbseditno, bbscd);

		ArrayList<BbsVo> list = bbsService.getbbseditList(bbscd, start, end);
		String bbsnm = bbsService.getBbsNm(bbscd);
		Integer no = bbsService.getListNo();
		Integer prevLink = bbsService.getPrevLink();
		Integer nextLink = bbsService.getNextLink();
		Integer firstPage = bbsService.getFirstPage();
		Integer lastPage = bbsService.getLastPage();
		int[] pageLinks = bbsService.getPageLinks();

		// model.addAttribute("thisBbsVo", thisBbsVo);
		// model.addAttribute("prevBbsVo", prevBbsVo);
		// model.addAttribute("nextBbsVo", nextBbsVo);

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

		return "/bbs/rev_bbs_detail";
	}
	

	// 게시글 삭제
	@RequestMapping(value = "/rev_bbs_delete", method = RequestMethod.GET)
	public String delete(int bbseditno, String bbscd) throws Exception {

		bbsService.delete(bbseditno);

		return "redirect:/rev_bbs?bbscd=" + bbscd;

	}

	// 게시글 수정
	@RequestMapping(value = "/rev_bbs_edit", method = RequestMethod.GET)
	public String update(int bbseditno, String bbscd, Model model) throws Exception {

		BbsVo thisBbsVo = bbsService.getBbsVo(bbseditno);
		String bbsnm = bbsService.getBbsNm(bbscd);

		// 수정페이지에서 보일 게시글 정보
		model.addAttribute("thisBbsVo", thisBbsVo);
		model.addAttribute("bbsnm", bbsnm);

		return "/bbs/rev_bbs_edit";
	}

	@RequestMapping(value = "/rev_bbs_edit", method = RequestMethod.POST)
	public String update(BbsVo bbsVo, Integer curPage, String bbscd, Model model) throws Exception {

		bbsService.update(bbsVo);

		return "redirect:/rev_bbs_detail?bbseditno=" + bbsVo.getBbseditno() + "&bbscd=" + bbsVo.getBbscd() +   "&curPage=" + curPage;
	}

}
