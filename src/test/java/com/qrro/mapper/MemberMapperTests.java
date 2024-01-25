package com.qrro.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.qrro.controller.MainController;
import com.qrro.model.TableVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class MemberMapperTests {
	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	@Autowired
	private PosMapper mapper;			//MemberMapper.java 인터페이스 의존성 주입
	
	 /* 테이블 수정 */
    @Test
    public void testModify() {
        
        TableVO table = new TableVO();
        table.setSeq(10);
        table.setTable_id("sTest1");;
        table.setTable_pw("uTest1");
        
        int result = mapper.tUpdate(table);
        logger.info("result : " +result);
        
    }
}