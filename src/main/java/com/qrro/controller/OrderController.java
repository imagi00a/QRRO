package com.qrro.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/order")
public class OrderController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	
	
	//	오더메인 페이지 이동
	@RequestMapping(value = "orderMain", method = RequestMethod.GET)
	public void orderMainPageGET() throws Exception{
		logger.info("오더메인 페이지 진입");
	}
	
	//	오더메인2 페이지 이동
	@RequestMapping(value = "orderMain2", method = RequestMethod.GET)
	public void orderMain2PageGET() throws Exception{
		logger.info("오더메인 페이지 진입");
	}
	
	//	오더메인3 페이지 이동
	@RequestMapping(value = "orderMain3", method = RequestMethod.GET)
	public void orderMain3PageGET() throws Exception{
		logger.info("오더메인 페이지 진입");
	}
	
	//	오더메인4 페이지 이동
	@RequestMapping(value = "orderMain4", method = RequestMethod.GET)
	public void orderMain4PageGET() throws Exception{
		logger.info("오더메인 페이지 진입");
	}
	
	//	오더메인5 페이지 이동
	@RequestMapping(value = "orderMain5", method = RequestMethod.GET)
	public void orderMain5PageGET() throws Exception{
		logger.info("오더메인 페이지 진입");
	}
	
   
	
}
