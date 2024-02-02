package com.qrro.service;

import java.util.List;

import com.qrro.model.MenuVO;

public interface OrderService {

	//오더 메뉴1 목록
	public List<MenuVO> getOrderView1();
		
	// 메뉴 상세페이지
	public MenuVO getMenuDetail(int seq);
	
}
