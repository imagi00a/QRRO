package com.qrro.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.qrro.model.MemberVO;
import com.qrro.model.TableVO;
import com.qrro.service.MemberService;

@Controller
@RequestMapping(value="/member")
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MainController.class);
	
	@Autowired
	private MemberService memberservice;
	
		//회원가입 페이지 이동
		@RequestMapping(value = "join", method = RequestMethod.GET)
		public void joinGET() {
			
			logger.info("회원가입 페이지 진입");
					
		}
		//회원가입
		@RequestMapping(value="/join", method=RequestMethod.POST)
		public String joinPOST(MemberVO member) throws Exception{
			
			logger.info("join 진입");
			
			// 회원가입 서비스 실행
			memberservice.memberJoin(member);
			
			logger.info("join Service 성공");
			
			return "redirect:/main";
			
		}
		
		//관리자로그인 페이지 이동
		@RequestMapping(value = "login", method = RequestMethod.GET)
		public void loginGET() {
			
			logger.info("관리자로그인 페이지 진입");
			
		}
		//테이블로그인 페이지 이동
		@RequestMapping(value = "tlogin", method = RequestMethod.GET)
		public void tloginGET() {
			
			logger.info("테이블로그인 페이지 진입");
			
		}
		
		// 아이디 중복 검사
		@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
		@ResponseBody
		public String memberIdChkPOST(String memberId) throws Exception{
			
			//logger.info("memberIdChk() 진입");
			int result = memberservice.idCheck(memberId);
			
			//logger.info("결과값 = " + result);
			
			if(result != 0) {
				
				return "fail";	// 중복 아이디가 존재
				
			} else {
				
				return "success";	// 중복 아이디 x
				
			}	
			
		} // memberIdChkPOST() 종료	
		
		/* 관리자로그인 */
	    @RequestMapping(value="login", method=RequestMethod.POST)
	    public String loginPOST(HttpServletRequest request, MemberVO member, RedirectAttributes rttr) throws Exception{
	        
	        HttpSession session = request.getSession();
	        MemberVO lvo = memberservice.memberLogin(member);
	        
	        if(lvo == null) {     
	            // 일치하지 않는 아이디, 비밀번호 입력 경우
	            int result = 0;
	            rttr.addFlashAttribute("result", result);
	            return "redirect:/member/login";
	            
	        } else if(lvo.getAdminCk() != 1) {
	            // adminCK가 1이 아닌 경우 (관리자가 아님)
	        	int result = 1;
	            rttr.addFlashAttribute("result",result);
	            return "redirect:/member/login";
	        }
	        
	        session.setAttribute("member", lvo); // 일치하는 아이디, 비밀번호, 관리자 확인 (로그인 성공)
	        
	        return "redirect:/pos/posMain";
	    }
	    
	    /* 테이블로그인 */
	    @RequestMapping(value="tlogin", method=RequestMethod.POST)
	    public String tloginPOST(HttpServletRequest request, TableVO table, RedirectAttributes rttr) throws Exception{
	        
	    	HttpSession session = request.getSession();
	    	TableVO lvo = memberservice.tableLogin(table);
	    	
	    	 if(lvo == null) {                                // 일치하지 않는 아이디, 비밀번호 입력 경우
		            
		            int result = 0;
		            rttr.addFlashAttribute("result", result);
		            return "redirect:/member/tlogin";
	    }
	    	 
	    	 session.setAttribute("table", lvo);             // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
		        
		      return "redirect:/order/orderMain";
	}

	    /* 메인페이지 로그아웃 */
	    @RequestMapping(value="logout.do", method=RequestMethod.GET)
	    public String logoutMainGET(HttpServletRequest request) throws Exception{
	        
	        logger.info("logoutMainGET메서드 진입");
	        
	        HttpSession session = request.getSession();
	        
	        session.invalidate();
	        
	        return "redirect:/main";        
	        
	    }
	
}
