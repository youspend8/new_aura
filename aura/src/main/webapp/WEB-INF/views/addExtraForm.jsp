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
		<div class="container h-100">
			<div class="row justify-content-md-center h-100">
				<div class="card-wrapper" style="width: 400px;">
						<!-- 로고 -->
					<div class="text-center my-5" >
					<a href="/main"> <img src="/img/logo/blacklogo.png" alt="bootstrap 4 login page" style="width: 150px;"></a>
					</div>
					
					<div class="card fat">
						<div class="card-body py-20">
			
				<h4 class="card-title" style="margin: 0;">추가 정보입력</h4>
				<hr style="border: solid 1px; color: rgb(190, 186, 186)">	
					
				<form  method="post" action="/user/oauth/register">
	
				<!-- 닉네임 -->
				<div class="md-form my-3">
					<input type="text" class="form-control" id="nickname" name="nickname" required> <label for="nickname">닉네임*</label>
				</div>
			
				<!--닉네임 중복 상자-->
				<div id="Double_Check">
				</div>
				<!-- 이메일 -->
				<c:choose>
					<c:when test="${userInfo.email==null}">
						<div class="md-form my-3">
							<input type="email" class="form-control" id="email" name="email" required> <label for="email">이메일*</label>
						
<!-- 이메일 안내메세지 -->
						<div style="display: none; color: red; font-size: 13px;"
							id="email_overlap">이미 사용중인 이메일 입니다.</div>
													
						<div style="display: none; color: red; font-size: 13px;"
							id="email_none">이메일을 입력해주세요</div>
		
						<div style="display: none; color: blue; font-size: 13px;"
							id="email_true">사용가능한 이메일입니다.</div>
		
						<div style="display: none; color: red; font-size: 13px;" id="email_false">이메일형식이 아닙니다.</div>			
						</div>			
					</c:when>
		
					<c:otherwise>
						<input type="hidden" value="${userInfo.email }" name="email">
					</c:otherwise>
				</c:choose>
	
				<!-- 성별 -->
				<c:choose>
					<c:when test="${userInfo.gender eq -1}">
					
							<div>성별*</div>
						<div class="form-group text-center my-3">
							
							<div class="custom-control custom-radio custom-control-inline" >
								<input type="radio" class="custom-control-input" id="defaultUnchecked" name="gender" value="1" > 
								<label class="custom-control-label" for="defaultUnchecked">남자</label>
							</div>

							<div class="custom-control custom-radio custom-control-inline" style="margin-left: 10px">
								<input type="radio" class="custom-control-input"id="defaultchecked"name="gender" value="0"> 
								<label class="custom-control-label" for="defaultchecked">여자</label>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<input type="hidden" value="${userInfo.gender}" name="gender">
					</c:otherwise>
				</c:choose>
				
				<!--연령대 --AGE-RANGE-->
	
				<c:choose>
				
					<c:when test="${userInfo.ageRange eq 0}">
						<div>연령*</div>
						<div class="form-group ml-3 my-3">	
						<div class="btn-group btn-group-toggle btn-group-sm my-2 text-centerbalign-self-center" data-toggle="buttons">
							<label class="btn btn-primary active"> <input type="radio"name="ageRange" class="btn btn-primary btn-sm" value="1" checked>10대</label> 
							<label class="btn btn-primary"> <input type="radio"name="ageRange" class="btn btn-primary btn-sm" value="2">20대</label>
							<label class="btn btn-primary"> <input type="radio"name="ageRange" class="btn btn-primary btn-sm" value="3">30대</label>
							<label class="btn btn-primary"> <input type="radio"name="ageRange" class="btn btn-primary btn-sm" value="4">40대</label>
							<label class="btn btn-primary"> <input type="radio"name="ageRange" class="btn btn-primary btn-sm" value="5">50대</label>
							<label class="btn btn-primary"> <input type="radio"name="ageRange" class="btn btn-primary btn-sm" value="6">60대 이상</label>
						</div>
						</div>
					</c:when>
					<c:otherwise>
						<input type="hidden" value="${userInfo.ageRange}" name="ageRange">
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
						<input type="hidden" value="${userInfo.ageRange}" name="ageRange">
						
						<div class="form-grou my-20">
						<button type="submit" class="btn btn-primary btn-block" id="join" disabled>가입 하기</button>
						</div>		
						</form>
						</div>
					</div>
					<div class="text-center my-5">Copyright &copy; 2019 &mdash; Your All Review</div>
				</div>
			</div>
		</div>

			
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
	
	<script>
//이메일 정규식
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
	
	</script>
	<script>
//닉네임 중복확인
		$('#nickname').keyup(function(){
			$.ajax({
				url: "/user/nickNameCheck",
				data : {
					nickname : $('#nickname').val()
				},
				type : "POST",
				dataType: "text",
				success : function(data){
					var reg_hanengnum = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|\*]+$/;

					var Double_Check = $('#Double_Check');
					if(data == "true" && reg_hanengnum.test( $('#nickname').val())){
						Double_Check.text('닉네임을 사용하실수 있습니다.');
						Double_Check.css('color','blue').attr('font-size','13px');
						$('#join').removeAttr('disabled');
					}else{
						Double_Check.text('공백이 존재하거나 닉네임이 중복 됩니다.');
						Double_Check.css('color','red').attr('font-size','13px');
						$('#join').attr('disabled','true');
					}
				}
			})
		})
		
		function checkSpace(str) { 
			if(str.search(/\s/) != -1) { 
				return true; 
			}else{ 
				return false; 
			} 
		}
		$('#nickname').keyup(function(){
			console.log($('#nickname').val() == " ")
		})
	console.log($('#nickname').val() == 0)		
	</script>
	
</body>
</html>