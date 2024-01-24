package com.qrro.mapper;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qrro.controller.MainController;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	@Autowired
	private PosMapper mapper;			//MemberMapper.java 인터페이스 의존성 주입
	
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
//		@Test
//		public void memberIdChk() throws Exception{
//			String id = "admin";	// 존재하는 아이디
//			String id2 = "test123";	// 존재하지 않는 아이디
//			membermapper.idCheck(id);
//			membermapper.idCheck(id2);
//		}
	
	 /* 로그인 쿼리 mapper 메서드 테스트 */
//    @Test
//    public void memberLogin() throws Exception{
//        
//        MemberVO member = new MemberVO();    // MemberVO 변수 선언 및 초기화
//        
//        /* 올바른 아이디 비번 입력경우 */
//        member.setMemberId("test2");
//        member.setMemberPw("test2");
//        
//        /* 올바른 않은 아이디 비번 입력경우 */
//        //member.setMemberId("test1123");
//        //member.setMemberPw("test1321321");
//        
//        membermapper.memberLogin(member);
//        System.out.println("결과 값 : " + membermapper.memberLogin(member));
//        
//    }
	/* 로그인 쿼리 mapper 메서드 테스트 */
//    @Test
//    public void tableLogin() throws Exception{
//        
//        TableVO table = new TableVO();    // MemberVO 변수 선언 및 초기화
//        
//        /* 올바른 아이디 비번 입력경우 */
//        table.setTable_id("table1");
//        table.setTable_pw("1111");
//        
//        /* 올바른 않은 아이디 비번 입력경우 */
//        //member.setMemberId("test1123");
//        //member.setMemberPw("test1321321");
//        
//        membermapper.tableLogin(table);
//        System.out.println("결과 값 : " + membermapper.tableLogin(table));
//        
//    }
//	
	 /* 게시판 목록 테스트 */
    @Test
    public void testGetTableList() {
        
        
        List list = mapper.getTableManage();
       /* 일반적 for문 */
//        for(int i = 0; i < list.size();i++) {
//            logger.info("" + list.get(i));
//        }
        
       /* foreach문(향상된 for문) */
//        for(Object a : list) {
//            logger.info("" + a);
//        }
        
       /* foreach문 & 람다식 */
        list.forEach(board -> logger.info("" + board));
        
    }
}