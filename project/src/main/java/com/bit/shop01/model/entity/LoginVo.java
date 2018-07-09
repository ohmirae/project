package com.bit.shop01.model.entity;

public class LoginVo {

	
	private String memId;
	private String memPassword;
	
	
	public LoginVo() {}


	public LoginVo(String memId, String memPassword) {
		super();
		this.memId = memId;
		this.memPassword = memPassword;
	}


	public String getMemId() {
		return memId;
	}


	public void setMemId(String memId) {
		this.memId = memId;
	}


	public String getMemPassword() {
		return memPassword;
	}


	public void setMemPassword(String memPassword) {
		this.memPassword = memPassword;
	}


	@Override
	public String toString() {
		return "LoginVo [memId=" + memId + ", memPassword=" + memPassword + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((memId == null) ? 0 : memId.hashCode());
		result = prime * result + ((memPassword == null) ? 0 : memPassword.hashCode());
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
		LoginVo other = (LoginVo) obj;
		if (memId == null) {
			if (other.memId != null)
				return false;
		} else if (!memId.equals(other.memId))
			return false;
		if (memPassword == null) {
			if (other.memPassword != null)
				return false;
		} else if (!memPassword.equals(other.memPassword))
			return false;
		return true;
	}
	
	
	
	
}
