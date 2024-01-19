package com.qrro.service;

import com.qrro.model.MemberVO;
import com.qrro.model.TableVO;

public interface MemberService {

	//회원가입
		public void memberJoin(MemberVO member) throws Exception;
		
	// 아이디 중복 검사
		public int idCheck(String memberId) throws Exception;
		
	// 관리자 로그인
		public MemberVO memberLogin(MemberVO member) throws Exception;
		
	// 테이블 로그인
		public TableVO tableLogin(TableVO table) throws Exception;
}
