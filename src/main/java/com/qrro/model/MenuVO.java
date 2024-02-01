package com.qrro.model;

public class MenuVO {

	/* 메뉴 번호 */
	private int seq;
	
	/* 메뉴 카테고리 */
	private String category;
	
	/* 메뉴 이름 */
	private String menu;
	
	/* 메뉴 가격 */
	private int price;
	
	/* 메뉴 사진 */
	private String opic_1;
	
	/* 메뉴 사진 */
	private String npic_1;
	
	/* 메뉴 상세페이지*/
	private String opic_2;
	
	/* 메뉴 상세페이지*/
	private String npic_2;
	
	@Override
	public String toString() {
		return "MenuVO [seq=" + seq + ", category=" + category + ", menu=" + menu + ", price=" + price + ", opic_1="
				+ opic_1 + ", npic_1=" + npic_1 + ", opic_2=" + opic_2 + ", npic_2=" + npic_2 + "]";
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getMenu() {
		return menu;
	}

	public void setMenu(String menu) {
		this.menu = menu;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getOpic_1() {
		return opic_1;
	}

	public void setOpic_1(String opic_1) {
		this.opic_1 = opic_1;
	}

	public String getNpic_1() {
		return npic_1;
	}

	public void setNpic_1(String npic_1) {
		this.npic_1 = npic_1;
	}

	public String getOpic_2() {
		return opic_2;
	}

	public void setOpic_2(String opic_2) {
		this.opic_2 = opic_2;
	}

	public String getNpic_2() {
		return npic_2;
	}

	public void setNpic_2(String npic_2) {
		this.npic_2 = npic_2;
	}


}
