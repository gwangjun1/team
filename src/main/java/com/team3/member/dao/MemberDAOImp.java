package com.team3.member.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.team3.member.vo.MemberVO;

@Repository
public class MemberDAOImp implements MemberDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String Namespace = "com.team3.mapper.MemberMapper";
	

	public MemberDAOImp() {
	}

	public void setSqlSession(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// 회원가입
	@Override
	public void MemberJoin(MemberVO mvo) {		
		sqlSession.insert(Namespace + ".insertMember", mvo);
	}
	// ID중복 확인
	@Override
	public String idCheck(MemberVO mvo) {
		return sqlSession.selectOne(Namespace + ".idCheck", mvo);
	}
	// 로그인
	@Override
	public boolean Login(MemberVO mvo) throws Exception {
		System.out.println(mvo.getMb_id());
		boolean result = false;
		String name = sqlSession.selectOne(Namespace + ".loginMember", mvo);
		if(name == null) {
			
		} else {
			result = true;
		}
		return result;
	}
	// 회원정보
	@Override
	public MemberVO MemberInfo(MemberVO mvo) throws Exception {
		return sqlSession.selectOne(Namespace + ".memberInfo", mvo);	
	}
	// 회원정보-ID/PW 일치여부확인
	@Override
	public boolean MemberCheck(MemberVO mvo) throws Exception {
		return Login(mvo);
	}
	// 회원 정보 수정
	@Override
	public void MemberModify(MemberVO mvo) throws Exception {
		sqlSession.update(Namespace+".memberModify",mvo);
	}
	// 비밀번호 변경-회원정보
	@Override
	public void MemberModifyPw(MemberVO mvo) throws Exception {
		sqlSession.update(Namespace+".memberModifyPw",mvo);
	}
	// 회원 탈퇴
	@Override
	public void MemberDelete(MemberVO mvo) throws Exception {
		sqlSession.delete(Namespace+".memberDelete", mvo);
	}
	// 회원 분류 확인
	@Override
	public int sellerCheck(MemberVO mvo) throws Exception {
		int seller = sqlSession.selectOne(Namespace+".sellerCheck",mvo);
		return seller;
	}
	// 비밀번호 찾기
	@Override
	public void ChangePw(MemberVO mvo) throws Exception {
		sqlSession.update(Namespace+".changePw",mvo);
	}
	
	
	// 나도몰라 이건
	@Override
	public String adminId(MemberVO mvo) throws Exception {
		String resultID = sqlSession.selectOne(Namespace+".adminId",mvo);
		return resultID;
	}
}
