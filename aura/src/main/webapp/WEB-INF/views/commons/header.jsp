<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<script type="text/javascript" src="/js/popper.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/mdb.min.js"></script>
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="/css/mdb.css" rel="stylesheet">
    <!-- Your custom styles (optional) -->
	<link href="/css/style.css" rel="stylesheet">
	<jsp:include page="/WEB-INF/views/modal/favorite_modal.jsp"></jsp:include>
	
	<style type="text/css">
		#background {
			width: 100%;
			height: 500px;
			background-image: url('/img/main/full_background.jpg');
			position: fixed;
			top : 0;
			z-index: 0;
		}
		
		#header {
			height: 500px;
			position: relative;
			z-index: 1;
			text-align: center;
			display: flex;
			flex-flow: column;
			align-items: center;
		}
		
		.search_form {
			text-align: center;
		}
		
		.search_select {
			width: 35%;
			height: 50px;
			border-bottom-left-radius: 400px;
			border-top-left-radius: 400px;
			border: 4px solid orange;
			border-right: 0px;
		}
		
		.search_input {
			height: 50px;
			border-bottom-right-radius: 400px;
			border-top-right-radius: 400px;
			border: 4px solid orange;
		}
		
		.search_select > option {
			width: 50%;
		}
		
		.navigation {
			height: 60px;
			display: flex;
			flex-direction: row;
			justify-content: space-between;
			position: sticky;
 			position: -webkit-sticky;
			width: 100%;
			top: 0;
			z-index: 100;
			background-color: orange;
			padding: 0;
			align-items: center;
		}
		
		.social_content {
			width: 15%;
			margin: 0;
			display: flex;
			flex-flow: row;
			padding: 13px 0;
		}
		
		.navigation_brand_logo {
			width: 60%;
			padding: 0 5%;
		}
		
		.brand_logo {
			margin: 55px 0;
		}
		
		.register_button,
		.login_button {
			margin: 0;
			display: flex;
			align-items: center;
			vertical-align: middle;
			justify-content: center;
			text-align: center;
			width: 50%;
			font-size: 1rem;
			font-weight: 800;
		}
		
		@media (max-width: 768.9px) {
			#background,
			#header {
				height: 300px;
			}
			.navigation_brand_logo {
				display: none;
			}
			.user_icon {
				font-size: 25px;
			}
			.brand_logo {
				margin: 30px 0;
			}
			.login_button {
				width: 100%;
			}
		}
		
		.container {
			max-width: 80%;
			margin: 0 auto;
		}
		@media (max-width: 1300px) {
			.container {
				max-width: 100%;
			}
		}
		@media (max-width: 1199.98px) {
			.container {
				max-width: 100%;
			}
		}
		
	</style>
</head>
<body>
    <header class="navigation" id="navigation">
		<a href="/main" style="width: 11%;">
			<img class="navigation_brand_logo" src="/img/logo/whitelogo2.png">
		</a>
		
		<div id="navigation_search_form" class="col-md-6 col-11 p-0">
			<c:set var="currentPage" value="${pageContext.request.requestURI}" />
		
			<c:if test="${!fn:contains(currentPage,'main.jsp')}">
				<form class="form-check-inline w-100" id="origin_search_form" action="/review/search">
					<select class="form-control search_select" name="type">
						<option value="1">음식점</option>
						<option value="2">병원</option>	
						<option value="3">전자제품</option>
					</select>
					
					<input class="form-control search_input" type="text" name="keyword" placeholder="Search" autocomplete="off">
				
					<button type="submit" class="fas text-white ml-2 fa-search" style="font-size: 20px; background-color: transparent; border: 0px transparent solid;"></button>
				</form>
			</c:if>
		</div>
		
		<ul class="social_content col-md-2 col-1">
			<c:choose> 
				<c:when test="${nickname ne null}">	          	
					<li class="w-100">
						<a href="#" class="fas fa-user-alt text-dark text-center user_icon" data-target="#fullHeightModalRight" data-toggle="modal">
							<span class="user_nickname d-md-inline-block d-none">${nickname}님</span>
						</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="login_button">
						<a href="/user/loginForm" class="d-md-flex d-none text-dark text-center">로그인</a>
						<a href="/user/loginForm" class="d-md-none d-flex fas fa-user-alt text-dark text-center user_icon"></a>
					</li>
				</c:otherwise>
			</c:choose>
			<c:if test = "${nickname eq null}">
				<li class="register_button d-md-flex d-none">
					<a href="/user/registerForm" class="text-dark text-center">회원가입</a>
				</li>
			</c:if>
		</ul>
    </header>
