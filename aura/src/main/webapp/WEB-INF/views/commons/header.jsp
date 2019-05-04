<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
</head>
<body>
    <header class="navigation">
		<a href="/main" style="width: 15%;">
			<img class="navigation_brand_logo" src="/img/logo/logo2.png">
		</a>
		
		<div id="navigation_search_form" class="navigation_search_form">
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
		
		<ul class="social_content">
			<c:choose> 
				<c:when test="${nickname ne null}">	          	
					<li class="w-100">
						<a href="#" class="fas fa-user-alt text-dark text-center" style="font-size: 1rem;" data-target="#fullHeightModalRight" data-toggle="modal">
							${nickname}님 
						</a>
					</li>
				</c:when>
				<c:otherwise>
					<li class="w-50">
						<a href="/user/loginForm" class="text-dark text-center">로그인</a>   
					</li>       	
				</c:otherwise>
			</c:choose>
			<c:if test = "${nickname eq null}">
				<li class="w-50">
					<a href="/user/registerForm" class="text-dark text-center">회원가입</a>
				</li>
			</c:if>
		</ul>
    </header>
