package com.team3.cart.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team3.cart.vo.cartDTO;

@Repository
public class cartDAOImp implements cartDAO{
	
	
	@Inject
	SqlSession sqlSession;
	
	private static final String Namespace = "com.team3.mapper.cartMapper";
	
	//장바구니 추가
	@Override
	public void insert(cartDTO cartdto) {
		sqlSession.insert(Namespace + ".insertcart" , cartdto);
	}
	
	//장바구니 목록
	@Override
	public List<cartDTO> listcart(String mb_id) {
		return sqlSession.selectList(Namespace + ".listCart" , mb_id);
	}
	
	//장바구니 선택삭제
	@Override
	public void delete(cartDTO cartdto) {
		sqlSession.delete(Namespace + ".deletecart" , cartdto);
	}

	//장바구니 전체삭제
	@Override
	public void deleteAll(String mb_id) {
		sqlSession.delete(Namespace + ".deleteAll" , mb_id);
		
	}
	

	//장바구니 금액
	@Override
	public int cartmoney(String mb_id) {
		return sqlSession.selectOne(Namespace + ".cartmoney" , mb_id);
	}

	//장바구니 동일 상품 확인
	@Override
	public int countCart(String mb_id, int pd_idx) {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pd_idx", pd_idx);
		map.put("mb_id", mb_id);
		
		return sqlSession.selectOne(Namespace + ".countcart" , map);
	}

	//장바구니 수량변경
	@Override
	public void updateCart(cartDTO cartdto) {
		sqlSession.update(Namespace + ".update" , cartdto);
		
	}

	//장바구니 수정
	@Override
	public void modifyCart(cartDTO cartdto) {
		sqlSession.update(Namespace + ".modify" , cartdto);
		
	}
	
}
