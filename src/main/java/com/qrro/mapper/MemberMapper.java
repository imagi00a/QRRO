package com.qrro.mapper;

import com.qrro.model.MemberVO;
import com.qrro.model.TableVO;

public interface MemberMapper {

	//회원가입
		public void memberJoin(MemberVO member);
		
	// 아이디 중복 검사
		public int idCheck(String memberId);
		
	// 관리자 로그인
		public MemberVO memberLogin(MemberVO member);
		
	// 테이블 로그인
		public TableVO tableLogin(TableVO table);
		
}
