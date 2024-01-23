package com.qrro.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
//메인 페이지 이동
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		
		logger.info("메인 페이지 진입");
		
	}
	
//포스메인 페이지 이동
//	@RequestMapping(value = "/pos/posMain", method = RequestMethod.GET)
//	public void posMainPageGET() {
//		
//		logger.info("포스메인 페이지 진입");
//		
//	}

//오더메인 페이지 이동
//@RequestMapping(value = "/order/orderMain", method = RequestMethod.GET)
//public void orderMainPageGET() {
//	
//	logger.info("오더메인 페이지 진입");
//	
//}
}
