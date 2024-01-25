package com.qrro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qrro.mapper.PosMapper;
import com.qrro.model.TableVO;

@Service
public class PosServiceImpl implements PosService {

	@Autowired
	private PosMapper mapper;
	
	//테이블 목록
	@Override
	public List<TableVO> getTableManage() {
		
		return mapper.getTableManage();
	}

	//테이블 등록
	@Override
	public void tEnroll(TableVO table) {

		mapper.tEnroll(table);
	}

	@Override
	public int tUpdate(TableVO table) {
		
		return mapper.tUpdate(table);
	}

	
		
}
