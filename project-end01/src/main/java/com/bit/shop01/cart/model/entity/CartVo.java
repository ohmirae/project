package com.bit.shop01.cart.model.entity;

public class CartVo {

	private int basketNum;
	private String memId;
	private int quantity;
	private String productName;
	private int productNum;
	private String product_url;
	private int price;
	private int sumPrice;
	private String colors;
	private String sizename;
	
	public CartVo() {
		// TODO Auto-generated constructor stub
	}

	public CartVo(int basketNum, String memId, int quantity, String productName, int productNum, String product_url,
			int price, int sumPrice, String colors, String sizename) {
		super();
		this.basketNum = basketNum;
		this.memId = memId;
		this.quantity = quantity;
		this.productName = productName;
		this.productNum = productNum;
		this.product_url = product_url;
		this.price = price;
		this.sumPrice = sumPrice;
		this.colors = colors;
		this.sizename = sizename;
	}

	@Override
	public String toString() {
		return "CartVo [basketNum=" + basketNum + ", memId=" + memId + ", quantity=" + quantity + ", productName="
				+ productName + ", productNum=" + productNum + ", product_url=" + product_url + ", price=" + price
				+ ", sumPrice=" + sumPrice + ", colors=" + colors + ", sizename=" + sizename + "]";
	}

	public int getBasketNum() {
		return basketNum;
	}

	public void setBasketNum(int basketNum) {
		this.basketNum = basketNum;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getProductNum() {
		return productNum;
	}

	public void setProductNum(int productNum) {
		this.productNum = productNum;
	}

	public String getProduct_url() {
		return product_url;
	}

	public void setProduct_url(String product_url) {
		this.product_url = product_url;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getSumPrice() {
		return sumPrice;
	}

	public void setSumPrice(int sumPrice) {
		this.sumPrice = sumPrice;
	}

	public String getColors() {
		return colors;
	}

	public void setColors(String colors) {
		this.colors = colors;
	}

	public String getSizename() {
		return sizename;
	}

	public void setSizename(String sizename) {
		this.sizename = sizename;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + basketNum;
		result = prime * result + ((colors == null) ? 0 : colors.hashCode());
		result = prime * result + ((memId == null) ? 0 : memId.hashCode());
		result = prime * result + price;
		result = prime * result + ((productName == null) ? 0 : productName.hashCode());
		result = prime * result + productNum;
		result = prime * result + ((product_url == null) ? 0 : product_url.hashCode());
		result = prime * result + quantity;
		result = prime * result + ((sizename == null) ? 0 : sizename.hashCode());
		result = prime * result + sumPrice;
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
		CartVo other = (CartVo) obj;
		if (basketNum != other.basketNum)
			return false;
		if (colors == null) {
			if (other.colors != null)
				return false;
		} else if (!colors.equals(other.colors))
			return false;
		if (memId == null) {
			if (other.memId != null)
				return false;
		} else if (!memId.equals(other.memId))
			return false;
		if (price != other.price)
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
		if (quantity != other.quantity)
			return false;
		if (sizename == null) {
			if (other.sizename != null)
				return false;
		} else if (!sizename.equals(other.sizename))
			return false;
		if (sumPrice != other.sumPrice)
			return false;
		return true;
	}
	
	
	
}
