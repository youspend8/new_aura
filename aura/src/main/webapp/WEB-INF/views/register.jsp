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
										<input type="button" class="btn btn-primary btn-sm" value="중복체크" id="duplicate">

									</div>
									<div class="invalid-feedback">
										이미 사용중인 이메일입니다.
									</div>
									<div class="invalid-feedback">
										상용 가능한 아이디 입니다.
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
										<input type="password" class="form-control" id="password_confirm" name="pwCheck">
										<label for="password_confirm">비밀번호 확인 *</label>
									</div>
									<div class="invalid-feedback">
										비밀번호 확인 입력이 필요합니다.
									</div>
									<div class="invalid-feedback">
										비밀번호가 일치하지 않습니다.
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
									<div class="md-form" style="display: flex">
										<input type="text" class="form-control" id="nickname" name="nickname" style="width:69%;">
										<label for="nickname">닉네임 *</label>
										<input type="button" class="btn btn-primary btn-sm" value="중복체크" id="duplicate">

									</div>
									<div class="invalid-feedback">
										닉네임 입력이 필요합니다
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
									<div class="md-form">
										<input type="text" class="form-control" id="phone" name="tel">
										<label for="phone">휴대폰 번호 *</label>
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
	
	<!--우편 번호 검색 판업창을 뛰움-->

	
	

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
	
</body>
</html>