package com.qrro.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.qrro.mapper.PosMapper;
import com.qrro.model.TableVO;

@Service
public class PosServiceImpl implements PosService {

	
	private PosMapper mapper;
	
	//테이블 목록
	@Override
	public List<TableVO> getTableList() {
		
		return mapper.getTableList();
	}

	
		
}
