package com.qrro.mapper;

import java.util.List;

import com.qrro.model.TableVO;

public interface PosMapper {

	
	//테이블 목록
	public List<TableVO> getTableManage();
	
	//테이블 등록
	public void tEnroll(TableVO table);
	
	//테이블 수정
	public int tUpdate(TableVO table);
	
}
