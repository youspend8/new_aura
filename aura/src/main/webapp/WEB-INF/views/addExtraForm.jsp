<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
	<div class="container d-flex align-items-center flex-column mt-5">
		<div>추가정보 입력</div>
		<form class="col-lg-5 col-md-7 d-flex flex-column" method="post" action="/user/oauth/register">

			<!-- 닉네임 -->
			<div class="md-form my-2">
				<input type="text" class="form-control" id="nickname"
					name="nickname" required> <label for="nickname">Nickname</label>
			</div>
			<!-- 이메일 -->
			<c:choose>
				<c:when test="${userInfo.email==null}">
					<div class="md-form my-2">
						<input type="email" class="form-control" id="email" name="email"
							required> <label for="email">Email</label>
					</div>
				</c:when>

				<c:otherwise>
					<input type="hidden" value="${userInfo.email }" name="email">
				</c:otherwise>
			</c:choose>

			<!-- 성별 -->
			<c:choose>
				<c:when test="${userInfo.gender eq -1}">
					<div class="btn-group btn-group-toggle my-2 w-50 align-self-center"
						data-toggle="buttons">
						<label class="btn btn-primary active"> <input type="radio"
							name="gender" class="btn btn-primary" value="1" checked>남자
						</label> <label class="btn btn-primary"> <input type="radio"
							name="gender" class="btn btn-primary" value="0">여자
						</label>
					</div>
				</c:when>
				<c:otherwise>
					<input type="hidden" value="${userInfo.gender}" name="gender">
				</c:otherwise>
			</c:choose>



			<input type="hidden" value="${userInfo.regDate }" name="regDate">
			<input type="hidden" value="${userInfo.regLocation }" name="regLocation">
			<input type="hidden" value="${userInfo.isAdmin }" name="isAdmin">
			<input type="hidden" value="${userInfo.accessToken }" name="accessToken">
			<input type="hidden" value="${userInfo.refreshToken }" name="refreshToken">
			<input type="hidden" value="${userInfo.profile }" name="profile">
			<input type="hidden" value="${userInfo.userId }" name="userId">
			<input type="hidden" value="${userInfo.name }" name="name">
			<button type="submit" class="btn btn-primary my-3 w-50 align-self-center" >Submit</button>
		</form>


	</div>

	<!-- JQuery -->
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/js/mdb.min.js"></script>
</body>
</html>