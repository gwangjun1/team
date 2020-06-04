package com.team3.cart.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.team3.cart.service.cartService;
import com.team3.cart.vo.cartDTO;
import com.team3.member.service.MemberService;
import com.team3.order.service.preordersService;
import com.team3.order.vo.preordersVO;

@Controller
@RequestMapping("/cart/*")
public class cartController {
	
	@Inject
	cartService cartservice;
	
	@Inject
	MemberService memservice;
	
	@Inject
	preordersService odservice;
	
	@RequestMapping("insert")
	public String insertcart
		(@ModelAttribute cartDTO cartdto ,	HttpSession session) {
		String mb_id = (String)session.getAttribute("mb_id");
		cartdto.setMb_id(mb_id);
		System.out.println(cartdto.getPrice());
		int count = cartservice.countCart(mb_id, cartdto.getPd_idx());
//		if(count==0 ? cartservice.udateCart(cartdto) : cartservice.insert(cartdto))
		
		if(mb_id == null) {
			return "redirect:/member/login";
		}
		
		if(count == 0) {
			cartservice.insert(cartdto);
		}else {
			cartservice.updateCart(cartdto);
		}
		
		
		return "redirect:/cart/list";
	}
	
	@RequestMapping("list")
	public ModelAndView listcart(HttpSession session , 
			ModelAndView mav, @ModelAttribute cartDTO cartdto) {
		
		String mb_id = (String)session.getAttribute("mb_id");
//		int pd_idx = Integer.parseInt((String)session.getAttribute("pd_idx"));
		
		Map<String, Object> map = new HashMap();
		int count = cartservice.countCart(mb_id, cartdto.getPd_idx());
		System.out.println("장바구니 동일 품목 갯수 : " + count);
		if(mb_id != null) {
			//장바구니 정보 리스트
			List<cartDTO> list = cartservice.listCart(mb_id);
			//장바구니 총금액
			int cartmoney = cartservice.cartmoney(mb_id);
			System.out.println("장바구니 금액 : " + cartmoney);
			//배송비
			
			int delivery = (cartmoney > 30000 ) ? 0 : 2500;
			
			System.out.println("배송비: " +delivery);
//			map.put("count", count);
			//장바구니 금액
			map.put("cartmoney", cartmoney);
			//배송비
			map.put("delivery" , delivery);
			//주문할 총금액
			map.put("allsum" , cartmoney + delivery);
			//장바구니 리스트
			map.put("list", list);
			//장바구니 상품갯수  bn
			map.put("count" , list.size());
			
			
			mav.setViewName("/cart/cart");
			mav.addObject("map" , map);
			
			return mav;
		}else {
			return new ModelAndView("redirect:/member/login.do" , "" , null);
		}
	}
	

	@RequestMapping(value="/delete" , method = RequestMethod.POST)
	public String deleteCart(HttpSession session,
			@RequestParam(value= "chbox[]") List<String> chArr , cartDTO cartdto) throws Exception{
		
		String mb_id = (String)session.getAttribute("mb_id");
		
//		int result = 0;
		int cart_idx = 0;
		
		if(mb_id != null) {
			cartdto.setMb_id(mb_id);
			
			for(String i : chArr) {
				cart_idx = Integer.parseInt(i);
				cartdto.setCart_idx(cart_idx);
				cartservice.delete(cartdto);
				
			}

		}

		return "redirect:/cart/list";
	}
	
//	@RequestMapping("delete")
//	public String deletecart(@RequestParam int cart_id) {
//		cartservice.delete(cart_id);
//		return "redirect:/cart/list";
//	}
//	
//	@RequestMapping("deleteAll")
//	public String deleteAllcart(HttpSession session , cartDTO cartdto) {
//		String mb_id = (String)session.getAttribute("mb_id");
//		cartdto.setMb_id(mb_id);
//		cartservice.deleteAll(cartdto.getMb_id());
//		return "redirect:/cart/list";
//	}
	
	@RequestMapping("update")
	public String update(
			@RequestParam int[] amount , @RequestParam int[] pd_idx,HttpSession session) {
		String mb_id =(String)session.getAttribute("mb_id");
		
		for(int i = 0; i <pd_idx.length; i++) {
			cartDTO cartdto = new cartDTO();
			cartdto.setMb_id(mb_id);
			cartdto.setAmount(amount[i]);
			cartdto.setPd_idx(pd_idx[i]);
			cartservice.modifyCart(cartdto);
		}
		
		
		return "redirect:/cart/list";
	}

			
		
			
			
			
}


































