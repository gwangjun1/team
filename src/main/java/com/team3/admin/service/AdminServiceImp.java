package com.team3.admin.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.team3.admin.dao.AdminDAO;
import com.team3.admin.vo.AdminVO;
import com.team3.member.vo.MemberVO;
import com.team3.product.vo.productVO;

@Service
public class AdminServiceImp implements AdminService {
	@Inject
	private AdminDAO adao;
	
	@Override
	public boolean AdminLogin(AdminVO avo,HttpSession session) throws Exception {
		boolean result=false;
		String adminID = adao.AdminLogin(avo);
		
		if (adminID != null) {
			avo.setAm_id(adminID);
			session.setAttribute("mb_id", adminID);
			session.setAttribute("mb_name", "관리자");
			session.setAttribute("mb_seller", 3);
			
			result=true;
		}
		return result;
	}
	
	@Override
	public int todayMember(Map map) throws Exception {
		int todayMember=adao.todayMember(map);
		return todayMember;
	}
	
	@Override
	public List<MemberVO> MemberList(Map map) throws Exception {
		return adao.MemberList(map);
		
	}
	
	@Override
	public List<MemberVO> SellerList(Map map) throws Exception {
		return adao.SellerList(map);
	}

	@Override
	public List<productVO> ProductList(Map map) throws Exception {
		return adao.ProductList(map);
	}

	@Override
	public List<productVO> CategoryList(Map map) throws Exception {
		return adao.CategoryList(map);
	}
	
	@Override
	public List<productVO> SellList(Map map) throws Exception {
		return adao.SellList(map);
	}
	
	@Override
	public int MemberCount() throws Exception {
		return adao.MemberCount();
	}
	
	@Override
	public int ProductCount() throws Exception {
		return adao.ProductCount();
	}
	
	
}
