<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>회원가입 - All Review</title>

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<!-- Bootstrap core CSS -->
<link href="/css/bootstrap.min.css" rel="stylesheet">
<!-- Material Design Bootstrap -->
<link href="/css/mdb.min.css" rel="stylesheet">
<!-- Your custom styles (optional) -->
<link href="/css/style.css" rel="stylesheet">
<link href="/css/my-login.css" rel="stylesheet" type="text/css">
</head>
<body>
	<section class="my-login-page h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper" style="width: 400px;">
						<!-- 로고 -->
					<div class="brand">
						<a href="/main"> <img src="/img/logo/blacklogo.png" alt="bootstrap 4 login page" style="width: 150px;"></a>
					</div>
					
					<div class="card fat">
						<div class="card-body">
							<!-- 회원가입 시작 -->
							<h4 class="card-title" style="margin: 0;">회원가입</h4>
							<hr style="border: solid 1px; color: rgb(190, 186, 186)">
<!-- form으로 등록정보 보내기 -->
							<form method="POST" class="my-login-validation" name="register_Form" onsubmit ="return insert_Check()" action="/user/register">
							
						
								<div>
									
<!-- 1. 이메일 입력 및 인증하기 버튼-->
								<div class="form-group">
										<div class="md-form" style="display: flex; margin: 0px;">
											<input type="text" class="form-control" id="email" name="email" style="width: 69%;"> <label for="email">이메일*</label>
											<!-- 중복체크 아이디 넘김 -->
											<input type="button" class="btn btn-primary btn-sm" value="인증하기 " id="idDupCheck">
										</div>
										
<!-- 이메일 안내메세지 -->
												<div style="display: none; color: red; font-size: 13px;"
													id="email_overlap">이미 사용중인 이메일 입니다.</div>
													
												<div style="display: none; color: red; font-size: 13px;"
													id="email_none">이메일을 입력해주세요</div>
		
												<div style="display: none; color: blue; font-size: 13px;"
													id="email_true">사용가능한 이메일입니다.</div>
		
												<div style="display: none; color: red; font-size: 13px;"
													id="email_false">이메일형식이 아닙니다.</div>
<!-- 이메일 인증번호 -->
										<div class="md-form" style="display: flex;">
											<input type="text" class="form-control" id="email_Check_num" name="email_Check_num" style="width: 50%;"> 
												<label for="email_Check_num">이메일 인증 번호 *</label>

										</div>
									
											
<!-- 이메일 인증번호 메세지 -->
										<div style="display: none; color: blue; font-size: 13px;"
											id="email_Check_num_true" value="1">인증번호가 일치합니다.</div>

										<div style="display: none; color: red; font-size: 13px;"
											id="email_Check_num_false" value="0">인증번호가 일치하지 않습니다.</div>
								</div>
								
								
										<div>
										<script type="text/javascript">
// 이메일 인증 시간 카운트										
// 											window.onload = function() {
// 												var AuthTimer = new $ComTimer();
// 												AuthTimer.comSecond =180;
// 												AuthTimer.fnCallback =function(){
// 													alert("다시 인증을 시도해주세요");
// 												}
// 												AuthTimer.timer = setInterval('AuthTimer.fnTimer()',1000);
// 												AuthTimer.domId = document.getElementById("timer");
// 											}
										</script>

									   </div>

<!-- 2. 비밀번호 입력 및 비밀번호 확인-->
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
										<div style="display: none; color: black; font-size: 13px;"
											id="pwCheck_check"> 비밀번호 입력이 필요합니다.</div>
										<div style="display: none; color: red; font-size: 13px;"
											id="pwCheck_false">비밀번호가 일치하지 않습니다.</div>
										<div style="display: none; color: blue; font-size: 13px;"
											id="pwCheck_true">비밀번호가 일치합니다
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
											<input type="text" class="form-control" id="nickname"
												name="nickname" style="width: 69%;"> <label
												for="nickname">닉네임 *</label> <input type="button"
												class="btn btn-primary btn-sm" value="중복체크"
												id="nicknameDupCheck" name="nickname_Check">
										</div>
<!-- 닉네임 안내메세지 -->
										<div style="display: none; color: red; font-size: 13px;"
											id="nickname_none">닉네임 입력이 필요합니다</div>

										<div style="display: none; color: blue; font-size: 13px;"
											id="nickname_true" value="1">닉네임 사용 가능합니다.</div>

										<div style="display: none; color: red; font-size: 13px;"
											id="nickname_false" value="0">닉네임 중복입니다.</div>
									</div>


<!-- 5.성별 -->
									<div class="form-group">
										<div>성별*</div>
										<div class="custom-control custom-radio custom-control-inline"
											style="margin-left: 50px">
											<input type="radio" class="custom-control-input" id="defaultInline1" name="gender" value="1"> 
											<label class="custom-control-label" for="defaultInline1">남자</label>
										</div>

										<div class="custom-control custom-radio custom-control-inline" style="margin-left: 10px">
											<input type="radio" class="custom-control-input" id="defaultInline2" name="gender" value="0"> 
										<label class="custom-control-label" for="defaultInline2">여자</label>
										</div>
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
									
									
<!--연령확인 -->
						<div>연령*</div>
						<div class="form-group my-3 ml-3" style="font-size: 10px" >	
						<div class="btn-group btn-group-toggle btn-group-sm  text-centerbalign-self-center" data-toggle="buttons">
							<label class="btn btn-light-blue form-check-label active"> <input type="radio"name="ageRange" class="form-check-label btn-sm" value="1" checked>10대</label> 
							<label class="btn btn-light-blue"> <input type="radio"name="ageRange" class="form-check-label btn-sm" value="2">20대</label>
							<label class="btn btn-light-blue"> <input type="radio"name="ageRange" class="form-check-label btn-sm" value="3">30대</label>
							<label class="btn btn-light-blue"> <input type="radio"name="ageRange" class="form-check-label btn-sm" value="4">40대</label>
							<label class="btn btn-light-blue"> <input type="radio"name="ageRange" class="form-check-label btn-sm" value="5">50대</label>
							<label class="btn btn-light-blue"> <input type="radio"name="ageRange" class="form-check-label btn-sm" value="6" >60대 이상</label>
						</div>
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
									<button type="submit" class="btn btn-primary btn-block" id="join" >회원가입</button>
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


	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/js/mdb.min.js"></script>
	<!--sns API Script-->
	<!-- jQuery -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.0.js"
		integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
		crossorigin="anonymous">
		
	</script>
	<script type="text/javascript" src="https://cdn.emailjs.com/sdk/2.3.2/email.min.js"></script>


	<!--우편 번호API-->
	<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
	<script>
		function addr_search() {
			new daum.Postcode(
					{
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
		
		
	</script>


	<!--SMS  후대폰 본인인증 API-->
	<script>
		IMP.init('imp76278587');
		// 		<!--SMS API 필요한것 end-->

		IMP.certification({
			merchant_uid : 'imp76278587' + new Date().getTime(),
			popup : true
		}, function(rsp) {
			if (rsp.success) {
				// 인증성공
				console.log(rsp.imp_uid);
				console.log(rsp.merchant_uid);

				$.ajax({
					type : 'POST',
					url : '/certifications/confirm',
					dataType : 'json',
					data : {
						imp_uid : rsp.imp_uid
					}
				}).done(function(rsp) {
					// 이후 Business Logic 처리하시면 됩니다.
				});

			} else {
				// 인증취소 또는 인증실패
				var msg = '인증에 실패하였습니다.';
				msg += '에러내용 : ' + rsp.error_msg;

				alert(msg);
			}
		});
	</script>

	<!-- start-->
	<script>
		//시간 인증 타이머
		function $ComTimer(){
			
		}
		$ComTimer.prototype ={
			comSecond : "",
			fnCallback : function(){},
			timer : "",
			domId : "",
			fnTimer : function(){
				var m = Math.floor(this.comSecond /60) +"분" + (this.comSecond % 60) +"초";
				this.comSecond--;
				console.log(m);
				this.domId.innerText = m;
				if(this.comSecond <0){
					clearInterval(this.timer);
					alert("인증시간이 초과하였습니다. 다시 인증해주시기 바랍니다")
				}
			}
			,fnStop : function(){
				clearInterval(this.timer);
			}
		
		}
		
		
		
		function regular() {
			//이메일 정규식
			var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

			if ($("#email").val() == "") {
				$("#email_overlap").css('display','none');
				$("#email_none").css('display','none');
				$("#email_false").css('display', 'none');
				$("#email_true").css('display', 'none');
			} else if (regExp.test($("#email").val()) == true) {
				$("#email_overlap").css('display','none');
				$("#email_none").css('display','none');
				$("#email_false").css('display', 'none');
				$("#email_true").css('display', 'inline');
			} else {
				$("#email_overlap").css('display','none');
				$("#email_none").css('display','none');
				$("#email_true").css('display', 'none');
				$("#email_false").css('display', 'inline');
			}
		}
		
			$("#password").change(function(){
				pwRegular();
			});
		
			 function pwRegular(){
				//8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.
				var regPW = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{8,16}$/i;
				//패스워드가 비워 있음
				if($("#password").val() ==""){
					$("#pw_regular_true").css('display', 'none');
					$("#pw_regular_false").css('display', 'none');
					return false;
				}
				//정규표현식에 맞지않음
				if((regPW.test($('#password').val())) != true){
					$("#pw_regular_true").css('display', 'none');
					$("#pw_regular_false").css('display', 'inline');
					return false;
				}
				//정규표현식에 맞음
					$("#pw_regular_true").css('display', 'inline');
					$("#pw_regular_false").css('display', 'none');
					return true;		
			}

		//비밀번호 확인
		function PwCheck() {
			if ($("#password").val() == "" || $("#pwCheck").val() == "") {
				$("#pwCheck_true").css('display', 'none');
				$("#pwCheck_false").css('display', 'none');
// 				$("#pwCheck_check").css('display', 'inline');
				return false;
			} else if ($("#password").val() == $("#pwCheck").val()) {
				$("#pwCheck_true").css('display', 'inline');
				$("#pwCheck_false").css('display', 'none');
				$("#pwCheck_check").css('display', 'none');
				return true;
			} else {
				$("#pwCheck_true").css('display', 'none');
				$("#pwCheck_false").css('display', 'inline');
				$("#pwCheck_check").css('display', 'none');
				return false;
			}
		}
		
		//이메일 중복체크
		$('#email').focusout(function(){
			$.ajax({
				url : "/user/emailOverlap",
				data : {
					email : $("#email").val()
				},
				type : "POST",
				dataType:"text",
				success : function(data) {
					var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
					
					if(regExp.test($("#email").val()) == true && data == "true"){
						$("#email_overlap").css('display','none');
						$("#email_false").css('display', 'none');
						$("#email_none").css('display','none');
						$("#email_true").css('display', 'inline');
						$('#idDupCheck').click(function(e){
							e.preventDefault();
						}).prop("disabled",false);
						e_mail();
					}else if($("#email").val() == ""){
						$("#email_overlap").css('display','none');
						$("#email_none").css('display','inline');
						$("#email_false").css('display', 'none');
						$("#email_true").css('display', 'none');
						$('#idDupCheck').click(function(e){
							e.preventDefault();
						}).prop("disabled",true);
						return false;
					}else if(data == "false"){
						$("#email_none").css('display','none');
						$('#email_false').css('display', 'none');
						$('#email_true').css("display","none");
						$("#email_overlap").css('display','inline');
						
						$('#idDupCheck').click(function(e){
							e.preventDefault();
						}).prop("disabled",true);
						return false;
					}else{
						$("#email_overlap").css('display','none');
						$("#email_none").css('display','none');
						$("#email_true").css('display', 'none');
						$("#email_false").css('display', 'inline');
						
						$('#idDupCheck').click(function(e){
							e.preventDefault();
						}).prop("disabled",true);
						return false;
					}
				}
			})
		})
		
		//닉네임 중복체크
		$("#nicknameDupCheck").click(function() {
			$.ajax({
				url : "/user/nickNameCheck", // 클라이언트가 요청을 보낼 서버의 URL 주소
				data : {
					nickname : $("#nickname").val()
				}, // HTTP 요청과 함께 서버로 보낼 데이터
				type : "POST", // HTTP 요청 방식(GET, POST)
				dataType : "text", // 서버에서 보내줄 데이터의 타입
				async : false,
				success : function(data) {
					nickname_Check(data);
					return true;
				}
			})
		})
		function nickname_Check(data) {
			if (data == "true") {
				$("#nickname_false").css('display', 'none');
				$("#nickname_none").css('display', 'none');
				$("#nickname_true").css('display', 'inline');
				window.nickNameStatus = true;
			} else if (data == "false") {
				$("#nickname_false").css('display', 'inline');
				$("#nickname_none").css('display', 'none');
				$("#nickname_true").css('display', 'none');
				window.nickNameStatus = false;
			}
			if ($("#nickname").val() == "") {
				$("#nickname_none").css('display', 'inline');
				$("#nickname_true").css('display', 'none');
				$("#nickname_false").css('display', 'none');
			}
		}
		
		function e_mail() {
			$("#idDupCheck").on("click", function() {
				$.ajax({
					url : "/user/emailCheck",
					data : {
						email : $("#email").val()
					},
					async : false,
					type : "POST",
					dataType : "text",

					success : function(data) {
						emailCheck(data);
						return true;
					}
				})
			})
		}
		$('#pwCheck').focusout(function() {
			PwCheck();
		});
		$('#password').focusout(function() {
			pwRegular();
			PwCheck();
		});
		//이메일 인증번호 맞는지 확인

		function emailCheck(Check_num) {
			alert("인증번호가 달려가고 있어요!! :)");
			// 나중에 인증번호 삭제해야함!!
			alert("emailcheck : "+Check_num);
			$('#email_Check_num').focusout(function() {
				if (Check_num == $("#email_Check_num").val()) {
					$('#email_Check_num_false').css('display', 'none');
					$('#email_Check_num_true').css('display', 'inline');
					window.emailAuthStatus = true;
					return true;
				} else {
					$('#email_Check_num_true').css('display', 'none');
					$('#email_Check_num_false').css('display', 'inline');
					window.emailAuthStatus = false;
					return false;
				}
			});
		}
		
		var nickNameStatus = false;	
		var emailAuthStatus = false;
		
		function insert_Check() {
			console.log(window)
		// 성별, 주소, 휴대폰번호
			if (
				//이메일, 비밀번호,  비밀번호 확인 ,	이름, 닉네임, 핸드폰, 주소 코드
 				(($("#email").val() && $("#password").val()&& $("#pwCheck").val() && $("#name").val() && $("#nickname").val() && $("#phone").val() && $("#addr_code").val() ) !="")
 				// 성별 체크
				&& (($(':input[name=gender]:radio:checked').val() == 1 || $(':input[name=gender]:radio:checked').val() == 0) != "") 
 				// 비번 같은지 여부 확인
				&& ($("#password").val() == $("#pwCheck").val()) 
 				// 닉네임 중복확인
				&& window.nickNameStatus == true 
 				// 이메일 중복확인
				&& window.emailAuthStatus == true
				
 			) {
				alert("조건충족!! 가입해 주셔서 감사합니다. :)");
				return true;
			}else{
				alert("입력과 인증을 모두 해주셔야 합니다.");
				return false;
			}
		}

	
		
		
//			if (				
//		($("#email_true").css('display') == "inline") == true
//		&& ($('#email_Check_num_true').css('display') == 'inline') == true
//		&& ($('#pwCheck_true').css('display') == "inline") == true
//		&& ($('#nickname_true').css('display') == "inline") == true
//		&& ($('#defaultInline1').prop('checked') == true || $('#defaultInline2').prop("checked") == true)
//	) {
//		$('#join').removeAttr('disabled');
//	}else{
//		$('#join').attr('disabled','true');
//	}
	
	</script>
	<!-- end-->
</body>
</html>