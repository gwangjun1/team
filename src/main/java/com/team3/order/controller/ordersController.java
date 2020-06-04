package com.team3.order.controller;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team3.cart.service.cartService;
import com.team3.member.service.MemberService;
import com.team3.member.vo.MemberVO;
import com.team3.order.service.orderService;
import com.team3.order.service.preordersService;
import com.team3.order.vo.ordersVO;
import com.team3.order.vo.preordersVO;

@Controller
@RequestMapping("/orders/*")
public class ordersController {
	
	@Inject
	preordersService preordersservice;
	
	@Inject
	MemberService ms;
	
	@Inject
	orderService orderservice;

	@Inject
	cartService cs;

	@RequestMapping(value="orderinsert" , method = RequestMethod.POST)
	public String orderinsert(HttpSession session ,
			@RequestParam(value="chbox[]") List<Integer> chbox ,
			@ModelAttribute ordersVO odvo) throws ParseException {
		
		
		 Calendar cal = Calendar.getInstance();
		 int year = cal.get(Calendar.YEAR);
		 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		 String subNum = "";
		 
		 for(int i = 1; i <= 6; i ++) {
		  subNum += (int)(Math.random() * 10);
		 }
		 
		 String od_num = ymd + "_" + subNum;
		 
		 odvo.setOd_num(od_num);
		 
		String mb_id = (String)session.getAttribute("mb_id");
		odvo.setMb_id(mb_id);
		int pd_idx = 0;
		
		
		
		if(mb_id != null) {

			for(int i : chbox) {
				pd_idx = i;
				odvo.setPd_idx(pd_idx);
				
				
				orderservice.insertorder(odvo);
				cs.deleteAll(mb_id);
			}
			return "redirect:/orders/orderlist";
		}else {
			return "redirect:/member/login.do";
			
		}

	}
		
	@RequestMapping(value="orderinsert" , method = RequestMethod.GET)
	public String orderinsertget(HttpSession session ,
			@RequestParam(value="chbox[]") List<Integer> chbox ,
			@ModelAttribute ordersVO odvo) {

		 Calendar cal = Calendar.getInstance();
		 int year = cal.get(Calendar.YEAR);
		 String ym = year + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
		 String ymd = ym +  new DecimalFormat("00").format(cal.get(Calendar.DATE));
		 String subNum = "";
		 
		 for(int i = 1; i <= 6; i ++) {
		  subNum += (int)(Math.random() * 10);
		 }
		 
		 String od_num = ymd + "_" + subNum;
		 
		 odvo.setOd_num(od_num);
		 
		String mb_id = (String)session.getAttribute("mb_id");
		odvo.setMb_id(mb_id);
		int pd_idx = 0;

		if(mb_id != null) {

			for(int i : chbox) {
				pd_idx = i;
				odvo.setPd_idx(pd_idx);
				
				
				orderservice.insertorder(odvo);
			}
			return "redirect:/orders/orderlist";
		}else {
			return "redirect:/member/login.do";
			
		}

	}
	
	@RequestMapping("/orderlist")
	public void orderlist(HttpSession session , @ModelAttribute ordersVO odvo, Model model) throws Exception {
		
		String mb_id = (String)session.getAttribute("mb_id");
//		String od_num = (String)session.getAttribute("od_num");
		odvo.setMb_id(mb_id);
//		ordersVO odvo1 = orderservice.
//		odvo.setOd_num(od_num);
				
		List<ordersVO> odlist1 = orderservice.listorder(odvo);
		
		model.addAttribute("odlist", odlist1);
		System.out.println(odvo.getOd_num());
	}
	
	@RequestMapping(value="orderDetailList", method = RequestMethod.GET)
	public void orderDetailList(HttpSession session ,
			@RequestParam("od_num") String od_num,
			@ModelAttribute ordersVO odvo ,Model model) {
		String mb_id = (String)session.getAttribute("mb_id");
		odvo.setMb_id(mb_id);

		odvo.setOd_num(od_num);
			
		
		List<ordersVO> detail = orderservice.orderdetail(odvo);
		model.addAttribute("detail" , detail);
//		String od_num = (String)session.getAttribute("od_num");
//		odvo.setOd_num(od_num);
		System.out.println(odvo.getOd_num());
		System.out.println(odvo.getMb_id());
//		odvo.setOd_num(od_num);
		
//		return "orders/detaillist";
	}
	
	@RequestMapping(value="preinsert" , method= RequestMethod.POST)
	public String insertpreorder(HttpSession session,
			@RequestParam(value= "chbox[]") List<String> chArr , 
			@ModelAttribute preordersVO ordersvo) throws Exception{
		
		String mb_id = (String)session.getAttribute("mb_id");
//		int count = odservice.countpre(mb_id);
	
		int cart_idx = 0;
		int countpre = preordersservice.countpre(mb_id);
//		System.out.println("mb_id : " + mb_id);
//		System.out.println("preorder 갯수 :" + count);
		
		if(countpre == 0) {

			ordersvo.setMb_id(mb_id);
//			odcomvo.setMb_id(mb_id);
			for(String i : chArr) {
				cart_idx = Integer.parseInt(i);
				ordersvo.setCart_idx(cart_idx);
//				odcomvo.setCart_idx(cart_idx);
				
				System.out.println("cart_id : " + cart_idx);
//				odcomservice.insertorder(odcomvo);
				preordersservice.insertorder(ordersvo);
			}
			return "redirect:/orders/prelist";
		}else {
			
			
			return "redirect:/orders/prelist";
			
		}
		
	

		

	}

	@RequestMapping("prelist")
	public ModelAndView listpreorder(HttpSession session , ModelAndView mav) throws Exception {
		
		String mb_id = (String)session.getAttribute("mb_id");
		MemberVO mvo = new MemberVO();
		mvo.setMb_id(mb_id);
		
		MemberVO vo1 = ms.MemberInfo(mvo);
//		mbvo.setMb_id(mb_id);
		
//		MemVO mbvo2 = odservice.odmemInfo(mbvo);
//		mav.addObject("memv" , mbvo2);
		Map<String, Object> map = new HashMap();
		int countpre = preordersservice.countpre(mb_id);
		
			if(mb_id != null) {
				
	
				List<preordersVO> odlist = preordersservice.listpre(mb_id);
	
				int preSumMoney = preordersservice.preSumMoney(mb_id);
	
				int delivery = preSumMoney >= 30000 ? 0 : 2500;
				//장바구니 금액
				map.put("preSumMoney", preSumMoney);
				//배송비
				map.put("delivery" , delivery);
				//주문할 총금액
				map.put("allsum" , preSumMoney + delivery);
				//장바구니 리스트
				map.put("list", odlist);
				//장바구니 상품갯수
				map.put("count" , odlist.size());
				
				
				mav.setViewName("/orders/preorder");
				mav.addObject("map" , map);
				mav.addObject("mem" , vo1);
				
				return mav;
			}else {
				return new ModelAndView("redirect:/member/login" , "" , null);
			}
	}
	
	
}














