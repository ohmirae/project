package com.bit.shop01.cart;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bit.mybatis.CartMapper;
import com.bit.shop01.cart.model.entity.CartVo;

@Service
public class CartServiceImpl implements CartService {

//	cartMapperImpl dao = new cartMapperImpl();
//	cartMapper cartMapper;
	
	@Autowired
	CartMapper cartMapper;
	
	public CartServiceImpl() {
		// TODO Auto-generated constructor stub
	}
	
	public int insert(CartVo vo) {
		return cartMapper.insert(vo);
	}
	
//	public int test() {
//		return cartMapper.test();
//	}

	public int countCart(HashMap<String, Object> params) {
//		public int countCart(int productNum, String memId) {
		
//		HashMap<String, Object> params = new HashMap<String, Object>();
//		
//		params.put("productNum", productNum);
//		params.put("memId", memId);
		
		
		return cartMapper.countCart(params);
	}

	public int editCart(CartVo vo) {
		return cartMapper.editCart(vo);
	}

	public List<CartVo> listCart(String memId) {
		System.out.println("list cart (service) : " + memId);
		System.out.println("list cart (service) : " + cartMapper.listCart(memId));
		return cartMapper.listCart(memId);
	}

	public int sumPrice(String memId) {
		return cartMapper.sumPrice(memId);
	}

	public void delete(int cartNum) {
		cartMapper.delete(cartNum);
	}

	public void updateCart(CartVo vo) {
		cartMapper.updateCart(vo);
	}

	@Override
	public String cartPro(CartVo vo) {
		return cartPro(vo);
	}
	

	
}
