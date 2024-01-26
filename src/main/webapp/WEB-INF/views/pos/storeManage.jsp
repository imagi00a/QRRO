<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POS MAIN</title>
<link rel="stylesheet" href="../resources/css/pos/storeManage.css">
 
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
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
                    <div class="admin_content_subject"><span>사업장 관리</span></div>
                <div class="table_wrap">
                <table>
       					 <form action = "/pos/storeUpdate" method="GET">
			       			
						        <th><button class="btn">업장 정보 수정</button></th>
						    
						 </form> 
					</table>  
                <table>
						<thead>
							<tr>
								<th class="store_sub_width"> 항목</th>
								<th class="store_info_width">업장 정보</th>
							</tr>
						</thead>
						<c:forEach items="${storeManage}" var="list"> 
                        <tr>
                            <td class="sub_content">관리자 아이디</td>
                            <td class="info_content"><c:out value="${list.memberId}"/></td>
                        </tr>
                        <tr>
                            <td class="sub_content">관리자 비밀번호</td>
                            <td class="info_content"><c:out value="${list.memberPw}"/></td>
                        </tr>
                        <tr>
                            <td class="sub_content">업장명</td>
                            <td class="info_content"><c:out value="${list.storeName}"/></td>
                        </tr>
                        <tr>
                            <td class="sub_content">업장 우편번호</td>
                            <td class="info_content"><c:out value="${list.memberAddr1}"/></td>
                        </tr>
                        <tr>
                            <td class="sub_content">업장 주소</td>
                            <td class="info_content"><c:out value="${list.memberAddr2}"/></td>
                        </tr>
                        <tr>
                            <td class="sub_content">업장 상세주소</td>
                            <td class="info_content"><c:out value="${list.memberAddr3}"/></td>
                        </tr>
                        <tr>
                            <td class="sub_content">사업자 번호</td>
                            <td class="info_content"><c:out value="${list.storeNum}"/></td>
                        </tr>
                        <tr>
                            <td class="sub_content">사업주</td>
                            <td class="info_content"><c:out value="${list.memberName}"/></td>
                        </tr>
                        <tr>
                            <td class="sub_content">업장 전화번호</td>
                            <td class="info_content"><c:out value="${list.storeTel}"/></td>
                        </tr>
                    </c:forEach>
					</table>
					</div>
					</div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    

</body>
</html>
