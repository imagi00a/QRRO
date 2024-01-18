package com.qrro.model;

public class MemberVO {

	//회원 id
		private String memberId;
		
		//회원 비밀번호
		private String memberPw;
		
		//업장 이름
		private String storeName;
		
		//회원 우편번호
		private String memberAddr1;
		
		//회원 주소
		private String memberAddr2;
		
		//회원 상세주소
		private String memberAddr3;
		
		//사업자번호
		private String storeNum;
		
		//대표 이름
		private String memberName;
		
		//사업장 전화번호
		private String storeTel;
		
		// 관리자 구분(0:일반사용자, 1:관리자)
		private int adminCk;

		public String getMemberId() {
			return memberId;
		}

		public void setMemberId(String memberId) {
			this.memberId = memberId;
		}

		public String getMemberPw() {
			return memberPw;
		}

		public void setMemberPw(String memberPw) {
			this.memberPw = memberPw;
		}

		public String getStoreName() {
			return storeName;
		}

		public void setStoreName(String storeName) {
			this.storeName = storeName;
		}

		public String getMemberAddr1() {
			return memberAddr1;
		}

		public void setMemberAddr1(String memberAddr1) {
			this.memberAddr1 = memberAddr1;
		}

		public String getMemberAddr2() {
			return memberAddr2;
		}

		public void setMemberAddr2(String memberAddr2) {
			this.memberAddr2 = memberAddr2;
		}

		public String getMemberAddr3() {
			return memberAddr3;
		}

		public void setMemberAddr3(String memberAddr3) {
			this.memberAddr3 = memberAddr3;
		}

		public String getStoreNum() {
			return storeNum;
		}

		public void setStoreNum(String storeNum) {
			this.storeNum = storeNum;
		}

		public String getMemberName() {
			return memberName;
		}

		public void setMemberName(String memberName) {
			this.memberName = memberName;
		}

		public String getStoreTel() {
			return storeTel;
		}

		public void setStoreTel(String storeTel) {
			this.storeTel = storeTel;
		}

		public int getAdminCk() {
			return adminCk;
		}

		public void setAdminCk(int adminCk) {
			this.adminCk = adminCk;
		}

		@Override
		public String toString() {
			return "MemberVO [memberId=" + memberId + ", memberPw=" + memberPw + ", storeName=" + storeName
					+ ", memberAddr1=" + memberAddr1 + ", memberAddr2=" + memberAddr2 + ", memberAddr3=" + memberAddr3
					+ ", storeNum=" + storeNum + ", memberName=" + memberName + ", storeTel=" + storeTel + ", adminCk="
					+ adminCk + "]";
		}
		
	
}
