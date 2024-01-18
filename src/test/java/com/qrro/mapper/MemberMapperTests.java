package com.qrro.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qrro.model.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {

	@Autowired
	private MemberMapper membermapper;			//MemberMapper.java 인터페이스 의존성 주입
	
	//회원가입 쿼리 테스트 메서드
//	@Test
//	public void memberJoin() throws Exception{
//		MemberVO member = new MemberVO();
//		
//		member.setMemberId("test");			//회원 id
//		member.setMemberPw("test");			//회원 비밀번호
//		member.setStoreName("test");		//업장 이름
//		member.setMemberAddr1("test");		//회원 우편번호
//		member.setMemberAddr2("test");		//회원 주소
//		member.setMemberAddr3("test");		//회원 상세주소
//		member.setStoreNum("test");			//사업자 번호
//		member.setMemberName("test");		//사업주 이름
//		member.setStoreTel("test");			//업장 전화번호
//		
//		membermapper.memberJoin(member);			//쿼리 메서드 실행
//		
//	}
	// 아이디 중복검사
		@Test
		public void memberIdChk() throws Exception{
			String id = "admin";	// 존재하는 아이디
			String id2 = "test123";	// 존재하지 않는 아이디
			membermapper.idCheck(id);
			membermapper.idCheck(id2);
		}
	
	
	
}