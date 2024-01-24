<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POS MAIN</title>
<link rel="stylesheet" href="../resources/css/pos/tableManage.css">
 
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
                    <div class="admin_content_subject"><span>테이블 관리</span></div>
                <div class="table_wrap">
					<table>
						<thead>
							<tr>
								<th class="seq_width">번호</th>
								<th class="table_id_width">테이블번호</th>
								<th class="table_pw_width">비밀번호</th>
							</tr>
						</thead>
						 <c:forEach items="${tableManage}" var="list">
				            <tr>
				                <td><c:out value="${list.seq}"/></td>
				                <td><c:out value="${list.table_id}"/></td>
				                <td><c:out value="${list.table_pw}"/></td>
				            </tr>
       					 </c:forEach>
       					 <form action = "/pos/tableManage" method="POST">
			       			<tr>
						        <td><button class="btn">테이블 등록</button></td>
						      	<td><input type="text" name = "table_id" placeholder="테이블 번호"></td>
						        <td><input type="text" name = "table_pw" placeholder="비밀번호"></td>
						    </tr>
						 </form>   
					</table>
				</div>
                </div>
                <div class="clearfix"></div>
                

            </div>
        </div>
    </div>

                
 <script>
$(document).ready(function(){
    
    let result = '<c:out value="${result}"/>';
    
    checkAlert(result);
    
    function checkAlert(result){
        
        if(result === ''){
            reutrn;
        }
        
        if(result === "enrol success"){
            alert("등록이 완료되었습니다.");
        }
        
    }    
    
});
</script>
</body>
</html>
