package com.team3.member.service;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import com.team3.member.dao.MemberDAO;
import com.team3.member.vo.MemberVO;

@Service
public class MemberServiceImp implements MemberService {

	@Inject
	private MemberDAO dao;

	@Inject
	private JavaMailSender javaMailSender;

	
	public void setDAO(MemberDAO dao) {
		this.dao = dao;
	}

	// 1. 회원가입
	@Override
	public void MemberJoin(MemberVO mvo) throws Exception {

		dao.MemberJoin(mvo);

	}
	// 1_1. ID 중복 체크
	@Override
	public String idCheck(MemberVO mvo) throws Exception {
		String result = dao.idCheck(mvo);
		System.out.println("서비스: " + result);
		System.out.println(mvo.getMb_id());
		return result;
	}

	// 2. 로그인 처리
	@Override
	public boolean Login(MemberVO mvo, HttpSession session) throws Exception {
		boolean result = dao.Login(mvo);
		
		if (result) {
			MemberVO mvoInfo = MemberInfo(mvo);
			
			session.setAttribute("mb_id", mvoInfo.getMb_id());
			session.setAttribute("mb_name", mvoInfo.getMb_name());
			session.setAttribute("mb_seller", mvoInfo.getMb_seller());
		}
		System.out.println("service login"+result);
		return result;
	}

	// 3. 회원정보 출력
	@Override
	public MemberVO MemberInfo(MemberVO mvo) throws Exception {
		return dao.MemberInfo(mvo);
	}
	// 3_1. 회원정보 수정
	@Override
	public void MemberModify(MemberVO mvo) throws Exception {
		dao.MemberModify(mvo);
	}
	// 3_2. 회원정보-ID/PW 일치여부확인
	@Override
	public boolean MemberCheck(MemberVO mvo) throws Exception {
		return dao.MemberCheck(mvo);
	}

	// 3_3. 비밀번호 변경 - 회원정보
	@Override
	public void MemberModifyPw(MemberVO mvo) throws Exception {
		dao.MemberModifyPw(mvo);
	}
	
	// 4. 회원 분류 구분
	@Override
	public int sellerCheck(MemberVO mvo) throws Exception {
		int seller = dao.sellerCheck(mvo);
		return seller;
	}
	// 5. 비밀번호 찾기
	@Override
	public void ChangePw(MemberVO mvo) throws Exception {
		dao.ChangePw(mvo);
	}
	// 5_1. 비밀번호 찾기 랜덤 함수
	@Override
	public String randomPw() throws Exception {
		int index=0;
		int length=10;
		char[] charSet = new char[] {
				'0','1','2','3','4','5','6','7','8','9',
				'a','b','c','d','e','f','g','h','i','j','k','l','m',
				'n','o','p','q','r','s','t','u','v','w','x','y','z',
				'A','B','C','D','E','F','G','H','I','J','K','L','M',
				'N','O','P','Q','R','S','T','U','V','W','X','Y','Z',
				'!','@','#','$','%','&','*','^'
		};
		
		StringBuffer sb = new StringBuffer();
		for (int i=0; i<length;i++) {
			index=(int)(charSet.length*Math.random());
			sb.append(charSet[index]);
		}
		return sb.toString();
	}
	

	// 6. 로그아웃
	@Override
	public void logout(HttpSession session) {
		session.invalidate();
	}
	// 7. 회원탈퇴
	@Override
	public void MemberDelete(MemberVO mvo) throws Exception {
		dao.MemberDelete(mvo);
	}

	// 죽어버려	
	@Override
	public String adminId(MemberVO mvo) throws Exception {
		String resultID = dao.adminId(mvo);
		return resultID;
	}
}
