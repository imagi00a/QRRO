package com.qrro.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qrro.model.TableVO;
import com.qrro.service.PosService;

@Controller
@RequestMapping("/pos")
public class PosController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private PosService pservice;
	
//	포스메인 페이지 이동
	@RequestMapping(value = "posMain", method = RequestMethod.GET)
	public void posMainPageGET() throws Exception{
		logger.info("포스메인 페이지 진입");
	}
	
    /* 매출 관리 페이지 접속 */
    @RequestMapping(value = "salesManage", method = RequestMethod.GET)
    public void salesManageGET() throws Exception{
        logger.info("매출 관리 페이지 접속");
    }
    
    /* 메뉴 관리 페이지 접속 */
    @RequestMapping(value = "menuManage", method = RequestMethod.GET)
    public void menuManageGET() throws Exception{
        logger.info("메뉴 관리 페이지 접속");
    }
    
    /* 테이블 관리 페이지 */
    @RequestMapping(value = "tableManage", method = RequestMethod.GET)
    public void tableManageGET(Model model) {
        
    	logger.info("테이블 관리 페이지 접속");
        
        model.addAttribute("tableManage", pservice.getTableManage());
    }
    
    /* 사업장 관리 페이지 접속 */
    @RequestMapping(value = "storeManage", method = RequestMethod.GET)
    public void storeManageGET() throws Exception{
    	logger.info("사업장 관리 페이지 접속");
    }
    
    /* 게시판 등록 */
    @RequestMapping(value = "tableManage", method = RequestMethod.POST)
    public String tableEnrollPOST(TableVO table, RedirectAttributes rttr) {
        
        logger.info("tableVO : " + table);
        
        pservice.tEnroll(table);
        
        rttr.addFlashAttribute("result", "enrol success");
        
        return "redirect:/pos/tableManage";
        
    }
}
