package com.qrro.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.qrro.model.MemberVO;
import com.qrro.model.MenuVO;
import com.qrro.model.TableVO;

public interface PosService {

	//테이블 목록
	public List<TableVO> getTableManage();
	
	//테이블 등록
	public void tEnroll(TableVO table);
	
	//테이블 수정
	public int tUpdate(TableVO table);
	
	//테이블 삭제
	public int tDelete(int seq);
	
	//업장 정보
	public List<MemberVO> getStoreManage();
	
	//업장 정보 수정
	public int sUpdate(MemberVO store);
	
	//메뉴 등록
	public void menuEnroll(MenuVO menu, MultipartFile pic1, MultipartFile pic2) throws Exception;
	
	//메뉴 목록
	public List<MenuVO> getMenuManage();
	
	//메뉴 삭제
	public int mDelete(int seq);
		
}
