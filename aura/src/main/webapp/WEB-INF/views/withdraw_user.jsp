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
			<div class="card-wrapper" style="width: 500px;">
						<!-- 로고 -->
			<div class="text-center my-5" >
				<a href="/main"> <img src="/img/logo/blacklogo.png" alt="bootstrap 4 login page" style="width: 150px;"></a>
			</div>
					
			<div class="card fat">
				<div class="card-body py-20">
			
					<h4 class="card-title" style="margin: 0;">회원탈퇴</h4>
					<hr style="border: solid 1px; color: rgb(190, 186, 186)">	
					
				<form  method="post" action="/user/withdraw_user">
					
					<p><i class="fas fa-check my-3"></i>&nbsp;&nbsp;<b>회원탈퇴를 신청하기 전에 안내사항을 꼭 확인해주세요</b></p>
					
					<p> ■ 사용하고 계신 아이디 (<b style="color:blue"> ${email} </b>)탈퇴할 경우
					 &nbsp;&nbsp;&nbsp;&nbsp;회원정보 및 이용기록은 모두 삭제가 됩니다. </p>

					<p>	■ 탈퇴 후 회원정보 및 개인형 서비스 이용기록은 모두 삭제됩니다. 회원정보 및 메일, 주소록 등 개인형 서비스
						이용기록은 모두 삭제되며, 삭제된 데이터는 복구되지 않습니다. 삭제되는 내용을 확인하시고 필요한 데이터는 미리 백업을
						해주세요. </p>
						
					<p> ■ 탈퇴 후에도 게시판형 서비스에 등록한 게시물은 그대로 남아 있습니다. 리뷰 등에 올린
						게시글 및 댓글은 탈퇴 시 자동 삭제되지 않고 그대로 남아 있습니다.</p> 
					<p> ■ 삭제를 원하는 게시글이 있다면 반드시 탈퇴 전 삭제하시기 바랍니다. </p>
					<p> ■ 탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어,
						게시글을 임의로 삭제해드릴 수 없습니다.</p>
					<p> ■ 탈퇴 후에는  아이디와 데이터는 복구할 수 없습니다. 게시판형 서비스에 남아 있는 게시글은
						탈퇴 후 삭제할 수 없습니다.</p>

								<div class="custom-control custom-checkbox">
		  				<input type="checkbox" class="custom-control-input" id="final_check" >
		  			<label class="custom-control-label my-3" for="final_check"><b style="color:green">안내 사항을 모두 확인하였으며, 이에 동의합니다</b>
		  			</label>
					</div>
				
						<input type="hidden" value="${nickname}" name="nickname" />
						
						<div class="form-grou my-20">
							<button type="submit" class="btn btn-primary btn-block my-3"  id="withdraw" disabled>탈퇴하기</button>
						</div>
						
				</form>
				</div>
			</div>
					<div class="text-center my-5">Copyright &copy; 2019 &mdash; Your All Review</div>
			</div>
		</div>
	</div>
	<script
		src="https://code.jquery.com/jquery-3.4.0.js"
		integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
		crossorigin="anonymous">
	</script>
	

			
	<!-- JQuery -->
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/js/mdb.min.js"></script>
	
	<script>
			    $("#final_check").change(function(){
			        if($("#final_check").is(":checked")){
						$('#withdraw').removeAttr('disabled');
			        }
			        

			    });
	</script>

	
	
</body>
</html>