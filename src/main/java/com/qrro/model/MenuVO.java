package com.qrro.model;

public class MenuVO {

	/* 메뉴 번호 */
	private int seq;
	
	/* 메뉴 카테고리 */
	private String categori;
	
	/* 메뉴 이름 */
	private String menu;
	
	/* 메뉴 가격 */
	private int price;
	
	/* 메뉴 사진 */
	private String pic_1;
	
	/* 메뉴 상세페이지*/
	private String pic_2;


	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getCategori() {
		return categori;
	}

	public void setCategori(String categori) {
		this.categori = categori;
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

	public String getPic_1() {
		return pic_1;
	}

	public void setPic_1(String pic_1) {
		this.pic_1 = pic_1;
	}

	public String getPic_2() {
		return pic_2;
	}

	public void setPic_2(String pic_2) {
		this.pic_2 = pic_2;
	}
	
	@Override
	public String toString() {
		return "MenuVO [seq=" + seq + ", categori=" + categori + ", menu=" + menu + ", price=" + price + ", pic_1="
				+ pic_1 + ", pic_2=" + pic_2 + "]";
	}
	
}