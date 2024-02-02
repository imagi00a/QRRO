package com.qrro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qrro.mapper.OrderMapper;
import com.qrro.model.MenuVO;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderMapper mapper;

	@Override
	public List<MenuVO> getOrderView1() {
		
		return mapper.getOrderView1();
	}

	@Override
	public MenuVO getMenuDetail(int seq) {
		
		return mapper.getMenuDetail(seq);
	}

}
