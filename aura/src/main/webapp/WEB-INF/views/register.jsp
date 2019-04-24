<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
							<form method="POST" class="my-login-validation" novalidate="">

								<div class="form-group">
									<div class="md-form" style="display: flex;">
										<input type="text" class="form-control" id="email" style="width:69%;">
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
										<input type="password" class="form-control" id="password">
										<label for="password">비밀번호 *</label>
									</div>
									<div class="invalid-feedback">
										비밀번호 입력이 필요합니다.
									</div>
								</div>

								<div class="form-group">
									<div class="md-form">
										<input type="password" class="form-control" id="password_confirm">
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
										<input type="text" class="form-control" id="name">
										<label for="name">이름 *</label>
									</div>
									<div class="invalid-feedback">
										이름 입력이 필요합니다
									</div>
								</div>


								<div class="form-group">
									<div class="md-form" style="display: flex">
										<input type="text" class="form-control" id="nickname" style="width:69%;">
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
											name="gender">
										<label class="custom-control-label" for="defaultInline1">남자</label>
									</div>

									<div class="custom-control custom-radio custom-control-inline"
										style="margin-left: 10px">
										<input type="radio" class="custom-control-input" id="defaultInline2"
											name="gender">
										<label class="custom-control-label" for="defaultInline2">여자</label>
									</div>
								</div>

								<div class="form-group">
									<div class="md-form">
										<input type="text" class="form-control" id="phone">
										<label for="phone">휴대폰 번호 *</label>
									</div>
									<div class="invalid-feedback">
										휴대폰번호 입력이 필요합니다
									</div>
								</div>

								<div class="form-group">
									<div class="md-form" style="display: flex">
										<input type="text" class="form-control" id="address" style="width:69%;">
										<label for="address">주소(선택)</label>
										<input type="button" class="btn btn-primary btn-sm" value="주소검색"
											id="address_find">
									</div>
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
</body>
</html>