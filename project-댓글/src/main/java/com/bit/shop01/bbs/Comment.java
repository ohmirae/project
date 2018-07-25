package com.bit.shop01.bbs;

import java.sql.Date;

public class Comment {

	
	
	private int commentno, bbseditno;
	private String memId, memo;
	private Date bbs_date;
	
	
	public Comment() {}


	public int getCommentno() {
		return commentno;
	}


	public void setCommentno(int commentno) {
		this.commentno = commentno;
	}


	public int getBbseditno() {
		return bbseditno;
	}


	public void setBbseditno(int bbseditno) {
		this.bbseditno = bbseditno;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getMemo() {
		return memo;
	}


	public void setMemo(String memo) {
		this.memo = memo;
	}


	public Date getBbs_date() {
		return bbs_date;
	}


	public void setBbs_date(Date bbs_date) {
		this.bbs_date = bbs_date;
	}


	@Override
	public String toString() {
		return "Comment [commentno=" + commentno + ", bbseditno=" + bbseditno + ", memId=" + memId + ", memo=" + memo
				+ ", bbs_date=" + bbs_date + "]";
	}
	
	
	
}

