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
       					 <form action = "/pos/tableEnroll" method="POST">
			       			<tr>
						      	<td><input type="text" name = "table_id" placeholder="테이블 ID"></td>
						        <td><input type="text" name = "table_pw" placeholder="비밀번호"></td>
						        <td><button class="btn">테이블 등록</button></td>
						    </tr>
						 </form> 
					</table>  
					<table>
						<thead>
							<tr>
								<th class="seq_width">번호</th>
								<th class="table_id_width">테이블 ID</th>
								<th class="table_pw_width">비밀번호</th>
							<form id="uForm" action="/pos/tableUpdate" method="POST">
								<th class="table_update_width">테이블 수정</th>
							</form>
								<th class="table_delete_width">테이블 삭제</th>
							</tr>
						</thead>
						  <c:forEach items="${tableManage}" var="list">
                        <tr>
                            <td><c:out value="${list.seq}"/></td>
                            <td class="table_id"><c:out value="${list.table_id}"/></td>
                            <td class="table_pw"><c:out value="${list.table_pw}"/></td>
                            <td><button class="ubtn">수정</button></td>
                            <td><button class="btn">삭제</button></td>
                        </tr>
                    </c:forEach>
					</table>
				</div>
                </div>
                <div class="clearfix"></div>
                

            </div>
        </div>
    </div>

                
 <script>
 
 function submitUpdatedData(row) {
	    var tableIdInput = row.find('.edit_table_id');
	    var tablePwInput = row.find('.edit_table_pw');
	    var tableId = tableIdInput.val();
	    var tablePw = tablePwInput.val();
	    var seq = row.find('td:first').text(); // 번호 추출

	    $.ajax({
	        url: '/pos/tableUpdate',
	        type: 'POST',
	        data: { 
	            seq: seq, 
	            table_id: tableId, 
	            table_pw: tablePw 
	        },
	        success: function(response) {
	            // 성공 시 처리 로직
	            alert("수정이 완료되었습니다.");

	            // 텍스트 입력 창을 일반 텍스트로 변경
	            row.find('.table_id').text(tableId);
	            row.find('.table_pw').text(tablePw);

	            // '수정 완료' 버튼을 다시 '수정' 버튼으로 변경
	            row.find('.ubtn').text('수정').off('click').on('click', function(){
	                enableEditMode($(this).closest('tr'));
	            });
	        },
	        error: function() {
	            // 실패 시 처리 로직
	            alert("수정에 실패했습니다.");
	        }
	    });
	}

	function enableEditMode(row) {
	    var tableId = row.find('.table_id').text();
	    var tablePw = row.find('.table_pw').text();

	    // 텍스트 입력 창으로 전환
	    row.find('.table_id').html('<input type="text" class="edit_table_id" value="' + tableId + '">');
	    row.find('.table_pw').html('<input type="text" class="edit_table_pw" value="' + tablePw + '">');

	    // 버튼 텍스트를 '수정 완료'로 변경
	    row.find('.ubtn').text('수정 완료').off('click').on('click', function(){
	        submitUpdatedData(row);
	    });
	}

	$(document).ready(function(){
	    // 테이블 정보 수정 이벤트
	    $('.ubtn').click(function(){
	        enableEditMode($(this).closest('tr'));
	    });
	});
 // 테이블 등록 완료 이벤트
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
