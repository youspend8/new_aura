<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>회원가입 - All Review</title>

	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
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
				<div class="card-wrapper" style="width : 400px;">
					<div class="brand">
						<!-- 로고 -->
						<a href="/main">
							<img src="/img/all_review_img/All Review 로고.png" alt="bootstrap 4 login page"
								style="width:150px;">
						</a>
					</div>
					<div class="card fat">
						<div class="card-body">
							<!-- 회원가입 시작 -->
							<h4 class="card-title" style="margin: 0;">회원가입</h4>
							<hr style="border : solid 1px; color:rgb(190, 186, 186) ">
							<form method="POST" class="my-login-validation" novalidate="" action="register">
								<div class="form-group">
									<div class="md-form" style="display: flex;">
										<input type="text" class="form-control" id="email" name="email" style="width:69%;">
										<label for="email">이메일 *</label>
										<!-- 중복체크 아이디 넘김 -->
										<input type="button" class="btn btn-primary btn-sm" value="중복체크" id="idDupCheck" >
									</div>
									<div class="invalid-feedback">
										이미 사용중인 이메일입니다.
									</div>
									<div class="invalid-feedback">
										상용 가능한 아이디 입니다.
									</div>
									
									<div style="display:none; color:blue; font-size:15px;" id="email_true">
										이메일형식이  맞습니다.
									</div>
									
									<div style="display:none; color:red; font-size:15px;" id="email_false">
										이메일형식이 아닙니다.
									</div>
									
									
								</div>

								<!-- 비밀번호 -->
								<div class="form-group">
									<div class="md-form">
										<input type="password" class="form-control" id="password" name="password">
										<label for="password">비밀번호 *</label>
									</div>
									<div class="invalid-feedback">
										비밀번호 입력이 필요합니다.
									</div>
								</div>

								<div class="form-group">
									<div class="md-form">
										<input type="password" class="form-control" id="pwCheck" name="pwCheck">
										<label for="pwCheck">비밀번호 확인 *</label>
									</div>
									<div style="display:none; color:red; font-size:15px;" id="pwCheck_check">
										비밀번호를 입력해주세요
									</div>
									<div style="display:none; color:red; font-size:15px;" id="pwCheck_false">
										비밀번호가 일치하지 않습니다.
									</div>
									
									<div style="display:none; color:blue; font-size:15px;" id="pwCheck_true" >
										비밀번호가 일치합니다
									</div>
								</div>

								<div class="form-group">
									<div class="md-form">
										<input type="text" class="form-control" id="name" name="name">
										<label for="name">이름 *</label>
									</div>
									<div class="invalid-feedback">
										이름 입력이 필요합니다
									</div>
								</div>


								<div class="form-group">
									<div class="md-form" style="display: flex;">
										<input type="text" class="form-control" id="nickname" name="nickname" style="width:69%;">
										<label for="nickname">닉네임 *</label>
										<input type="button" class="btn btn-primary btn-sm" value="중복체크" id="nicknameDupCheck" name="nickname_Check">

									</div>
									<div style="display:none; color:red; font-size:15px;" id="nickname_none">
										닉네임 입력이 필요합니다
									</div>
									
									<div style="display:none; color:red; font-size:15px;" id="nickname_false">
										닉네임 중복입니다.
									</div>
									
									<div style="display:none; color:blue; font-size:15px;" id="nickname_true">
										닉네임 사용 가능합니다.
									</div>
								</div>

								<div class="form-group">

									<div>성별*</div>
									<div class="custom-control custom-radio custom-control-inline"
										style="margin-left: 50px">
										<input type="radio" class="custom-control-input" id="defaultInline1"
											name="gender" value="1">
										<label class="custom-control-label" for="defaultInline1">남자</label>
									</div>

									<div class="custom-control custom-radio custom-control-inline"
										style="margin-left: 10px">
										<input type="radio" class="custom-control-input" id="defaultInline2"
											name="gender" value="0">
										<label class="custom-control-label" for="defaultInline2">여자</label>
									</div>
								</div>

								<div class="form-group">
									<div class="d-flex justify-content-between">
										<div class="md-form my-1">
											<input type="text" class="form-control" id="phone" name="tel">
											<label for="phone">휴대폰 번호 *</label>
										</div>	
										
										<div class="md-form my-1">
											<input type="button" class="btn btn-primary btn-sm" onclick="IMP.certification()" value="휴대폰   인증">
										</div>
									</div>
										
									<div class="invalid-feedback">
										휴대폰번호 입력이 필요합니다
									</div>
								</div>

								<div class="form-group">
									<!-- 주소 들어갈 곳  start-->
									<div class="d-flex justify-content-between">
										<div class="md-form my-1">
											<input type="text" class="form-control" id="addr_code" name="addr_code" placeholder="우편번호" readonly="readonly">
										</div>
										
										<div class="md-form my-1">
											<input type="button" class="btn btn-primary btn-sm" onclick="addr_search()" value="우편번호 찾기">
										</div>
									</div>
									
									<div class="md-form my-1">
										<input type="text" class="form-control" id="addr" name="addr" placeholder="주소" readonly="readonly">
									</div>
									
									<div class="md-form">
										<input type="text" class="form-control my-1" id="addr_Detail" name="addr_Detail">
										<label for="addr_Detail">상세주소</label>
									</div>
									
									<input type="hidden" class="form-control my-1" id="addr_refer" name="addr_refer">
									<!-- 주소 들어갈 곳 end-->
								</div>
						</div>
					</div>

					<div class="form-group">
						<button type="submit" class="btn btn-primary btn-block">
							회원가입
						</button>
					</div>
					<div class="mt-4 text-center">
						이미 가입하셨나요? <a href="/user/loginForm">로그인</a>
					</div>
					</form>

					<div class="footer">
						Copyright &copy; 2019 &mdash; Your All Review
					</div>
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
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
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
            oncomplete: function(data) {
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
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
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

		<!--SMS 본인인증 API-->
			
		
<script>
// 		<!--SMS API 필요한것 start-->
			IMP.init('imp76278587');
// 		<!--SMS API 필요한것 end-->
		
			IMP.certification({
			    merchant_uid : 'imp76278587' + new Date().getTime(),
			    popup : true
			}, function(rsp) {
			    if ( rsp.success ) {
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

	function regular(){
		//이메일 정규식
		var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

		if($("#email").val() == ""){
			$("#email_false").css('display', 'none');
			$("#email_true").css('display', 'none');
		}else if(regExp.test( $("#email").val() ) == true){
			$("#email_false").css('display', 'none');
			$("#email_true").css('display', 'inline');
		}else{
			$("#email_true").css('display', 'none');
			$("#email_false").css('display', 'inline');
		}
	}
	
	//비밀번호 확인
	function PwCheck(){
		if( $("#password").val() == "" || $("#pwCheck").val() == "" ){
			$("#pwCheck_check").css('display','inline');
			$("#pwCheck_false").css('display','none');
			$("#pwCheck_true").css('display','none');
		}else if( $("#password").val() == $("#pwCheck").val() ){
			$("#pwCheck_false").css('display','none');
			$("#pwCheck_true").css('display','inline');
			$("#pwCheck_check").css('display','none');
		}else{
			$("#pwCheck_true").css('display','none');
			$("#pwCheck_false").css('display','inline');
			$("#pwCheck_check").css('display','none');
		}
	}
	
	//닉네임 중복체크
	 $("#nicknameDupCheck").on("click", function() {
		$.ajax({
			url: "/user/nickNameCheck",								 // 클라이언트가 요청을 보낼 서버의 URL 주소
			data: { 
				nickname: $("#nickname").val() 
			},                // HTTP 요청과 함께 서버로 보낼 데이터
			type: "POST",                             			// HTTP 요청 방식(GET, POST)
			dataType: "text",       			// 서버에서 보내줄 데이터의 타입
			success : function(data) {
				console.log(data);
				if (data == "true") {
					$("#nickname_false").css('display','none');
					$("#nickname_none").css('display','none');
				    $("#nickname_true").css('display','inline');
				} else if(data == "false"){
					 $("#nickname_false").css('display','inline');
					 $("#nickname_none").css('display','none');
					 $("#nickname_true").css('display','none');
				}
				if($("#nickname").val() == ""){
					$("#nickname_none").css('display','inline');
					$("#nickname_true").css('display','none');
					$("#nickname_false").css('display','none');
				}
			},
			error : function() {
				alert("오류");
			}
		})
	 })
	$('#email').focusout(function(){
		regular();
	});
	$('#pwCheck').focusout(function(){
		PwCheck();
	})
	$('#password').focusout(function(){
		PwCheck();
	})
</script>
<!-- end-->






	
</body>
</html>