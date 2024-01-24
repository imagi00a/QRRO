package com.qrro.service;

import java.util.List;

import com.qrro.model.TableVO;

public interface PosService {

	//테이블 목록
	public List<TableVO> getTableManage();
	
	//테이블 등록
	public void tEnroll(TableVO table);
	
}
