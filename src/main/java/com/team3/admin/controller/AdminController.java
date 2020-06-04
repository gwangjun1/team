package com.team3.admin.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.team3.admin.service.AdminService;
import com.team3.member.vo.MemberVO;
import com.team3.product.service.productService;
import com.team3.product.vo.PageCriteria;
import com.team3.product.vo.PagingMaker;
import com.team3.product.vo.productVO;

@Controller
public class AdminController {
	@Inject
	private AdminService AdminService;
	
	@Inject
	private productService productService;

	@RequestMapping("/admin/index.do")
	public String index(Model model) throws Exception{
		// 오늘 날짜 yyyy-mm-dd
				SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
				Date today = new Date();
				String mb_date = date.format(today);
				Map<String, Object>map = new HashMap<String, Object>();
				map.put("mb_date", mb_date);
				// 신규 가입자수
				int todayMember = AdminService.todayMember(map);
				model.addAttribute("todayMember", todayMember);
		return "admin/index";
	}
	
	@RequestMapping("/admin/memberList.do")
	public String memberList(MemberVO mvo,Model model, PageCriteria pCri) throws Exception {
		List<MemberVO> list = null;
		int page = pCri.getPage();
//		System.out.println("seller"+mvo.getMb_seller());
		pCri = new PageCriteria(page,25);
		Map<String,Object> map = new HashMap<String,Object>();
//		System.out.println("NumPerPage : "+pCri.getNumPerPage());
		map.put("mb_seller", mvo.getMb_seller());
		map.put("startPage", pCri.getStartPage());
		map.put("numPerPage", pCri.getNumPerPage());
		
		if (mvo.getMb_seller()==1 || mvo.getMb_seller()==2) {
			list = AdminService.SellerList(map);
		}else {
			list = AdminService.MemberList(map);
		}
		
		PagingMaker pm = new PagingMaker();
		pm.setCri(pCri);
		pm.setTotalData(AdminService.MemberCount());
		model.addAttribute("pagingMaker", pm);
		model.addAttribute("list",list);
		
		return "admin/memberList";
	}
	
	@RequestMapping("/admin/productList.do")
	public String productList(productVO pvo,Model model,PageCriteria pCri) throws Exception {
		List<productVO> list = null;
		int page=pCri.getPage();
		pCri = new PageCriteria(page,25);
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("pd_category", pvo.getPd_category());
		map.put("startPage", pCri.getStartPage());
		map.put("numPerPage", pCri.getNumPerPage());
		
		
		if (pvo.getPd_category()==null) {
			list=AdminService.ProductList(map);
		}else {
			list=AdminService.CategoryList(map);
		}
		
		model.addAttribute("list",list);
		
		PagingMaker pm = new PagingMaker();
		pm.setCri(pCri);
		pm.setTotalData(AdminService.ProductCount());
		model.addAttribute("pagingMaker", pm);
		
		return "admin/productList";
	}
	
	@RequestMapping("/admin/sellerList.do")
	public String sellerList(productVO pvo, MemberVO mvo,Model model,HttpServletRequest request,PageCriteria pCri) throws Exception {
		List<productVO> list = null;	
		String mb_id=mvo.getMb_id();
		int page=pCri.getPage();
		pCri = new PageCriteria(page,25);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("mb_id", mb_id);
		map.put("pd_category", pvo.getPd_category());
		map.put("startPage", pCri.getStartPage());
		map.put("numPerPage", pCri.getNumPerPage());
		
		System.out.println(pvo.getPd_category());
		if (pvo.getPd_category()==null) {
			list=AdminService.SellList(map);
		}else {
			list=AdminService.CategoryList(map);
		}
		
		model.addAttribute("list",list);
		model.addAttribute("seller_name",mb_id);
		PagingMaker pm = new PagingMaker();
		pm.setCri(pCri);
		pm.setTotalData(AdminService.ProductCount());
		model.addAttribute("pagingMaker", pm);

		return "admin/sellerList";
	}
	
	@RequestMapping("/admin/detailCustomer.do")
	public String detailCustomer(MemberVO mvo,Model model,HttpServletRequest request,PageCriteria pCri) {
		
		return "admin/detailCustomer";
	}
}
