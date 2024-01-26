<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/pos/storeUpdate.css">
<script src="https://code.jquery.com/jquery-3.4.1.js"
	integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	crossorigin="anonymous"></script>
</head>
<body>

	<div class="wrapper">
		<form id="update_form"  method="post">
			<c:forEach items="${storeManage}" var="list"> 
			<div class="wrap">
				<div class="subjecet">
					<span>업장 정보 수정</span>
				</div>
				<div class="id_wrap">
					<div class="id_name">관리자 계정</div>
					<div class="id_input_box">
						<input class="id_input" name="memberId" value="${list.memberId}" readonly="readonly">
						
					</div>
					<span class="id_input_re_1">사용 가능한 아이디입니다.</span> <span
						class="id_input_re_2">아이디가 이미 존재합니다.</span> <span
						class="final_id_ck">아이디를 입력해주세요.</span>
				</div>
				<div class="pw_wrap">
					<div class="pw_name">비밀번호</div>
					<div class="pw_input_box">
						<input class="pw_input" name="memberPw" value="${list.memberPw}">
					</div>
					<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
				</div>
				<div class="pwck_wrap">
					<div class="pwck_name">비밀번호 확인</div>
					<div class="pwck_input_box">
						<input class="pwck_input">
					</div>
					<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span> <span
						class="pwck_input_re_1">비밀번호가 일치합니다.</span> <span
						class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
				</div>
				<div class="store_wrap">
					<div class="store_name">업장명</div>
					<div class="store_input_box">
						<input class="store_input" name="storeName" value="${list.storeName}">
					</div>
					<span class="final_store_ck">업장명을 입력해주세요.</span>
				</div>

				<div class="address_wrap">
					<div class="address_name">주소</div>
					<div class="address_input_1_wrap">
						<div class="address_input_1_box">
							<input class="address_input_1" name="memberAddr1"  value="${list.memberAddr1}"
								readonly="readonly">
						</div>
						<div class="address_button" onclick="execution_daum_address()">
							<span>주소 찾기</span>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="address_input_2_wrap">
						<div class="address_input_2_box">
							<input class="address_input_2" name="memberAddr2"  value="${list.memberAddr2}"
								readonly="readonly">
						</div>
					</div>
					<div class="address_input_3_wrap">
						<div class="address_input_3_box">
							<input class="address_input_3" name="memberAddr3"  value="${list.memberAddr3}">
						</div>
					</div>
					<span class="final_addr_ck">주소를 입력해주세요.</span>
				</div>
				<div class="num_wrap">
					<div class="num_name">사업자번호</div>
					<div class="num_input_box">
						<input class="num_input" name="storeNum"  value="${list.storeNum}">
					</div>
					<span class="final_num_ck">사업자번호를 입력해주세요.</span>
				</div>
				<div class="user_wrap">
					<div class="user_name">대표명</div>
					<div class="user_input_box">
						<input class="user_input" name="memberName"  value="${list.memberName}">
					</div>
					<span class="final_user_ck">사업주 이름을 입력해주세요.</span>
				</div>
				<div class="tel_wrap">
					<div class="tel_name">사업장 전화번호</div>
					<div class="tel_input_box">
						<input class="tel_input" name="storeTel"  value="${list.storeTel}">
					</div>
					<span class="final_tel_ck">사업장 전화번호를 입력해주세요.</span>
				</div>
				<div class="update_button_wrap">
					<input type="button" class="update_button" value="수정완료">
					<input type="button" class="cancel_button" value="수정취소">
				</div>
			</div>
			</c:forEach>
		</form>
		
		
	</div>

	<!-- 다음 주소록 API를 사용하기 위해 join.jsp에 외부 스크립트 파일을 연결하는 코드를 추가-->
	<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

	<script>
		/* 유효성 검사 통과유무 변수 */
		
		var idckCheck = false; // 아이디 중복 검사
		var pwCheck = false; // 비번
		var pwckCheck = false; // 비번 확인
		var pwckcorCheck = false; // 비번 확인 일치 확인
		var storeCheck = false; // 업장 이름
		var addressCheck = false // 주소
		var numCheck = false; // 사업자번호
		var nameCheck = false; // 대표이름
		var telCheck = false; // 사업장 전화번호
		
		/*수정취소 버튼 */
		$(document).ready(function() {
		    // 수정 취소 버튼 클릭 이벤트 핸들러
		    $(".cancel_button").on("click", function() {
		        // `/pos/storeUpdate`로 페이지 이동
		        window.location.href = "/pos/storeManage";
		    });
		});
						
		/*수정하기 버튼*/
		$(document).ready(function() {
			$(".update_button").on("click", function() {

				/* 입력값 변수 */
				
				var pw = $('.pw_input').val(); // 비밀번호 입력란
				var pwck = $('.pwck_input').val(); // 비밀번호 확인 입력란
				var store = $('.store_input').val(); // 업장 이름 입력란
				var addr = $('.address_input_3').val(); // 주소 입력란
				var num = $('.num_input').val(); // 사업자번호 입력란
				var user = $('.user_input').val(); // 대표 이름 입력란
				var tel = $('.tel_input').val(); // 사업장 전화번호 입력란

				
				/* 비밀번호 유효성 검사 */
				if (pw == "") {
					$('.final_pw_ck').css('display', 'block');
					pwCheck = false;
				} else {
					$('.final_pw_ck').css('display', 'none');
					pwCheck = true;
				}
				/* 비밀번호 확인 유효성 검사 */
				if (pwck == "") {
					$('.final_pwck_ck').css('display', 'block');
					pwckCheck = false;
				} else {
					$('.final_pwck_ck').css('display', 'none');
					pwckCheck = true;
				}
				 /* 업장명 유효성 검사 */
		        if(store == ""){
		            $('.final_store_ck').css('display','block');
		            storeCheck = false;
		        }else{
		            $('.final_store_ck').css('display', 'none');
		            storeCheck = true;
		        }
		        /* 주소 유효성 검사 */
		        if(addr == ""){
		            $('.final_addr_ck').css('display','block');
		            addressCheck = false;
		        }else{
		            $('.final_addr_ck').css('display', 'none');
		            addressCheck = true;
		        }
		        /* 사업자번호 유효성 검사 */
		        if(num == ""){
		            $('.final_num_ck').css('display','block');
		            numCheck = false;
		        }else{
		            $('.final_num_ck').css('display', 'none');
		            numCheck = true;
		        }
		        /* 사업자명 유효성 검사 */
		        if(user == ""){
		            $('.final_user_ck').css('display','block');
		            nameCheck = false;
		        }else{
		            $('.final_user_ck').css('display', 'none');
		            nameCheck = true;
		        }
		        /* 업장 전화번호 유효성 검사 */
		        if(tel == ""){
		            $('.final_tel_ck').css('display','block');
		            telCheck = false;
		        }else{
		            $('.final_tel_ck').css('display', 'none');
		            telCheck = true;
		        }
		        /* 최종 유효성 검사 */
		        if(pwCheck&&pwckCheck&&pwckcorCheck&&storeCheck&& addressCheck&&numCheck&&nameCheck&&telCheck ){
		 
				$("#update_form").attr("action", "/pos/storeUpdate");
				$("#update_form").submit();
		        } 
		        
		        return false;

			});
		});
		
		

		/* 다음 주소 연동 */
		function execution_daum_address() {

			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.

							// 각 주소의 노출 규칙에 따라 주소를 조합한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var addr = ''; // 주소 변수
							var extraAddr = ''; // 참고항목 변수

							//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
							if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
								addr = data.roadAddress;
							} else { // 사용자가 지번 주소를 선택했을 경우(J)
								addr = data.jibunAddress;
							}

							// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
							if (data.userSelectedType === 'R') {
								// 법정동명이 있을 경우 추가한다. (법정리는 제외)
								// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
								if (data.bname !== ''
										&& /[동|로|가]$/g.test(data.bname)) {
									extraAddr += data.bname;
								}
								// 건물명이 있고, 공동주택일 경우 추가한다.
								if (data.buildingName !== ''
										&& data.apartment === 'Y') {
									extraAddr += (extraAddr !== '' ? ', '
											+ data.buildingName
											: data.buildingName);
								}
								// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
								if (extraAddr !== '') {
									extraAddr = ' (' + extraAddr + ')';
								}
								// 주소변수 문자열과 참고항목 문자열 합치기
								addr += extraAddr;

							} else {
								addr += ' ';
							}

							$(".address_input_1").val(data.zonecode);
							//$("[name=memberAddr1]").val(data.zonecode);    // 대체가능
							$(".address_input_2").val(addr);
							//$("[name=memberAddr2]").val(addr);            // 대체가능
							// 상세주소 입력란 disabled 속성 변경 및 커서를 상세주소 필드로 이동한다.
							$(".address_input_3").attr("readonly", false);
							$(".address_input_3").focus();
						}
					}).open();

		}

		/* 비밀번호 확인 일치 유효성 검사 */

		$('.pwck_input').on("propertychange change keyup paste input",
				function() {

					var pw = $('.pw_input').val();
					var pwck = $('.pwck_input').val();
					$('.final_pwck_ck').css('display', 'none');

					if (pw == pwck) {
						$('.pwck_input_re_1').css('display', 'block');
						$('.pwck_input_re_2').css('display', 'none');
						pwckcorCheck = true;
					} else {
						$('.pwck_input_re_1').css('display', 'none');
						$('.pwck_input_re_2').css('display', 'block');
						pwckcorCheck = false;
					}

				});
		/*입력 발생시 폰트컬러 블랙으로*/
		
		$(document).ready(function() {
		    $('input').on('input', function() {
		        $(this).css('color', 'black');
		    });
		});
	</script>

</body>
</html>