package com.team3.admin.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.team3.admin.vo.AdminVO;
import com.team3.member.vo.MemberVO;
import com.team3.product.vo.productVO;

@Repository
public class AdminDAOImp implements AdminDAO{
	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace="com.team3.mapper.adminMapper";
	
	@Override
	public String AdminLogin(AdminVO avo) throws Exception {
		String am_id=sqlSession.selectOne(Namespace+".loginAdmin",avo);
		return am_id;
	}
	
	@Override
	public int todayMember(Map map) throws Exception {
		int todayMember=sqlSession.selectOne(Namespace+".todayMember",map);
		return todayMember;
	}
	
	@Override
	public List<MemberVO> MemberList(Map map) throws Exception {
		return sqlSession.selectList(Namespace+".selectMember",map);
	}
	
	@Override
	public List<MemberVO> SellerList(Map map) throws Exception {
		return sqlSession.selectList(Namespace+".sellerList", map);
	}

	@Override
	public List<productVO> ProductList(Map map) throws Exception {
		return sqlSession.selectList(Namespace+".productList",map);
	}	

	@Override
	public List<productVO> CategoryList(Map map) throws Exception {
		return sqlSession.selectList(Namespace+".categoryList",map);
	}
	
	@Override
	public List<productVO> SellList(Map map) throws Exception {
		return sqlSession.selectList(Namespace+".sellList",map);
	}
	
	@Override
	public int MemberCount() throws Exception {
		return sqlSession.selectOne(Namespace+".memberCount");
	}
	
	@Override
	public int ProductCount() throws Exception {
		return sqlSession.selectOne(Namespace+".productCount");
	}
	

}