<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ORDER MAIN</title>
<link rel="stylesheet" href="../resources/css/order/menuDetail.css">

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
					<c:if test="${ table != null }">
						<div class="login_success_area">
							<span>테이블번호 : ${table.table_id}</span>
						</div>
					</c:if>
					<li><a href="/member/logout.do">로그아웃</a></li>
				</ul>
			</div>
			<!-- top_subject_area -->
			<div class="order_top_wrap">
				<span>QRRO ORDER MAIN</span>

			</div>
			<!-- contents-area -->
			<div class="order_wrap">
				<!-- 네비영역 -->
				<div class="order_navi_wrap">
					<ul>
						<li><a class="order_list_01" href="/order/orderMain">위스키
						</a></li>
						<li><a class="order_list_02" href="/order/orderMain2">칵테일</a>
						</li>
						<lI><a class="order_list_03" href="/order/orderMain3">비어</a>
						</lI>
						<lI><a class="order_list_04" href="/order/orderMain4">안주</a>
						</lI>
						<lI><a class="order_list_05" href="/order/orderMain5">음료</a>
						</lI>
					</ul>
				</div>

				<div class="order_content_wrap">
    <div class="order_menu_item">
        <img src="<c:url value='/resources/upload/${menuDetail.npic_2}'/>" alt="${menuDetail.menu}" />
    </div>
    <div class="order_menu_item2">
       <img src="<c:url value='/resources/upload/${menuDetail.npic_1}'/>" alt="${menuDetail.menu}" />
        <div class="menu_name">
            <br><c:out value="${menuDetail.menu}" />
        </div>
        <div class="menu_price">
            <br> ￦ <fmt:formatNumber value="${menuDetail.price}" type="number" groupingUsed="true" pattern="#,##0" />
        </div>
        <button type="button" class="add-to-cart">담기</button> 
    </div>
</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>

</body>
</html>
