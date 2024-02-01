package com.qrro.service;

import java.io.File;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.qrro.mapper.PosMapper;
import com.qrro.model.MemberVO;
import com.qrro.model.MenuVO;
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
	
	@Value("${file.upload.path}")
	private String fileUploadPath;
	
	//메뉴 등록
	@Override
	public void menuEnroll(MenuVO menu, MultipartFile pic1, MultipartFile pic2) throws Exception {
	    // pic1 파일 처리
	    String opic_1 = pic1.getOriginalFilename();
	    String npic_1 = UUID.randomUUID().toString() + "-" + opic_1;
	    File nFile1 = new File(npic_1);
	    try {
	        pic1.transferTo(nFile1);
	    } catch (Exception e) {
	        e.printStackTrace();
	        throw e;
	    }

	    // pic2 파일 처리
	    String opic_2 = pic2.getOriginalFilename();
	    String npic_2 = UUID.randomUUID().toString() + "-" + opic_2;
	    File nFile2 = new File(npic_2);
	    try {
	        pic2.transferTo(nFile2);
	    } catch (Exception e) {
	        e.printStackTrace();
	        throw e;
	    }

	    // 메뉴 정보와 파일 경로를 데이터베이스에 저장
	    menu.setOpic_1(opic_1);
	    menu.setOpic_2(opic_2);
	    menu.setNpic_1(npic_1);
	    menu.setNpic_2(npic_2); 

	    mapper.menuEnroll(menu);
	}

	
	
		
}
