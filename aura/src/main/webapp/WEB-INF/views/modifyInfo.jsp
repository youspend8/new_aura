<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>All Review 정보수정</title>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="/css/mdb.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="/css/style.css" rel="stylesheet">
<!-- SCRIPTS -->
</head>

<body>

	<section class="my-modify-page h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper" style="width: 400px;">
					<div class="brand text-center my-5">
						<!-- 로고 -->
						<a href="/main"> <img src="/img/all_review_img/All Review 로고.png" alt="bootstrap 4 login page" style="width: 150px;"></a>
					</div>
					<div class="card fat">
						<div class="card-body">
							<!-- 회원가입 시작 -->
							<h4 class="card-title" style="margin: 0;">정보 수정</h4>
							<hr style="border: solid 1px; color: rgb(190, 186, 186)">
<!-- form으로 등록정보 보내기 -->
							<form method="POST" class="my-login-validation" name="register_Form" onsubmit ="return modify_Check()" action="/user/register">
							
						
								<div>
									<div class="form-group">
										<div class="md-form">
											<input type="password" class="form-control" id="password" name="password"> 
											<label for="password">비밀번호*</label>
										</div>
										
										<div style="display: none; color: green; font-size: 13px;" id="pw_regular_true"> 보안에 안전한 비밀번호 입니다. :)</div>
										<div style="display: none; color: red; font-size: 13px;" id="pw_regular_false"> 8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.</div>
										
											
									</div>
									
<!-- 비밀번호 확인 -->
									<div class="form-group">
										<div class="md-form">
											<input type="password" class="form-control" id="pwCheck" name="pwCheck"> 
											<label for="pwCheck">비밀번호 확인*</label>
										</div>
										
<!-- 비밀번호 안내메세지 -->
										<div id="pwd_msg" style="font-size:15px;" >
										
										</div>
										
									</div>
									
<!-- 3. 이름 입력 -->
									<div class="form-group">
										<div class="md-form">
											<input type="text" class="form-control" id="name" name="name">
											<label for="name">이름 *</label>
										</div>
										<div class="invalid-feedback">이름 입력이 필요합니다</div>
									</div>

<!-- 4. 닉네임입력 -->
									<div class="form-group">
										<div class="md-form" style="display: flex;">
											<input type="text" class="form-control" id="nickname" name="nickname" style="width: 69%;"> 
												<label for="nickname">닉네임 *</label>
											<input type="button"class="btn btn-primary btn-sm" value="중복체크"id="nicknameDupCheck" name="nickname_Check">
												
										</div>
										
										<div id="nickname_msg" style="font-size: 15px;">
									
										</div>
<!-- 닉네임 안내메세지 -->
									</div>
<!-- 6.휴대폰 번호 -->
									<div class="form-group">
										<div class="d-flex justify-content-between">
											<div class="md-form my-1">
												<input type="text" class="form-control" id="phone"
													name="tel"> <label for="phone">휴대폰 번호 *</label>
											</div>
										</div>
<!-- 휴대폰번호 입력 안내메세지 -->
										<div class="invalid-feedback">휴대폰번호 입력이 필요합니다</div>
									</div>

									<div class="form-group">
<!-- 7. 주소 들어갈 곳  start-->
										<div class="d-flex justify-content-between">
											<div class="md-form my-1">
												<input type="text" class="form-control" id="addr_code"
													name="addr_code" placeholder="우편번호" readonly="readonly">
											</div>

											<div class="md-form my-1">
												<input type="button" class="btn btn-primary btn-sm" id="postLink"
													onclick="addr_search()" value="우편번호 찾기">
											</div>
										</div>

										<div class="md-form my-1">
											<input type="text" class="form-control" id="addr" name="addr"
												placeholder="주소" readonly="readonly">
										</div>

										<div class="md-form">
											<input type="text" class="form-control my-1" id="addr_Detail"
												name="addr_Detail"> <label for="addr_Detail">상세주소</label>
										</div>

										<input type="hidden" class="form-control my-1" id="addr_refer" name="addr_refer">
										<!-- 주소 들어갈 곳 end-->
									</div>
								</div>

<!-- 8. 회원가입 등록으로 보내는 곳!! 확인 필요 -->
<!-- //disabled -->
								<div class="form-group">
									<button type="submit" class="btn btn-primary btn-block" id="join" >정보수정 완료</button>
								</div>
								<div class="mt-4 text-center">이미 가입하셨나요? <a href="/user/loginForm">로그인</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">Copyright &copy; 2019 &mdash; Your All Review</div>
					
				</div>
			</div>
		</div>
	</section>












	<!-- JQuery -->
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/js/mdb.min.js"></script>
	
	<script
		src="https://code.jquery.com/jquery-3.4.0.js"
		integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
		crossorigin="anonymous">
	</script>
	
	<!--우편 번호API-->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		function addr_search() {
			new daum.Postcode({
				oncomplete : function(data) {
					// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

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
						// 조합된 참고항목을 해당 필드에 넣는다.
						document.getElementById("addr_refer").value = extraAddr;

					} else {
						document.getElementById("addr_refer").value = '';
					}

					// 우편번호와 주소 정보를 해당 필드에 넣는다.
					document.getElementById('addr_code').value = data.zonecode;
					document.getElementById("addr").value = addr;
					// 커서를 상세주소 필드로 이동한다.
					document.getElementById("addr_Detail").focus();
				}
			}).open();
		}
		//비밀번호  정규식 확인
		function pwdCheck(){
			//8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.
			var regPW = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/i;
			var pwd_msg = $('#pwd_msg');
			
			if(regPW.test($('#password').val()) == true){
				pwd_msg.css('color','blue');
				pwd_msg.text('비밀번호 사용가능합니다.');
				passwordStatus = true;
			}else{
				pwd_msg.css('color','red');
				pwd_msg.text('비밀번호가 조건과 일치하지 않습니다.');
				passwordStatus = false;
			}
		}
		//비밀번호 2개의 값이 일치하는지
		function DoubleCheck(){
			var pwd_msg = $('#pwd_msg');
			if( $('#password').val() == $('#pwCheck').val() ){
				pwd_msg.css('color','blue');
				pwd_msg.text('비밀번호 사용가능합니다.');
				DoubleStatus = true;
			}else{
				pwd_msg.css('color','red');
				pwd_msg.text('비밀번호가 일치하지않습니다.');
				DoubleStatus = false;
			}
		}
		//비밀번호 정규식확인 이벤트 발생하는곳
		$('#password').change(function(){
			pwdCheck();
		})
		//비밀번호 2개 값 맞는지 확인하는 이벤트 발생하는곳
		$('#pwCheck').change(function(){
			DoubleCheck();
		})
		
		$('#nicknameDupCheck').click(function(){
			 $.ajax({
				 url : "/user/nickNameCheck",
				 data : {
					 nickname : $('#nickname').val()
				 },
				 type : "POST",
				 dataType : "text",
				 success : function(data){
					 //공백 정규식
					var pattern = /\s/g;
					var nickname_msg = $('#nickname_msg');
					if(data == "true"){
						nickname_msg.css('color','blue').text("닉네임사용 가능합니다.");
						nickNameStatus = true;
					}else if(data == null){
						nickname_msg.css('color','red').text("닉네임사용 입력해주세요");
						nickNameStatus = false;
					}
					else{
						nickname_msg.css('color','red').text("닉네임이 사용중입니다.");	
						nickNameStatus = false;
					}
				 }
			 })
		})
		
		
		var nickNameStatus = false;
		var passwordStatus = false;
		var DoubleStatus = false;
		
		function modify_Check(){
			if( 
					$('#password').val() == $('#pwCheck').val() && 
					window.nickNameStatus  == true &&
					window.passwordStatus == true
			){
				alert('정보수정 완료');
				console.log(nickNameStatus == true);
				console.log(passwordStatus == true);
				console.log(DoubleStatus == true);
				return true;
			}else
				alert('정보수정 실패');
				console.log(nickNameStatus == true);
				console.log(passwordStatus == true);
				console.log(DoubleStatus == true);
			
				return false;
		}
	</script>
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	${uservo.getEmail}
	
	
</body>
</html>