<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>로그인 - All Review</title>
	
	<!-- naverAPI -->
	<script type="text/javascript" src="https://static.nid.naver.com/js/naverLogin_implicit-1.0.2.js" charset="utf-8"></script>
	
	
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="/css/mdb.min.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
	<link href="/css/style.css" rel="stylesheet">
	<link href="/css/my-login.css" rel="stylesheet" type="text/css">
	<script
	  src="https://code.jquery.com/jquery-3.4.1.js"
	  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
	  crossorigin="anonymous">
	</script>
	
</head>
<body>

	<section class="my-login-page h-100">
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper" style = "width : 400px;">
					<div class="brand">
					<!-- 로그인 화면 로고이미지	 -->
					<a href="/main">
						<img src="/img/logo/blacklogo.png" alt="logo" style="width:150px;">
					</a>
					</div>

					<div class="card fat">
						<div class="card-body">
							<form method="POST" class="my-login-validation" action="/user/login" id="formtag">
								
								<div class="form-group">
									<div class="md-form">
										<input type="text" class="form-control" id="email" name="email">
										<label for="email">Email</label>
									</div>
									<div class="invalid-feedback">
										이메일이 옳지 않습니다.
									</div>
								</div>

								<div class="form-group">
										<div class="md-form">
												<input type="password" class="form-control" id="password" name="password">
												<label for="password">Password</label>
										</div>
							
 								    <div class="invalid-feedback">
								    	비밀번호 입력이 필요합니다.
							    	</div>
								</div>

								<div class="form-group">
									<div class="custom-checkbox custom-control">
										<input type="checkbox" name="remember" id="remember" class="custom-control-input">
										<label for="remember" class="custom-control-label">아이디 저장</label>
									</div>
								</div>

								<div class="form-group m-0">
									<button type="submit" class="btn btn-primary w-100 m-0" id="loginBtn">
										로그인
									</button>
								</div>
								
								
								<!-- API 로그인 로고 -->
								<div class = "api_login mt-3 d-flex flex-row jusfiy-content-center">
									<div class="view overlay col-3 p-0"
									onclick="location.href='https://www.facebook.com/v3.2/dialog/oauth?client_id=432794210621575&redirect_uri=http://localhost:8000/user/oauth/facebook&response_type=code'">
										<a href="#">
											<img src="/img/all_review_img/facebook.png" width="60px">
										</a>									
										<div class="mask flex-center rgba-white-light">
										</div>
									</div>

									<div class="view overlay col-3 p-0" onclick="location.href='https://kauth.kakao.com/oauth/authorize?client_id=4d8be14468ba52dd371e3720b6c97958&redirect_uri=http://localhost:8000/user/oauth/kakao&response_type=code&scope=account_email,age_range,birthday,gender'">
										<a href="">
											
											<img src="/img/all_review_img/kakao.png" width="60px">
										</a>
										<div class="mask flex-center rgba-white-light">
										</div>
									</div>

									<div class="view overlay col-3 p-0" onclick="location.href='https://accounts.google.com/o/oauth2/auth?client_id=965189490710-v4c0vpevad5c2m825dlombqvcv8l8evm.apps.googleusercontent.com&redirect_uri=http://localhost:8000/user/oauth/google&response_type=code&scope=https://www.googleapis.com/auth/userinfo.profile'">
										<a href="#">
											<img src="/img/all_review_img/google.png"width="60px">
										</a>								
										<div class="mask flex-center rgba-white-light">
										</div>
									</div>

									<div class="view overlay col-3 p-0"
										onclick="location.href='https://nid.naver.com/oauth2.0/authorize?response_type=code&client_id=od8MnK4Tb6sAdnv6ZeIT&redirect_uri=http://localhost:8000/user/oauth/naver&state=${state}'">
										<a href="">
										<img src="/img/all_review_img/naver.PNG"width="60px">
										</a>									
										<div class="mask flex-center rgba-white-light">
										</div>	
									</div>
								</div>

								<!-- 회원가입, 아이디/비밀번호 찾기 -->
								<div class="mt-4" style="margin: 0 40px">
									<a href="/user/registerForm">회원가입</a>
									
									<a href="/user/forgotForm" class="float-right">
										아이디/비밀번호 찾기
									</a>
								</div>
							</form>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2019 &mdash; All Review
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
<script>

		$(document).ready(function(){
			
		    var userInputId = getCookie("userInputId");
		    $("input[name='email']").val(userInputId); 
		     
		    if($("input[name='email']").val() != ""){ 
		        $("#remember").attr("checked", true); 
		    }
		     
		    $("#remember").change(function(){ 
		        if($("#remember").is(":checked")){ 
		            var userInputId = $("input[name='email']").val();
		            setCookie("userInputId", userInputId, 7); 
		        }else{
		            deleteCookie("userInputId");
		        }
		    });
		     
		  
		    $("input[name='email']").keyup(function(){ 
		        if($("#remember").is(":checked")){ 
		            var userInputId = $("input[name='email']").val();
		            setCookie("userInputId", userInputId, 7); 
		        }
		    });
		});
		 
		function setCookie(cookieName, value, exdays){
		    var exdate = new Date();
		    exdate.setDate(exdate.getDate() + exdays);
		    var cookieValue = escape(value) + ((exdays==null) ? "" : "; expires=" + exdate.toGMTString());
		    document.cookie = cookieName + "=" + cookieValue;
		}
		 
		function deleteCookie(cookieName){
		    var expireDate = new Date();
		    expireDate.setDate(expireDate.getDate() - 1);
		    document.cookie = cookieName + "= " + "; expires=" + expireDate.toGMTString();
		}
		 
		function getCookie(cookieName) {
		    cookieName = cookieName + '=';
		    var cookieData = document.cookie;
		    var start = cookieData.indexOf(cookieName);
		    var cookieValue = '';
		    if(start != -1){
		        start += cookieName.length;
		        var end = cookieData.indexOf(';', start);
		        if(end == -1)end = cookieData.length;
		        cookieValue = cookieData.substring(start, end);
		    }
		    return unescape(cookieValue);
		}
		
</script>
	/*  끝*/
	
	
	
	
	
	
	
	
	
	
	
	

	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/js/mdb.min.js"></script>

	
	
</body>
</html>