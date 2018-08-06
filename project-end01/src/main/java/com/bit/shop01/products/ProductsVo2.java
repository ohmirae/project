package com.bit.shop01.products;

public class ProductsVo2 {

	private String procd, pronm;
	
	public ProductsVo2() {}

	@Override
	public String toString() {
		return "productsVo2 [procd=" + procd + ", pronm=" + pronm + "]";
	}

	public String getProcd() {
		return procd;
	}

	public void setProcd(String procd) {
		this.procd = procd;
	}

	public String getPronm() {
		return pronm;
	}

	public void setPronm(String pronm) {
		this.pronm = pronm;
	}
	
	
	
	
//	create table products (
//		    procd varchar2(60),
//		    pronm varchar2(60) NOT NULL,
//		    CONSTRAINT PK_PRO PRIMARY KEY(procd)
//		);
//	
	
}
