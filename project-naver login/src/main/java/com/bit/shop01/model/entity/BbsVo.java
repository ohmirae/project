package com.bit.shop01.model.entity;

import java.sql.Date;

public class BbsVo {

	
	private int bbsNum;
	private String memId;
	private String title;
	private String contents;
	private Date bbs_date;
	
	public BbsVo() {
	}

	public BbsVo(int bbsNum, String memId, String title, String contents, Date bbs_date) {
		super();
		this.bbsNum = bbsNum;
		this.memId = memId;
		this.title = title;
		this.contents = contents;
		this.bbs_date = bbs_date;
	}

	public int getBbsNum() {
		return bbsNum;
	}

	public void setBbsNum(int bbsNum) {
		this.bbsNum = bbsNum;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
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

	public Date getBbs_date() {
		return bbs_date;
	}

	public void setBbs_date(Date bbs_date) {
		this.bbs_date = bbs_date;
	}

	@Override
	public String toString() {
		return "bbsVo [bbsNum=" + bbsNum + ", memId=" + memId + ", title=" + title + ", contents=" + contents
				+ ", bbs_date=" + bbs_date + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + bbsNum;
		result = prime * result + ((contents == null) ? 0 : contents.hashCode());
		result = prime * result + ((memId == null) ? 0 : memId.hashCode());
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		BbsVo other = (BbsVo) obj;
		if (bbsNum != other.bbsNum)
			return false;
		if (contents == null) {
			if (other.contents != null)
				return false;
		} else if (!contents.equals(other.contents))
			return false;
		if (memId == null) {
			if (other.memId != null)
				return false;
		} else if (!memId.equals(other.memId))
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
	
	
	
}
