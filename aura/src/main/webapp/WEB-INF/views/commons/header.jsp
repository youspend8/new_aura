<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
</head>
<body>
  <div class="container" id="header">
    <header class="row m-0 justify-content-center pb-md-4" style=" border-bottom: 1px solid #e3e6ea">
      <a href="/main" class="col-12 col-lg-3 col-md-3 pt-2 pt-md-3 mt-lg-5 text-center text-md-right order-2 order-lg-1">
        <img src="/img/logo/logo.png" width="130px" class="pt-1">
      </a>

      <div class="pt-2 pt-md-3 pl-0 pl-md-0 mt-lg-5 pr-0 pb-3 pb-md-3 col-lg-6 col-md-7 d-flex align-items-center order-2 order-lg-1">
        <form class="form-check-inline w-100" action="/review/search">
        	<select class="form-control w-25" style="border-radius: 5%" name="type">
        		<option value="1">음식점</option>
        		<option value="2">병원</option>
        		<option value="3">전자제품</option>
        	</select>
          <input class="form-control ml-3 w-100" type="text" name="keyword" placeholder="Search" style="border-radius: 400px; ">
		
          	<button type="submit" class="fas text-dark ml-2 fa-search" style="font-size: 20px; background-color: transparent; border: 0px transparent solid;"></button>
        </form>
      </div>

      <div class="d-lg-none col-md-5"></div>

      <div class="col-lg-3 col-12 pl-lg-4 pl-md-0 pr-0 order-1 order-lg-1">
        <ul class="d-flex justify-content-end justify-content-lg-end  pt-3 flex-wrap" style="padding: 0">
          <li>
            <i class="fas fa-user-alt" style="font-size: 1rem;"></i>
          </li>
          <li class="deconone">
          	<a href="/user/loginForm" class="text-dark p-3 pt-5" style="font-size: 0.7rem; padding: 0;">로그인</a>
          </li>
          <li class="deconone">
          	<a href="/user/registerForm" class="text-dark p-3" style="font-size: 0.7rem; padding: 0;">회원가입</a></li>
        </ul>
      </div>
    </header>
  </div>
