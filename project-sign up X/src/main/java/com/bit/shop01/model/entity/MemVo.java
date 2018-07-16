package com.bit.shop01.model.entity;

public class MemVo {
	
	private String memId, memName, memPassword, email, address, hp;
	
  public MemVo() {}

public MemVo(String memId, String memName, String memPassword, String email, String address, String hp) {
	super();
	this.memId = memId;
	this.memName = memName;
	this.memPassword = memPassword;
	this.email = email;
	this.address = address;
	this.hp = hp;
}



public String getMemId() {
	return memId;
}

public void setMemId(String memId) {
	this.memId = memId;
}

public String getMemName() {
	return memName;
}

public void setMemName(String memName) {
	this.memName = memName;
}

public String getMemPassword() {
	return memPassword;
}

public void setMemPassword(String memPassword) {
	this.memPassword = memPassword;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getHp() {
	return hp;
}

public void setHp(String hp) {
	this.hp = hp;
}


}
