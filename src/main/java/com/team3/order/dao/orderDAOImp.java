package com.team3.order.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team3.order.vo.ordersVO;

@Repository
public class orderDAOImp implements orderDAO {
	
	@Inject
	SqlSession sqlSession;
	
	private static final String Namespace = "com.team3.mapper.orderMapper";
	
	@Override
	public void insertorder(ordersVO odvo) {
		sqlSession.insert(Namespace + ".insertorder" , odvo);

	}

	@Override
	public List<ordersVO> listorder(ordersVO odvo) {
		return sqlSession.selectList(Namespace + ".selectorder", odvo);
	}

	@Override
	public List<ordersVO> orderdetail(ordersVO odvo) {
		return sqlSession.selectList(Namespace + ".selectorderdetail", odvo);
	}

	

	
	

	

}
