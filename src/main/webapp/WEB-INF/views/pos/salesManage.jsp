<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POS MAIN</title>
<link rel="stylesheet" href="../resources/css/pos/salesManage.css">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
</head>
<body>
 
    <div class="wrapper">
        <div class="wrap">
            <!-- gnv_area -->    
            <div class="top_gnb_area">
                <ul class="list">    
                    <!-- 로그인한 상태 -->
	                <c:if test="${ member != null }">
	                    <div class="login_success_area">
	                        <span>업장명 : ${member.storeName}</span>
	                        <span>아이디 : ${member.memberId}</span>
	                    </div>
	                </c:if>           
                    <li><a href="/member/logout.do">로그아웃</a></li>
                </ul>
            </div>
            <!-- top_subject_area -->
            <div class="admin_top_wrap">
                <span>QRRO POS MAIN</span>
                
            </div>
            <!-- contents-area -->
            <div class="admin_wrap">
                <!-- 네비영역 -->
                <div class="admin_navi_wrap">
                    <ul>
                        <li >
                            <a class="admin_list_01" href="/pos/posMain" >판매 현황</a>
                        </li>
                        <li>
                            <a class="admin_list_02" href="/pos/salesManage">매출 관리</a>
                        </li>
                        <lI>
                            <a class="admin_list_03" href="/pos/menuManage">메뉴 관리</a>                            
                        </lI>
                        <lI>
                            <a class="admin_list_04" href="/pos/tableManage">테이블 관리</a>                            
                        </lI>
                        <lI>
                            <a class="admin_list_05" href="/pos/storeManage">사업장 관리</a>                            
                        </lI>                                                                                             
                    </ul>
                </div>
                
                <div class="admin_content_wrap">
                    <div class="admin_content_subject"><span>매출 관리</span></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
 
</body>
</html>
