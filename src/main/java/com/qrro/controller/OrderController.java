package com.qrro.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.qrro.service.OrderService;

@Controller
@RequestMapping("/order")
public class OrderController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private OrderService oservice;
	
	//	오더메인 페이지 이동
	@RequestMapping(value = "orderMain", method = RequestMethod.GET)
	public void orderMainPageGET(Model model) throws Exception{
		logger.info("오더메인 페이지 진입");
		
		model.addAttribute("orderMain", oservice.getOrderView1());
	}
	
//	오더메인2 페이지 이동
	@RequestMapping(value = "orderMain2", method = RequestMethod.GET)
	public void orderMain2PageGET(Model model) throws Exception{
		logger.info("오더메인2 페이지 진입");
		
		model.addAttribute("orderMain2", oservice.getOrderView2());
	}
	
//	오더메인3 페이지 이동
	@RequestMapping(value = "orderMain3", method = RequestMethod.GET)
	public void orderMain3PageGET(Model model) throws Exception{
		logger.info("오더메인3 페이지 진입");
		
		model.addAttribute("orderMain3", oservice.getOrderView3());
	}
	
//	오더메인4 페이지 이동
	@RequestMapping(value = "orderMain4", method = RequestMethod.GET)
	public void orderMain4PageGET(Model model) throws Exception{
		logger.info("오더메인4 페이지 진입");
		
		model.addAttribute("orderMain4", oservice.getOrderView4());
	}
	
//	오더메인5 페이지 이동
	@RequestMapping(value = "orderMain5", method = RequestMethod.GET)
	public void orderMain5PageGET(Model model) throws Exception{
		logger.info("오더메인5 페이지 진입");
		
		model.addAttribute("orderMain5", oservice.getOrderView5());
	}
	
	
	//	상세 페이지 이동
	@RequestMapping(value = "menuDetail", method = RequestMethod.GET)
	public void menuDetailPageGET(int seq, Model model) {
		
		logger.info("menuDetailPageGET()..........");
		
		model.addAttribute("menuDetail", oservice.getMenuDetail(seq));
				
	}
   
	
}
