<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>POS MAIN</title>
<link rel="stylesheet" href="../resources/css/pos/menuManage.css">

<script src="https://code.jquery.com/jquery-3.4.1.js"
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
							<span>업장명 : ${member.storeName}</span> <span>아이디 :
								${member.memberId}</span>
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
						<li><a class="admin_list_01" href="/pos/posMain">판매 현황</a></li>
						<li><a class="admin_list_02" href="/pos/salesManage">매출
								관리</a></li>
						<lI><a class="admin_list_03" href="/pos/menuManage">메뉴 관리</a>
						</lI>
						<lI><a class="admin_list_04" href="/pos/tableManage">테이블
								관리</a></lI>
						<lI><a class="admin_list_05" href="/pos/storeManage">사업장
								관리</a></lI>
					</ul>
				</div>

				<div class="admin_content_wrap">
					<div class="admin_content_subject">
						<span>메뉴 관리</span>
					</div>
					<div class="table_wrap">
						<form action="/pos/menuEnroll" method="POST"
							enctype="multipart/form-data">
							<table>
								<tr>
									<td><select name="category">
											<option value="1">위스키</option>
											<option value="2">칵테일</option>
											<option value="3">맥주</option>
											<option value="4">안주</option>
											<option value="5">음료</option>
									</select></td>
									<td><input type="text" name="menu" placeholder="메뉴이름"></td>
									<td><input type="text" name="price" placeholder="메뉴 가격"></td>
								</tr>
								<tr>
									<td><input type="file" name="pic_1" id="menu_photo"></td>
									<td><input type="file" name="pic_2" id="menu-photo"></td>
									<td><button class="btn">메뉴 등록</button></td>
								</tr>
							</table>
						</form>
						<table>
							<thead>
								<tr>
									<th class="seq_width">메뉴번호</th>
									<th class="category_width">카테고리</th>
									<th class="menu_width">메뉴명</th>
									<th class="price_width">가격 (원)</th>
									<th class="menu_delete_width">메뉴 삭제</th>

								</tr>
							</thead>
							<c:forEach items="${menuManage}" var="list">
								<tr>
									<td><c:out value="${list.seq}" /></td>
									<td><c:choose>
											<c:when test="${list.category == 1}">위스키</c:when>
											<c:when test="${list.category == 2}">칵테일</c:when>
											<c:when test="${list.category == 3}">맥주</c:when>
											<c:when test="${list.category == 4}">음료</c:when>
											<c:when test="${list.category == 5}">안주</c:when>
											<c:otherwise>기타</c:otherwise>
										</c:choose></td>
									<td><c:out value="${list.menu}" /></td>
									<td>
            							<fmt:formatNumber value="${list.price}" type="number" groupingUsed="true" pattern="#,##0"/>
        							</td>
									<td><button class="dbtn">삭제</button></td>

								</tr>
							</c:forEach>
						</table>
					</div>

					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<script>
	//메뉴 삭제 아작스
	 $(document).ready(function(){
		    // 메뉴 삭제 이벤트 위임
		    $(document).on("click", ".dbtn", function(e){
		        e.preventDefault();
		        
		        var currentRow = $(this).closest('tr');
		        var seq = currentRow.find('td:first').text(); // 삭제할 메뉴의 식별 번호 추출

		        // AJAX를 사용하여 삭제 요청을 서버에 전송
		        $.ajax({
		            url: '/pos/menuDelete',
		            type: 'POST',
		            data: { seq: seq },
		            success: function(response) {
		                // 성공 시 처리 로직
		                alert("삭제가 완료되었습니다.");
		                currentRow.remove(); // 메뉴 목록에서 해당 행 제거
		            },
		            error: function() {
		                // 실패 시 처리 로직
		                alert("삭제에 실패했습니다.");
		            }
		        });
		    });
		});
	
	//메뉴 등록 확인
		$(document).ready(function() {

			let eResult = '<c:out value="${enroll_result}"/>';

			checkResult(eResult);

			function checkResult(result) {

				if (result === '') {
					return;
				}

				alert("메뉴'" + eResult + "'을 등록하였습니다.");

			}

		});
	</script>

</body>
</html>
