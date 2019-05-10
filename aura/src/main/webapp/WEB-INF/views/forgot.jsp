<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<title>All Review 아이디/비밀번호 찾기</title>

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
			<div class="row justify-content-md-center align-items-center h-100">
				<div class="card-wrapper">
					<div class="brand">
						<a href="/user/loginForm">
							<img src="/img/logo/blacklogo.png" alt="bootstrap 4 login page"
								style="width:150px">
						</a>
					</div>
					<div class="card fat">
						<div class="card-body">
							<h4 class="card-title m-0 ">아이디/ 비밀번호 찾기</h4>
							<hr style="border : solid 1px; color:rgb(190, 186, 186) ">

							<div class="tab" style="width: 100%;">
								<button class="tablinks w-50" onclick="findThing(event, 'id_find')" id="defaultOpen">
									<div>아이디 찾기</div>
								</button>
								<button class="tablinks w-50" onclick="findThing(event, 'pw_find')">
									<div>비밀번호 찾기</div>
								</button>
							</div>

						<!--아이디찾기 -->
							<div id="id_find" class="tabcontent" value="id_find">
								<div class="form-group">

						<!--휴대폰 인증으로 찾기 -->
									<form method="POST" class="my-login-validation" novalidate="">
										<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input" id="defaultGroupExample1"
													name="groupOfDefaultRadios" onclick="Radio_OnOff('test1')" checked>
												<label class="custom-control-label" for="defaultGroupExample1">회원정보에 등록한
													휴대전화로 인증</label>
	
	
												<div class="form-group" id="test1" >
	
														<div class="form-group">
															<div class="md-form">
																<input type="text" class="form-control" id="find_name">
																<label for="find_name">이름 *</label>
															</div>
															<div class="invalid-feedback">
																이름 입력이 필요합니다.
															</div>
														</div>
		
														<div class="md-form flex-column flex-sm-row" style="display: flex;">
															<input type="text" class="form-control col-sm-8 col-12" id="identified_phone">
															<label for="identified_phone">휴대폰 *</label>
															<button class="btn btn-primary btn-sm" >인증번호</button>
														</div>

														<div class="md-form flex-column flex-sm-row" style="display: flex;">
																<input type="text" class="form-control col-sm-8 col-12" id="identified_number_idphone">
																<label for="identified_number_idphone">인증번호*</label>
																<button type="button" class="btn btn-primary btn-sm">확인</button>
														</div>
													
												</div>
										</div>
<!-- 									</form> -->


									<!--이메일 인증으로 찾기 -->
										<form method="POST" class="my-login-validation" novalidate="">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample2" name="groupOfDefaultRadios"
													onclick="Radio_OnOff('test2')" >
												<label class="custom-control-label" for="defaultGroupExample2">본인확인 이메일로
													인증</label>
												<div class="form-group" id="test2" style="display: none;">


													<div class="md-form flex-column flex-sm-row" style="display: flex;">
														<input type="text" class="form-control col-sm-8 col-12" id="identified_email">
														<label for="identified_email">인증번호 받을 이메일주소를 적어주세요 *</label>
														<button class="btn btn-primary btn-sm" id="duplicate">인증번호</button>
													</div>


														<div class="md-form flex-column flex-sm-row" style="display: flex;">
															<input type="text" class="form-control  col-sm-8 col-12" id="identified_number_idemail">
															<label for="identified_number_idemail">인증번호*</label>
															<button  class="btn btn-primary btn-sm" id="duplicate1">확인</button>
														</div>
												</div>
											</div>
										</form>
								</div>

								<!--아이디/ 로그인 버튼 -->
								<form method="POST" class="my-login-validation" novalidate="" style="margin-top: 20px;margin-bottom: 0;">
									<div class="form-group m-0" style="display: flex">
 										
										<button type="button" class="btn  btn-outline-primary waves-effect"
											style="width:100%; height: 46px; margin: 10px auto">
											<a href="/user/loginForm">
												<div style="margin-bottom: 20px">로그인 하러가기</div>
											</a>
										</button>
									</div>
								</form>
							</div>
							<!-- 비밀번호 찾기 -->
							<div id="pw_find" class="tabcontent" value="pw_find">
								<div class="form-group">

										<!-- 휴대폰 인증으로 찾기-->
										<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input" id="defaultGroupExample3" name="groupOfDefaultRadios" onclick="Radio_OnOff2('test3')" checked>
												<label class="custom-control-label" for="defaultGroupExample3" >회원정보에 등록한
													휴대전화로 인증</label>
	
	
												<div class="form-group" id="test3">
	
													<div class="form-group">
														<div class="md-form">
															<input type="text" class="form-control" id="input_name_pwfind">
															<label for="input_name_pwfind">이름 *</label>
														</div>
														<div class="invalid-feedback">
															이름 입력이 필요합니다.
														</div>
													</div>
	
													<div class="md-form flex-column flex-sm-row" style="display: flex;">
														<input type="text" class="form-control  col-sm-8 col-12 " id="identified_phone_pw">
														<label for="identified_phone_pw">휴대폰 *</label>
														<button  class="btn btn-primary btn-sm" id="duplicate">인증번호</button>
													</div>
												
	
														<div class="md-form flex-column flex-sm-row" style="display: flex;">
															<input type="text" class="form-control  col-sm-8 col-12" id="identified_number_idphone_pw" >
															<label for="identified_number_idphone_pw">인증번호*</label>
															<button type="button" class="btn btn-primary btn-sm" id="duplicate3">확인</button>
														</div>
													
												</div>
											</div>
	


										<!-- 이메일 인증으로 찾기 -->
										<form class="my-login-validation" id="pwFindForm">
											<div class="custom-control custom-radio">
												<input type="radio" class="custom-control-input"
													id="defaultGroupExample4" name="groupOfDefaultRadios"
													onclick="Radio_OnOff2('test4')">
												<label class="custom-control-label" for="defaultGroupExample4">본인확인 이메일로
													인증
												</label>
												<div class="form-group" id="test4" style="display: none;">

													<div class="md-form flex-column flex-sm-row" style="display: flex;">
														<input type="text" class="form-control col-sm-8 col-12" id="identified_email_pw">
														<label for="identified_email_pw">이메일 *</label>
														<button class="btn btn-primary btn-sm" id="identified_number_idemail_pw" disabled>인증 받기</button>
													</div>
	
													<div class="md-form flex-column flex-sm-row" style="display: flex; ">
														<input type="text" class="form-control  col-sm-8 col-12" id="Certified">
													</div>
												</div>
												
												<div class="flex" style="display: none; color: red; font-size: 15px;"id="email_check_none">
													인증번호를 입력해주세요
												</div>
												
												<div class="flex" style="display: none; color: red; font-size: 15px;"id="email_check_false">
													인증번호가 불 일치합니다.
												</div>
												
												<div class="flex" style="display: none; color: blue; font-size: 15px;"id="email_check_true">
													인증번호가  일치합니다.
												</div>
												
												<div class="flex" style="display: none; color: red; font-size: 15px;"id="email_overlap">
													이미 사용중인 이메일 입니다.
												</div>
													
												<div class="flex" style="display: none; color: red; font-size: 15px;"id="email_none">
													이메일을 입력해주세요
												</div>
		
												<div class="flex" style="display: none; color: blue; font-size: 15px;"id="email_true">
													적어주신 이메일이 존재합니다.
												</div>
		
												<div class="flex" style="display: none; color: red; font-size: 15px;"id="email_false">
													적어주신 이메일이 존재하지 않습니다.
												</div>
												<div id="emailAuthCheck">
												
												</div>
											</div>
										</form>
								</div>
								<button type="button" class="btn btn-outline-primary waves-effect"
									style="width:100%; height: 46px; margin: 10px auto" data-toggle="modal"
									data-target="#pw_renew" id="next" disabled>
									다음 단계로
								</button>

								<div class="modal fade " id="pw_renew">
									<form method="POST" action="/user/pwdChange">
										<div class="modal-dialog modal-dialog-centered" role="document">
											<div class="modal-content">
												<div class="modal-header primary-color #4285F4">
													<h5 class="modal-title white-text" id="exampleModalLabel">비밀번호 변경1111</h5>
													<button type="button" class="close" data-dismiss="modal"
														aria-label="Close">
														<span aria-hidden="true">&times;</span>
													</button>
												</div>
	
	
												<div class="modal-body">
													<div class="form-group text-center"
														style="width :100%; padding: 0 1%; padding-top: 5%; ;">
														
														<div style="margin:0px; display:none">
															<input type="hidden" id="userEmail" name="email">
															
															<label for="email">이메일 *</label>
														</div>
														
														<div class="md-form text-left" style="margin:0px;">
															<input type="password" class="form-control" id="password_find">
															<label for="password_find">비밀번호 *</label>
														</div>
														<div class="invalid-feedback">
															비밀번호 입력이 필요합니다.
														</div>
	
														<div class="md-form text-left">
															<input type="password" class="form-control"
																id="password_find_confirm" name="password">
															<label for="password_find_confirm">비밀번호 확인 *</label>
														</div>
														<div class="invalid-feedback">
															비밀번호 입력이 필요합니다.
														</div>
	
													</div>
	
													<div id="lblErr" style="font-size :11px; margin-left:10px"> 암호를 입력하세요
													</div>
	
												</div>
												<div class="modal-footer flex " style="justify-content:center ">
													<button type="button" class="btn btn-outline-primary waves-effect col-5"
														data-dismiss="modal">Close</button>
													<button type="submit" class="btn btn-primary col-7" id="pwdChange" disabled>
														비밀번호변경
													</button>
												</div>
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<div class="footer">
						Copyright &copy; 2019 &mdash; Your All Review
					</div>
				</div>
	</section>

	<script>
		function Radio_OnOff(type) {
			if (type == 'test1') {
				document.getElementById(type).style.display = '';
				document.getElementById('test2').style.display = 'none';
			} else {
				document.getElementById('test1').style.display = 'none';
				document.getElementById(type).style.display = '';
			}
		}

		function Radio_OnOff2(type) {
			if (type == 'test3') {
				document.getElementById(type).style.display = '';
				document.getElementById('test4').style.display = 'none';
			} else {
				document.getElementById('test3').style.display = 'none';
				document.getElementById(type).style.display = '';
			}
		}

		function findThing(evt, whatfind) {
			var i, tabcontent, tablinks;
			tabcontent = document.getElementsByClassName("tabcontent");
			for (i = 0; i < tabcontent.length; i++) {
				tabcontent[i].style.display = "none";
			}
			tablinks = document.getElementsByClassName("tablinks");
			for (i = 0; i < tablinks.length; i++) {
				tablinks[i].className = tablinks[i].className.replace(" active", "");
			}
			document.getElementById(whatfind).style.display = "block";
			evt.currentTarget.className += " active";
		}
		document.getElementById("defaultOpen").click();
	</script>

	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous">
		</script>

	<script type="text/javascript">
		$(document).ready(function () {
			$('#password_find_confirm').keyup(function () {
				if ($('#password_find').val() != $(this).val()) {
					$('#lblErr').html('암호가 틀립니다.').css('color', 'red');
					$('#pwdChange').attr('disabled',true);
				} else {
					$('#lblErr').text('암호가 맞습니다.').css('color', 'blue');
					$('#pwdChange').removeAttr('disabled');
				}
			})
		});
	</script>


	
	<script type="text/javascript" src="/js/jquery-3.3.1.min.js"></script>
	<!-- Bootstrap tooltips -->
	<script type="text/javascript" src="/js/popper.min.js"></script>
	<!-- Bootstrap core JavaScript -->
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<!-- MDB core JavaScript -->
	<script type="text/javascript" src="/js/mdb.min.js"></script>
		<!-- jQuery -->
	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<!-- iamport.payment.js -->
	<script type="text/javascript"
		src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script src="https://code.jquery.com/jquery-3.4.0.js"
		integrity="sha256-DYZMCC8HTC+QDr5QNaIcfR7VSPtcISykd+6eSmBW5qo="
		crossorigin="anonymous">
	</script>
	
	<script>
	//이메일 인증번호 맞는지 확인
		$(function() {
			$("#pwFindForm").submit(function(e) {
				e.preventDefault();
				e_mail();
			})
		})
	
		function e_mail() {
			$.ajax({
				type : "POST",
				url : "/user/emailCheck",
				data : {
					email : $("#identified_email_pw").val()
				},
				dataType : "text",
								
				success : function(data) {
					$('#Certified').keyup(function() {
						if ( data == $("#Certified").val()) {
							$("#email_overlap").css('display','none');
							$('#email_check_none').css('display', 'none');
							$('#email_check_false').css('display', 'none');
							$('#email_check_true').css('display', 'inline');
							$('#email_false').css('display', 'none');
							$('#email_true').css("display","none");
							$('#next').removeAttr('disabled');

// 							var emailAuthCheck = $('#emailAuthCheck');
// 							emailAuthCheck.text('인증번호 일치');
// 							emailAuthCheck.css({
// 								color: 'green'
// 							})
							return true;
						} else if( $("#Certified").val() == ""){
							$("#email_overlap").css('display','none');
							$('#email_check_false').css('display', 'none');
							$('#email_check_true').css('display', 'none');
							$('#email_check_none').css('display', 'inline');
							$('#email_false').css('display', 'none');
							$('#email_true').css("display","none");
							$('#next').attr('disabled','true');
							return false;
						}else if( data == "0"){
							$("#email_overlap").css('display','none');
							$('#email_check_false').css('display', 'none');
							$('#email_check_true').css('display', 'none');
							$('#email_check_none').css('display', 'none');
							$('#email_false').css('display', 'inline');
							$('#email_false').css('display', 'none');
							$('#email_true').css("display","none");
							$('#next').attr('disabled','true');
							return false;
						}else{
							$("#email_overlap").css('display','none');
							$('#email_check_none').css('display', 'none');
							$('#email_check_true').css('display', 'none');
							$('#email_check_false').css('display', 'inline');
							$('#email_false').css('display', 'none');
							$('#email_true').css("display","none");
							$('#next').attr('disabled','true');
							return false;
						}
					});
					return true;
				}
			})
		}

		//이메일 형식인지
		$('#identified_email_pw').change(function(){
			$.ajax({
				url : "/user/emailOverlap_2",
				data : {
					email : $("#identified_email_pw").val()
				},
				type : "POST",
				dataType:"text",
				success : function(data) {
					var regExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
					
					if(regExp.test($("#identified_email_pw").val()) == true && data == "true"){
						$('#email_check_none').css('display', 'none');
						$('#email_check_true').css('display', 'none');
						$("#email_overlap").css('display','none');
						$('#email_check_false').css('display', 'none');
						$("#email_overlap").css('display','none');
						$("#email_false").css('display', 'none');
						$("#email_none").css('display','none');
						$("#email_true").css('display', 'inline');
						$('#userEmail').attr('value', $('#identified_email_pw').val());
						$('#identified_number_idemail_pw').removeAttr('disabled');
					}else if(data == "false"){
						$('#email_check_none').css('display', 'none');
						$('#email_check_true').css('display', 'none');
						$("#email_overlap").css('display','none');
						$('#email_check_false').css('display', 'none');
						$('#email_true').css("display","none");
						$("#email_overlap").css('display','none');
						$("#email_none").css('display','none');
						$('#email_false').css('display', 'inline');
					
						return false;
					}else{
						$('#email_check_none').css('display', 'none');
						$('#email_check_true').css('display', 'none');
						$("#email_overlap").css('display','none');
						$('#email_check_false').css('display', 'none');
						$("#email_overlap").css('display','none');
						$("#email_none").css('display','none');
						$("#email_true").css('display', 'none');
						$("#email_false").css('display', 'inline');
						
					
						return false;
					}
				}
			})
		})
		
		function nextgo(){
		}
		console.log( $('#email_check_true').css('display') != "none" );
// 		nextgo();
		
		$('#Certified').focusout(function() {
			console.log($('#email_check_true').css('display') != "none"   );
		})
		
	</script>
</body>
</html>