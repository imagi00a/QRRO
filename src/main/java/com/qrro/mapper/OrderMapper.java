package com.qrro.mapper;

import java.util.List;

import com.qrro.model.MenuVO;

public interface OrderMapper {

	//오더 메뉴1 목록
	public List<MenuVO> getOrderView1();
	
	// 메뉴 상세페이지
	public MenuVO getMenuDetail(int seq);
	
}
