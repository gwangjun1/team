package com.team3.member.dao;


import com.team3.member.vo.MemberVO;


public interface MemberDAO {
	
	// 회원가입
	public void MemberJoin(MemberVO mvo) throws Exception;
	// ID중복체크
	public String idCheck(MemberVO mvo) throws Exception;
	// 로그인
	public boolean Login(MemberVO mvo) throws Exception;
	// 회원정보
	public MemberVO MemberInfo(MemberVO mvo) throws Exception;
	// 회원정보-ID/PW 일치여부확인
	public boolean MemberCheck(MemberVO mvo) throws Exception;
	// 회원정보 수정
	public void MemberModify(MemberVO mvo) throws Exception;
	// 비밀번호 수정
	public void MemberModifyPw(MemberVO mvo) throws Exception;
	// 회원 분류 확인
	public int sellerCheck(MemberVO mvo) throws Exception;
	// 비밀번호 찾기
	public void ChangePw(MemberVO mvo) throws Exception;
	// 회원탈퇴
	public void MemberDelete(MemberVO mvo) throws Exception;
	
	// 지워도 될까?
	public String adminId(MemberVO mvo) throws Exception;
}
