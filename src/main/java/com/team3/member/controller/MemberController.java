package com.team3.member.controller;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.team3.admin.service.AdminService;
import com.team3.admin.vo.AdminVO;
import com.team3.member.service.MemberService;
import com.team3.member.vo.MemberVO;

@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);

	@Inject
	private MemberService memberservice;
	
	@Inject
	private JavaMailSender mailSender;
	
	@Inject
	private AdminService AdminSerivce;
	
	// 1. 회원가입 페이지
	@RequestMapping(value = "/member/join.do")
	public String memberJoin() {
		return "/member/join";
	}
	
	// 1_2. 회원가입 기능
	@RequestMapping(value = "/member/join.do", method = RequestMethod.POST)
	public String memberJoin(MemberVO mvo) throws Exception {
		memberservice.MemberJoin(mvo); // MemberDAOImp
		return "redirect:/";
	}

	// 2. 회원 로그인 페이지
	@RequestMapping(value = "/member/login.do", method = RequestMethod.GET)
	public String userLogin() {
		return "/member/login";
	}

	// 2_1.회원 로그인 처리
	@RequestMapping(value = "/member/login.do", method = RequestMethod.POST)
	public String Login(MemberVO mvo, AdminVO avo, HttpSession session,  Model model) throws Exception {
		String page=null;
		
		avo.setAm_id(mvo.getMb_id());
		avo.setAm_pw(mvo.getMb_pw());
		
		boolean result = memberservice.Login(mvo, session);
		boolean resultAdmin = AdminSerivce.AdminLogin(avo, session);
		System.out.println("controller"+result);
		if (resultAdmin) { // 관리자 로그인 후 메인 이동
			page="redirect:/";
		}else {
			if (result) { // 관리자 아닐 시 회원 로그인 후 메인 이동
				page="redirect:/";
			}else {
				// 로그인 실패시 실패 메시지 전달
				page="/member/login";
				model.addAttribute("msg", "loginCancel");
			}
		}
		return page;
	}

	// 3. 회원 상세정보 조회
	@RequestMapping("/member/info.do")
	public String info() throws Exception {
		return "member/info";
	}

	//3_1. 회원 정보 페이지 이동 및 정보 출력
	@RequestMapping(value="/member/modify.do", method= {RequestMethod.POST,RequestMethod.GET})
	public String modify(HttpSession session, MemberVO mvo, Model model) throws Exception {
		String page=null;
		mvo.setMb_id((String)session.getAttribute("mb_id"));
		int seller=memberservice.sellerCheck(mvo);
		
		boolean result=memberservice.MemberCheck(mvo);
		if (result) {
			MemberVO mvo2 = memberservice.MemberInfo(mvo);
			model.addAttribute("memInfo", mvo2);
			model.addAttribute("seller",seller);
			page="member/modify";
		}else {
			page="member/info";
			model.addAttribute("msg","loginCancel");
		}
		return page;
	}
	
	// 3_2. 회원 정보 수정 후 정보 출력
	@RequestMapping(value="/member/modifyPro.do", method={RequestMethod.POST,RequestMethod.GET})
	public String modify(MemberVO mvo, Model model,HttpSession session) throws Exception {
		String page=null;
		mvo.setMb_id((String)session.getAttribute("mb_id"));
		int seller=memberservice.sellerCheck(mvo);
		
		memberservice.MemberModify(mvo); // 회원 정보 수정 서비스
		
		MemberVO mvo2 = memberservice.MemberInfo(mvo); // 수정한 회원 정보 가져오기
		model.addAttribute("memInfo", mvo2);
		model.addAttribute("seller",seller);
		page="member/modify";
		
		return page;
	}
	
	// 3_3.비밀번호 변경 페이지 이동
	@RequestMapping("/member/modifyPw.do")
	public String modifyPw(HttpSession session,MemberVO mvo,Model model) throws Exception {
		mvo.setMb_id((String)session.getAttribute("mb_id"));
		int seller=memberservice.sellerCheck(mvo);
		model.addAttribute("seller",seller);
		
		return "member/modifyPw";
	}
	
	//	3_4. 비밀번호 변경 - 성공 시 로그아웃 및 로그인 페이지 이동 / 실패 시 이전 페이지 이동 및 msg전달
	@RequestMapping(value="/member/modifyPw.do", method=RequestMethod.POST)
	public String modifyPw(MemberVO mvo, Model model, HttpSession session) throws Exception {
		String page=null;
		mvo.setMb_id((String)session.getAttribute("mb_id"));
		int seller=memberservice.sellerCheck(mvo);
		System.out.println(mvo.getMb_pw2());
		System.out.println(mvo.getMb_pw());
		System.out.println(mvo.getMb_id());
		
		if (memberservice.MemberCheck(mvo)) {
			memberservice.MemberModifyPw(mvo);
			memberservice.logout(session);
			model.addAttribute("seller",seller);
			page="redirect:/member/login.do";
		}else {
			page="member/modifyPw";
			model.addAttribute("msg","loginCancel");
			model.addAttribute("seller",seller);
		}
		
		return page;
	}
	
	// 	4. 비밀번호 찾기
	@RequestMapping("/member/findPw.do")
	public String findPW(MemberVO mvo, HttpSession session) throws Exception {
		String page=null;
		String changePw=memberservice.randomPw();
		mvo.setMb_pw2(changePw);
		mvo.setMb_id((String)session.getAttribute("mb_id"));
		System.out.println(mvo.getMb_id());
		System.out.println(mvo.getMb_pw2());
		
		memberservice.ChangePw(mvo);
		page="member/findPw";
		
		return page;
	}
	
	// 5. 회원 탈퇴
	@RequestMapping("/member/delete.do")
	public String delete(MemberVO mvo, HttpSession session, Model model) throws Exception {
		String page=null;
		mvo.setMb_id((String)session.getAttribute("mb_id"));
		int seller=memberservice.sellerCheck(mvo);
		model.addAttribute("seller",seller);
		if (memberservice.MemberCheck(mvo)) {
			memberservice.logout(session);
			memberservice.MemberDelete(mvo);
			page="redirect:/";
		} else {
			page="member/delete";
			model.addAttribute("msg", "Cancle");
			model.addAttribute("seller",seller);
		}
		
		return page;
	}
	// 6. 이메일 인증
	@RequestMapping(value="/member/emailCheck", method = RequestMethod.GET)
	public void emailCheck(HttpServletRequest request) {
		String setfrom = "wtissue0926@gmail.com";
		String tomail = request.getParameter("mb_email"); // 받는 사람 이메일
		String title = "회원가입을 위한 안내 메일입니다."; // 제목
		String content = "이거슨 메일이다"; // 내용
		
		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");

			messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(tomail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);
		} catch (Exception e) {
			System.out.println(e);
		}

	}

	// 7. 로그아웃
	@RequestMapping(value = "/member/logout", method = {RequestMethod.GET,RequestMethod.POST})
	public String logout(HttpSession session) throws Exception {
		session.invalidate();
		return "redirect:/";
	}

	// ★ 페이지 매핑
	@RequestMapping(value = "/member/myPage.do")
	public String memberOrder() {
		return "/member/myPage";
	}
	
}
