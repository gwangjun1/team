package com.team3.member.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.team3.admin.service.AdminService;
import com.team3.member.service.MemberService;
import com.team3.member.vo.MemberVO;

@RestController
public class AjaxController {
	
	@Inject
	private MemberService memberservice;
	
	@Inject
	private AdminService AdminService;
	
//	@Inject
//	private JavaMailSender mailSender;
	
//	@RequestMapping(value="member/idCheck", method=RequestMethod.POST)
//	public String idCheck(MemVO mvo) throws Exception{
//		String ck_id=service.idCheck(mvo);
//		
//		return ck_id;
//	}
	
	@RequestMapping(value="member/idCheck", method=RequestMethod.POST)
	public ResponseEntity<String> idCheck(MemberVO mvo) throws Exception {
		ResponseEntity<String> entity = null;
		String ck_id=memberservice.idCheck(mvo);
		if (ck_id==null) {
			ck_id=memberservice.adminId(mvo);
		}
		entity = new ResponseEntity<String>(ck_id ,HttpStatus.OK);
		return entity;
	}
	
//	@RequestMapping(value="/member/emailCheck", method = RequestMethod.GET)
//	public void emailCheck(HttpServletRequest request) {
//		String setfrom = "wtissue0926@gmail.com";
//		String tomail = request.getParameter("mb_email"); // 받는 사람 이메일
//		String title = "회원가입을 위한 안내 메일입니다."; // 제목
//		String content = "이거슨 메일이다"; // 내용
//		System.out.println(tomail);
//		try {
//			MimeMessage message = mailSender.createMimeMessage();
//			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
//
//			messageHelper.setFrom(setfrom); // 보내는사람 생략하거나 하면 정상작동을 안함
//			messageHelper.setTo(tomail); // 받는사람 이메일
//			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
//			messageHelper.setText(content); // 메일 내용
//
//			mailSender.send(message);
//		} catch (Exception e) {
//			System.out.println(e);
//		}
//
//	}

}
