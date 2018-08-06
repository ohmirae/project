package com.bit.shop01.bbs;

import java.sql.Date;

public class BbsVo {

	private int bbseditno;
	private String bbscd;
	private String title;
	private String contents;
	private String memId;
	private int hit;
	private Date bbs_date;
	private int attachFileNum;
	private int commentno;

	public BbsVo() {
	}

	
	public static final String ENTER = System.getProperty("line.separator");

	public String getHtmlContents() {
		if (contents != null) {
			return contents.replaceAll(ENTER, "<br />");
		}
		return null;
	}
	

	public BbsVo(int bbseditno, String bbscd, String title, String contents, String memId, int hit, Date bbs_date) {
		super();
		this.bbseditno = bbseditno;
		this.bbscd = bbscd;
		this.title = title;
		this.contents = contents;
		this.memId = memId;
		this.hit = hit;
		this.bbs_date = bbs_date;
	}

	public int getBbseditno() {
		return bbseditno;
	}

	public void setBbseditno(int bbseditno) {
		this.bbseditno = bbseditno;
	}

	public String getBbscd() {
		return bbscd;
	}

	public void setBbscd(String bbscd) {
		this.bbscd = bbscd;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public int getHit() {
		return hit;
	}

	public void setHit(int hit) {
		this.hit = hit;
	}

	public Date getBbs_date() {
		return bbs_date;
	}

	public void setBbs_date(Date bbs_date) {
		this.bbs_date = bbs_date;
	}
	
	public int getAttachFileNum() {
		return attachFileNum;
	}

	public void setAttachFileNum(int attachFileNum) {
		this.attachFileNum = attachFileNum;
	}

	public int getCommentno() {
		return commentno;
	}

	public void setCommentno(int commentno) {
		this.commentno = commentno;
	}

	

	@Override
	public String toString() {
		return "BbsVo [bbseditno=" + bbseditno + ", bbscd=" + bbscd + ", title=" + title + ", contents=" + contents
				+ ", memId=" + memId + ", hit=" + hit + ", bbs_date=" + bbs_date + "]";
	}

}
