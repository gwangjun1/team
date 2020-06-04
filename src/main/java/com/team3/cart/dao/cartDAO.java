package com.team3.cart.dao;

import java.util.List;

import com.team3.cart.vo.cartDTO;

public interface cartDAO {
	//장바구니 추가
	void insert(cartDTO cartdto);
	//장바구니 목록
	List<cartDTO> listcart(String mb_id);
	//장바구니 선택삭제
	void delete(cartDTO cartdto);
	//장바구니 전체삭제
	void deleteAll(String mb_id);

	//장바구니 금액
	int cartmoney(String mb_id);
	int countCart(String mb_id , int pd_idx);
	void updateCart(cartDTO cartdto);
	void modifyCart(cartDTO cartdto);
}
