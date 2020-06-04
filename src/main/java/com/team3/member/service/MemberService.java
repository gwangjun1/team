package com.team3.member.service;

import javax.servlet.http.HttpSession;

import com.team3.member.vo.MemberVO;


public interface MemberService {

	//회원가입
	public void MemberJoin(MemberVO mvo) throws Exception; 
	// 회원가입 아이디 중복체크
	public String idCheck(MemberVO mvo) throws Exception;
	// 로그인
	public boolean Login(MemberVO mvo, HttpSession session) throws Exception;
	// 회원정보조회
	public MemberVO MemberInfo(MemberVO mvo) throws Exception;
	// 회원정보 수정
	public void MemberModify(MemberVO mvo) throws Exception;
	// 회원정보-ID/PW 일치여부확인
	public boolean MemberCheck(MemberVO mvo) throws Exception;
	// 비밀번호 변경 - 회원정보
	public void MemberModifyPw(MemberVO mvo) throws Exception;
	// 회원 탈퇴
	public void MemberDelete(MemberVO mvo) throws Exception;
	// 회원 분류 구분
	public int sellerCheck(MemberVO mvo) throws Exception;
	// 비밀번호 찾기
	public void ChangePw(MemberVO mvo) throws Exception;
	// 비밀번호 찾기 난수
	public String randomPw() throws Exception;
	// 로그아웃	
	public void logout(HttpSession session);
	
	
	// 몰라이거 성균아 살려줘 이게뭐야
	public String adminId(MemberVO mvo) throws Exception;
}
