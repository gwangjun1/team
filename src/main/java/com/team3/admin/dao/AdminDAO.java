package com.team3.admin.dao;

import java.util.List;
import java.util.Map;

import com.team3.admin.vo.AdminVO;
import com.team3.member.vo.MemberVO;
import com.team3.product.vo.productVO;

public interface AdminDAO {
	public List<MemberVO> MemberList(Map map)throws Exception;
	public List<MemberVO> SellerList(Map map)throws Exception;
	public String AdminLogin(AdminVO avo) throws Exception;
	public List<productVO> ProductList(Map map)throws Exception;
	public List<productVO> CategoryList(Map map)throws Exception;
	public List<productVO> SellList(Map map)throws Exception;
	public int MemberCount()throws Exception;
	public int ProductCount()throws Exception ;
	public int todayMember(Map map) throws Exception;
}
