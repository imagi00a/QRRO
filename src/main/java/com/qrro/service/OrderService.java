package com.qrro.service;

import java.util.List;

import com.qrro.model.MenuVO;

public interface OrderService {

	//오더 메뉴1 목록
	public List<MenuVO> getOrderView1();
	
	//오더 메뉴2 목록
	public List<MenuVO> getOrderView2();
	
	//오더 메뉴3 목록
	public List<MenuVO> getOrderView3();
	
	//오더 메뉴4 목록
	public List<MenuVO> getOrderView4();
	
	//오더 메뉴5 목록
	public List<MenuVO> getOrderView5();
		
	// 메뉴 상세페이지
	public MenuVO getMenuDetail(int seq);
	
}
