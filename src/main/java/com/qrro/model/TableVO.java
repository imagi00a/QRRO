package com.qrro.model;

public class TableVO {

		//테이블 seq
		private int seq;
	
		//테이블 id
		private String table_id;
	
		//테이블 비밀번호
		private String table_pw;


		public int getSeq() {
			return seq;
		}

		public void setSeq(int seq) {
			this.seq = seq;
		}

		public String getTable_id() {
			return table_id;
		}

		public void setTable_id(String table_id) {
			this.table_id = table_id;
		}

		public String getTable_pw() {
			return table_pw;
		}

		public void setTable_pw(String table_pw) {
			this.table_pw = table_pw;
		}
		@Override
		public String toString() {
			return "TableVO [seq=" + seq + ", table_id=" + table_id + ", table_pw=" + table_pw + "]";
		}
}
