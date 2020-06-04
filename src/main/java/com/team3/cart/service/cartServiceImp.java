package com.team3.cart.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.team3.cart.dao.cartDAO;
import com.team3.cart.vo.cartDTO;

@Service
public class cartServiceImp implements cartService{

	
	@Inject
	cartDAO cartdao;
	
	//장바구니 추가
	@Override
	public void insert(cartDTO cartdto) {
		cartdao.insert(cartdto);
	}

	//장바구니 목록
	@Override
	public List<cartDTO> listCart(String mb_id) {
		
		return cartdao.listcart(mb_id);
	}
	
	//장바구니 삭제
	@Override
	public void delete(cartDTO cartdto) {
		cartdao.delete(cartdto);
	}
	
	


	//장바구니 전체삭제
	@Override
	public void deleteAll(String mb_id) {
		cartdao.deleteAll(mb_id);
	}
	
	//장바구니 금액
	@Override
	public int cartmoney(String mb_id) {
		return cartdao.cartmoney(mb_id);
	}
	
	
	//장바구니 갯수
	@Override
	public int countCart(String mb_id, int pd_idx) {
		return cartdao.countCart(mb_id, pd_idx);
	}
	
	//장바구니 수량 변경
	@Override
	public void updateCart(cartDTO cartdto) {
		cartdao.updateCart(cartdto);
	}

	//장바구니 수정
	@Override
	public void modifyCart(cartDTO cartdto) {
		cartdao.modifyCart(cartdto);
	}
	
	
}
