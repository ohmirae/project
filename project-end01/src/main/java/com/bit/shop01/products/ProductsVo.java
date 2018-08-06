package com.bit.shop01.products;

public class ProductsVo {

	private int productNum, price;
	private String productName, procd, explan, product_url;
    private int attachFileNum;

	public ProductsVo() {
	}

	public static final String ENTER = System.getProperty("line.separator");

	public String getHtmlExplan() {
		if (explan != null) {
			return explan.replaceAll(ENTER, "<br />");
		}
		return null;
	}
	
	
	 public int getAttachFileNum() {
		  return attachFileNum;
		 }
		 public void setAttachFileNum(int attachFileNum) {
		  this.attachFileNum = attachFileNum;
		 }
	

	public ProductsVo(int productNum, int price, String productName, String procd, String explan, String product_url) {
		super();
		this.productNum = productNum;
		this.price = price;
		this.productName = productName;
		this.procd = procd;
		this.explan = explan;
		this.product_url = product_url;
	}

	public int getProductNum() {
		return productNum;
	}

	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getProcd() {
		return procd;
	}

	public void setProcd(String procd) {
		this.procd = procd;
	}

	public String getExplan() {
		return explan;
	}

	public void setExplan(String explan) {
		this.explan = explan;
	}

	public String getProduct_url() {
		return product_url;
	}

	public void setProduct_url(String product_url) {
		this.product_url = product_url;
	}

	@Override
	public String toString() {
		return "productsVo [productNum=" + productNum + ", price=" + price + ", productName=" + productName + ", procd="
				+ procd + ", explan=" + explan + ", product_url=" + product_url + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((explan == null) ? 0 : explan.hashCode());
		result = prime * result + price;
		result = prime * result + ((procd == null) ? 0 : procd.hashCode());
		result = prime * result + ((productName == null) ? 0 : productName.hashCode());
		result = prime * result + productNum;
		result = prime * result + ((product_url == null) ? 0 : product_url.hashCode());
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
		ProductsVo other = (ProductsVo) obj;
		if (explan == null) {
			if (other.explan != null)
				return false;
		} else if (!explan.equals(other.explan))
			return false;
		if (price != other.price)
			return false;
		if (procd == null) {
			if (other.procd != null)
				return false;
		} else if (!procd.equals(other.procd))
			return false;
		if (productName == null) {
			if (other.productName != null)
				return false;
		} else if (!productName.equals(other.productName))
			return false;
		if (productNum != other.productNum)
			return false;
		if (product_url == null) {
			if (other.product_url != null)
				return false;
		} else if (!product_url.equals(other.product_url))
			return false;
		return true;
	}

	// CREATE TABLE product(
	// productNum NUMBER,
	// productName VARCHAR2(60),
	// procd varchar2(60),
	// explan VARCHAR2(500),
	// price NUMBER DEFAULT 0,
	// product_url varchar2(500),
	// CONSTRAINT PK_PRO2 PRIMARY KEY(productNum),
	// CONSTRAINT FK_PRO2 FOREIGN KEY(procd) REFERENCES products(procd)
	// );

}
