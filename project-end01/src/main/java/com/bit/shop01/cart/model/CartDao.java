package com.bit.shop01.cart.model;

import java.util.List;

import com.bit.shop01.cart.model.entity.CartVo;

public interface CartDao {

	public int insert(CartVo vo);

	public int countCart(int productNum, String memId);

	public int editCart(CartVo vo);

//	public ArrayList<CartVo> listCart(String memId);
	public List<CartVo> listCart(String memId);

	public int sumPrice(String memId);

	public void delete(int cartNum);

	public void updateCart(CartVo vo);

}
