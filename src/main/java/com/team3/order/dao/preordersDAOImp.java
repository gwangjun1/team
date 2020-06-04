package com.team3.order.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team3.order.vo.preordersVO;

@Repository
public class preordersDAOImp implements preordersDAO {
	
	@Inject
	SqlSession sqlSession;
	
	private static final String Namespace = "com.team3.mapper.orderMapper";
	
	@Override
	public void insertorder(preordersVO ordersvo) {
		sqlSession.insert(Namespace + ".insertpre" , ordersvo);

	}

	@Override
	public List<preordersVO> listpre(String mb_id) {
		return sqlSession.selectList(Namespace + ".selectPre", mb_id);
	}

	
	@Override
	public int preSumMoney(String mb_id) {
		
		return sqlSession.selectOne(Namespace + ".preSumMoney", mb_id);
	}

	@Override
	public int countpre(String mb_id) {
//		Map<String, Object> premap = new HashMap<String, Object>();
//		premap.put("mb_id", mb_id);
//		premap.put("cart_id", cart_id);
		
		return sqlSession.selectOne(Namespace + ".countpre" , mb_id);
		
	}


	
	

	

}
