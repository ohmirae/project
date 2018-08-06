package com.bit.shop01.cart;

import java.util.HashMap;
import java.util.List;

import com.bit.shop01.cart.model.entity.CartVo;

public interface CartService {
	
//	public int test();
	
	public int insert(CartVo vo);

	public int countCart(HashMap<String, Object> params);
//	public int countCart(int productNum, String memId);

	public int editCart(CartVo vo);

	public void updateCart(CartVo vo);
	
	public List<CartVo> listCart(String memId);

	public int sumPrice(String memId);

	public void delete(int cartNum);
	
	public String cartPro(CartVo vo);

	
}
