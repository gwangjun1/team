package com.team3.admin.service;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import com.team3.admin.vo.AdminVO;
import com.team3.member.vo.MemberVO;
import com.team3.product.vo.productVO;

public interface AdminService {
	public List<MemberVO> MemberList(Map map)throws Exception;
	public List<MemberVO> SellerList(Map map)throws Exception;
	public boolean AdminLogin(AdminVO avo,HttpSession session) throws Exception;
	public List<productVO> ProductList(Map map)throws Exception;
	public List<productVO> CategoryList(Map map)throws Exception;
	public List<productVO> SellList(Map map)throws Exception;
	public int MemberCount()throws Exception;
	int ProductCount() throws Exception;
	public int todayMember(Map map) throws Exception;
}
