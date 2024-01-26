package com.qrro.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.qrro.mapper.PosMapper;
import com.qrro.model.MemberVO;
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
	
	//테이블 수정
	@Override
	public int tUpdate(TableVO table) {
		
		return mapper.tUpdate(table);
	}
	
	//테이블 삭제
	@Override
	
	@Transactional
	public int tDelete(int seq) {
		
		int result = mapper.tDelete(seq);
		
		 // AUTO_INCREMENT 재설정
        mapper.tReset1();
        mapper.tReset2();
        mapper.tReset3();

        return result; // 삭제 작업 결과 반환
		
	}
	
	//업장 정보
	@Override
	public List<MemberVO> getStoreManage() {
		
		return mapper.getStoreManage();
	}
	
	//업장 정보 수정
	@Override
	public int sUpdate(MemberVO store) {
		
		return mapper.sUpdate(store);
	}

	
		
}
