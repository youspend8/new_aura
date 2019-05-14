<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/commons/header.jsp" />
<title>${reviewInfo.TITLE} - All Review</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<!-- 리뷰 항목 설명 및 사진, 지도 -->
<div class="container d-flex flex-wrap p-md-2 px-1">
	<div class="col-12 text-center font-weight-bold my-3 d-flex flex-row align-items-center justify-content-center" style="font-size: 40px; padding: 25px 0; border-bottom: 2px solid orange">
		${reviewInfo.TITLE}
		<span class="badge badge-pill badge-success" style="font-size: 20px; margin-left: 3px;">
			<c:if test="${type eq 1}">
				${reviewInfo.CATEGORY}
			</c:if>
			<c:if test="${type eq 2}">
				${reviewInfo.HOSPITALCATEGORY}
			</c:if>
		</span>
	</div>
	<div class="col-12 p-0 d-flex justify-content-center align-items-start flex-wrap">
		<c:if test="${reviewInfo.FILES.size() == 0}">
			<div class="card-body p-1 col-12 text-center">
				<img src="/img/NoImg.jpg" style="width: 10%; height: 250px;">
			</div>
		</c:if>
		<c:if test="${reviewInfo.FILES.size() != 0}">
			<!-- 리뷰 사진 캐러셀 -->
			<div id="carousel-example-2" class="carousel slide col-12 mb-3" data-ride="carousel">
				<div class="carousel-inner" role="listbox">
					<c:forEach var="index" begin="0" end="${reviewInfo.FILES.size() / 3}">
						<div class="carousel-item ${index == 0 ? 'active' : ''}">
							<div class="d-flex">
								<c:forEach var="j" begin="${index}" end="${index + 2}">
									<div class="card-body text-center p-1 col-4">
										<c:if test="${reviewInfo.FILES[j] != null}">
											<img class="w-100" src="${reviewInfo.FILES[j]}" style="width: 100%; height: 300px">
										</c:if>
										<c:if test="${reviewInfo.FILES[j] == null}">
											<img src="/img/NoImg.jpg" style="width: 30%; height: 300px">
										</c:if>
									</div>
								</c:forEach>
							</div>
						</div>
					</c:forEach>
				</div>
				<c:if test="o.FILES.size() > 3}">
					<!--Controls-->
					<a class="carousel-control-prev" href="#carousel-example-2"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"
						style="color: white;"></span>
					</a> <a class="carousel-control-next review-photo-button-right"
						href="#carousel-example-2" role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"
						style="color: white;"></span>
					</a>
				</c:if>
			</div>
		</c:if>
		
		<div class="col-md-4 col-12 p-0 d-flex flex-wrap align-items-start justify-content-center order-2 ${type eq 3 ? 'order-md-2' : 'order-md-1'}">
			<c:if test="${type eq 1 || type eq 2}">
				<div class="col-md-12 col-8">
					<div id="map" class="my-4" style="width:100%; height:250px;"></div>
					<div class="font-weight-bold text-center" style="font-size: 20px"> ${reviewInfo.ADDR} </div>
				</div>
			</c:if>
			<div class="col-12 d-flex justify-content-center my-4">
			
			<a id="share" onclick="doReview(1)" data-toggle="modal" data-target="#centralModalSm">

				<c:choose>
					<c:when test="${reviewInfo.isShare }">
						<i class="fas fa-share-alt" id="aa" value="${nickname}" style="color: green" data-toggle="modal" data-target="#basicExampleModal"></i>
					</c:when>
					<c:otherwise>
						<i class="fas fa-share-alt" id="aa" value="${nickname}" data-toggle="modal" data-target="#basicExampleModal"></i>
					</c:otherwise>
				</c:choose>
				</a>
				<a id="share" >
					<c:choose>
						<c:when test="${reviewInfo.isStar }">
						    <i class="fas fa-star mx-4" id="bb" value="${nickname}" style="color: yellow" onclick="doReview(2)"></i>
						</c:when>
						<c:otherwise>
							<i class="fas fa-star mx-4" id="bb" value="${nickname}" onclick="doReview(2)"></i>
						</c:otherwise>
					</c:choose>
			
				</a>
				<a id="share" onclick="doReview(3)">
					<c:choose>
						<c:when test="${reviewInfo.isLike }">
						    <i class="fas fa-thumbs-up" id="cc" value="${nickname}" style="color: blue"></i>
						</c:when>
						<c:otherwise>
							<i class="fas fa-thumbs-up" id="cc" value="${nickname}"></i>
						</c:otherwise>
					</c:choose>
				</a>
				<!-- Modal -->
				<div class="modal fade" id="basicExampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
				  aria-hidden="true">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
								<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								  <span aria-hidden="true">&times;</span>
								</button>
							</div>
							<div class="modal-body">
								<a href="javascript:;" id="kakao-link-btn"> 
									<img src="//developers.kakao.com/assets/img/about/logos/kakaolink/kakaolink_btn_medium.png" /> <!-- 톡 이미지 부분이고, 전 kakaolink_btn_small.png로 불러왔습니다.   -->
								</a>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>
			</div>
			<c:choose>
				<c:when test="${nickname ne null}">
					<button type="button" id="review_write_pc" class="d-md-block d-none btn btn-warning review-write">리뷰 작성하기</button>
				</c:when>
				<c:otherwise>
					<button type="button" id="review_write_login" class="d-md-block d-none btn btn-warning review-write">리뷰 작성하기</button>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- 리뷰 상세 설명 -->
		<div class="d-flex flex-wrap col-md-8 col-12 order-1 ${type eq 3 ? 'order-md-1' : 'order-md-2'} mx-auto">
			<c:if test="${type eq 1 || type eq 2}">
				<div class="col-12 p-0 my-1">
					<i class="col-1 fas fa-phone"></i>
					<span class="col-11 p-0 font-weight-bold" style="font-size: 20px;">${reviewInfo.TEL}</span>
				</div>
				<div class="col-12 p-0 my-1">
					<i class="col-1 far fa-clock"></i>
					<span class="col-11 p-0 font-weight-bold" style="font-size: 20px;">${reviewInfo.SERVICETIME}</span>
				</div>
				<div class="col-12 d-flex flex-row p-0 my-1">
					<i class="col-1 pt-1 fas fa-utensils"></i>
					<div class="col-11 pl-1 d-flex flex-wrap font-weight-bold" style="font-size: 20px;">
						<c:if test="${type eq 1}">
							<c:forEach var="menu" items="${menu}"  varStatus="num">
								<c:if test="${menu.name ne ''}">
									<div class="col-md-6 col-12 p-0 d-flex">
										<div class="col-8 p-0 m-0">
											${menu.name}
										</div>
										<div class="col-4 p-0 m-0 text-center">
											${String.format("%,3d", Integer.parseInt(menu.price))}원
										</div>
									</div>
								</c:if>
							</c:forEach>
						</c:if>
						<c:if test="${type eq 2}">
							<c:forEach var="sub" items="${sub}"  varStatus="num">
								<div class="col-5 p-0 m-0">
									${medCategory.get(sub.intValue())}
								</div>
							</c:forEach>
						</c:if>
					</div>
				</div>
			</c:if>
			<c:if test="${reviewInfo.CONTENTS ne '내용없음'}">
				<div class="col-12 d-flex flex-row p-0 my-1">
					<i class="col-1 pt-1 far fa-comment-alt"></i> 
					<div class="col-11 pl-1 font-weight-bold review-explanation-2">
						${reviewInfo.CONTENTS}				
					</div>
				</div>
			</c:if>
			<div class="col-12 d-flex flex-row p-0 my-1">
				<i class="col-1 pt-1 far fa-comment-alt"></i> 
				<div class="col-11 pl-1 font-weight-bold review-explanation-2">
					<c:forEach var="option" items="${options}" varStatus="num">
						<c:if test="${option.key ne ''}">
							<div class="col-12 p-0 d-flex">
								<div class="col-3 p-0 m-0">
									${option.key}
								</div>
								<div class="col-9 p-0 m-0">
									${option.value}
								</div>
							</div>
						</c:if>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
	
<div class="mt-5 col-12" style="border-bottom: rgb(217, 217, 217) solid 1px;"></div>
	
</div>


<!-- 컨텐트 영역 -->
<div class="container d-flex flex-wrap">

	<!-- 댓글 작성 양식 -->
	<div id="write_form" class="col-12 flex-column align-items-center">
		<button id="review_write_cancel" type="button"
			class="btn btn-light d-none d-md-block text-center w-100 m-0">
			댓글 작성창 접기 <i class="fas fa-arrow-up"></i>
		</button>

		<div class="col-md-9 col-12 p-0 flex-column mt-5">
			<form id="commentForm" method="post" enctype="multipart/form-data">
				<input id="review_post_num" name="review_post_num" value=${reviewInfo.NUM} style="display: none;">
				<input id="nickname_post" name="nickname_post" value="${nickname}" style="display: none;">
				<input id="grade" name="grade" value="0" style="display: none;">
				
				<textarea rows="5" class="form-control px-2" id="comment" name="comment" autofocus></textarea>
				<div class="d-flex flex-wrap justify-content-between mt-3">
					<div class="star-box d-flex align-items-center">
	<!-- 					마우스가 호버되면 별 색깔 바꾸기 및 호버된 별의 순서에따라 점수를 다르게 주기 -->
						<a class="far fa-star" id="star1" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
						<a class="far fa-star" id="star2" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
						<a class="far fa-star" id="star3" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
						<a class="far fa-star" id="star4" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
						<a class="far fa-star" id="star5" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
					</div>
					<input id="comment_submit" type="button" class="btn btn-light" value="등록하기" onclick="fileSubmit();" disabled>
				
				</div>
				<div id="comment_image" class="d-flex col-12 p-0 my-3">
					<div class="mr-2" style="width: 20%;">
						<label for="comment_file" class="filebox">
							<a>
								<img src="/img/addfile.png" id="img22" class="w-100" style="border: 2px dotted #b8bcc4">
								<input type="file" id="comment_file" name="comment_file" accept="image/*">
							</a>
						</label>
					</div>
					
				</div>
			</form>
			
		</div>
	</div>

	<!-- 모바일 댓글 목록 -->
<!-- 	<div class="d-flex col-12 flex-md-row flex-wrap my-3"> -->
<!-- 		<div class="card col-12 my-3 d-md-none d-block"> -->
<!-- 			<div -->
<!-- 				class="card-header px-2 d-flex justify-content-start align-items-center bg-white border-0"> -->
<!-- 				<div style="width: 13%"> -->
<!-- 					<img class="rounded-circle w-100" -->
<!-- 						src="https://picsum.photos/50/50?image=1081"> -->
<!-- 				</div> -->

<!-- 				<div class="ml-3" style="width: 80%">유저 닉네임2</div> -->
<!-- 			</div> -->

<!-- 			<div class="card-body p-2"> -->
<!-- 				<div -->
<!-- 					class="col-12 d-flex justify-content-center align-items-center p-0 my-3"> -->
<!-- 					유저들이 올린리뷰 후기 사진0 -->
<!-- 					<div id="carouselExampleFade" class="carousel slide w-100" -->
<!-- 						data-ride="carousel"> -->
<!-- 						<div class="carousel-inner"> -->
<!-- 							<div class="carousel-item active"> -->
<!-- 								<div class="d-flex justify-content-around flex-row"> -->
<!-- 									<img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=230" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0 mx-2" -->
<!-- 										src="https://picsum.photos/200/200?image=240" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=280" -->
<!-- 										style="width: 30%"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="carousel-item"> -->
<!-- 								<div class="d-flex justify-content-around flex-row"> -->
<!-- 									<img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=230" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0 mx-2" -->
<!-- 										src="https://picsum.photos/200/200?image=240" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=280" -->
<!-- 										style="width: 30%"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="carousel-item"> -->
<!-- 								<div class="d-flex justify-content-around flex-row"> -->
<!-- 									<img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=230" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0 mx-2" -->
<!-- 										src="https://picsum.photos/200/200?image=240" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=280" -->
<!-- 										style="width: 30%"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<a class="user-photo-button-left carousel-control-prev pr-5" -->
<!-- 							href="#carouselExampleFade" role="button" data-slide="prev"> -->
<!-- 							<span class="carousel-control-prev-icon bg-dark" -->
<!-- 							aria-hidden="true"></span> <span class="sr-only">Previous</span> -->
<!-- 						</a> <a class="user-photo-button-right carousel-control-next pl-5" -->
<!-- 							href="#carouselExampleFade" role="button" data-slide="next"> -->
<!-- 							<span class="carousel-control-next-icon bg-dark" -->
<!-- 							aria-hidden="true"></span> <span class="sr-only">Next</span> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					유저들이 올린리뷰 후기 사진0 End -->
<!-- 				</div> -->
<!-- 				<div class="col-12 p-0 my-3">Lorem ipsum dolor sit amet -->
<!-- 					consectetur adipisicing elit. Maiores, quam ipsum! Expedita -->
<!-- 					nesciunt repellat officia deserunt incidunt libero sequi possimus -->
<!-- 					pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo -->
<!-- 					vitae quos.</div> -->
<!-- 			</div> -->

<!-- 			<div class="card-footer d-flex justify-content-between bg-white"> -->
<!-- 				<div -->
<!-- 					class="col-6 p-0 d-flex flex-wrap align-items-center justify-content-center"> -->
<!-- 					<div class="col-12 d-flex justify-content-center"> -->
<!-- 						<i class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> -->
<!-- 					</div> -->
<!-- 					<p class="text-center">4.5</p> -->
<!-- 				</div> -->

<!-- 				<div -->
<!-- 					class="d-flex col-5 flex-column align-items-center justify-content-center"> -->
<!-- 					<i class="fas fa-heart" style="font-size: 30px"></i> -->
<!-- 					<p>87.451</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 				<div -->
<!-- 					class="d-flex col-5 flex-column align-items-center justify-content-center"> -->
<!-- 					<i class="far fa-heart" style="font-size: 30px"></i> -->
<!-- 					<p>87.451</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

<!-- 		<div class="card col-12 my-3 d-md-none d-block"> -->
<!-- 			<div -->
<!-- 				class="card-header px-2 d-flex justify-content-start align-items-center bg-white border-0"> -->
<!-- 				<div style="width: 13%"> -->
<!-- 					<img class="rounded-circle w-100" -->
<!-- 						src="https://picsum.photos/50/50?image=1081"> -->
<!-- 				</div> -->

<!-- 				<div class="ml-3" style="width: 80%">유저 닉네임2</div> -->
<!-- 			</div> -->

<!-- 			<div class="card-body p-2"> -->
<!-- 				<div -->
<!-- 					class="col-12 d-flex justify-content-center align-items-center p-0 my-3"> -->
<!-- 					유저들이 올린리뷰 후기 사진0 -->
<!-- 					<div id="carouselExampleFade" class="carousel slide w-100" -->
<!-- 						data-ride="carousel"> -->
<!-- 						<div class="carousel-inner"> -->
<!-- 							<div class="carousel-item active"> -->
<!-- 								<div class="d-flex justify-content-around flex-row"> -->
<!-- 									<img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=230" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0 mx-2" -->
<!-- 										src="https://picsum.photos/200/200?image=240" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=280" -->
<!-- 										style="width: 30%"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="carousel-item"> -->
<!-- 								<div class="d-flex justify-content-around flex-row"> -->
<!-- 									<img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=230" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0 mx-2" -->
<!-- 										src="https://picsum.photos/200/200?image=240" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=280" -->
<!-- 										style="width: 30%"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="carousel-item"> -->
<!-- 								<div class="d-flex justify-content-around flex-row"> -->
<!-- 									<img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=230" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0 mx-2" -->
<!-- 										src="https://picsum.photos/200/200?image=240" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=280" -->
<!-- 										style="width: 30%"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<a class="user-photo-button-left carousel-control-prev pr-5" -->
<!-- 							href="#carouselExampleFade" role="button" data-slide="prev"> -->
<!-- 							<span class="carousel-control-prev-icon bg-dark" -->
<!-- 							aria-hidden="true"></span> <span class="sr-only">Previous</span> -->
<!-- 						</a> <a class="user-photo-button-right carousel-control-next pl-5" -->
<!-- 							href="#carouselExampleFade" role="button" data-slide="next"> -->
<!-- 							<span class="carousel-control-next-icon bg-dark" -->
<!-- 							aria-hidden="true"></span> <span class="sr-only">Next</span> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					유저들이 올린리뷰 후기 사진0 End -->
<!-- 				</div> -->
<!-- 				<div class="col-12 p-0 my-3">Lorem ipsum dolor sit amet -->
<!-- 					consectetur adipisicing elit. Maiores, quam ipsum! Expedita -->
<!-- 					nesciunt repellat officia deserunt incidunt libero sequi possimus -->
<!-- 					pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo -->
<!-- 					vitae quos.</div> -->
<!-- 			</div> -->

<!-- 			<div class="card-footer d-flex justify-content-between bg-white"> -->
<!-- 				<div -->
<!-- 					class="col-6 p-0 d-flex flex-wrap align-items-center justify-content-center"> -->
<!-- 					<div class="col-12 d-flex justify-content-center"> -->
<!-- 						<i class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> -->
<!-- 					</div> -->
<!-- 					<p class="text-center">4.5</p> -->
<!-- 				</div> -->

<!-- 				<div -->
<!-- 					class="d-flex col-5 flex-column align-items-center justify-content-center"> -->
<!-- 					<i class="far fa-heart" style="font-size: 30px"></i> -->
<!-- 					<p>87.451</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

<!-- 		<div class="card col-12 my-3 d-md-none d-block"> -->
<!-- 			<div -->
<!-- 				class="card-header px-2 d-flex justify-content-start align-items-center bg-white border-0"> -->
<!-- 				<div style="width: 13%"> -->
<!-- 					<img class="rounded-circle w-100" -->
<!-- 						src="https://picsum.photos/50/50?image=1081"> -->
<!-- 				</div> -->

<!-- 				<div class="ml-3" style="width: 80%">유저 닉네임2</div> -->
<!-- 			</div> -->

<!-- 			<div class="card-body p-2"> -->
<!-- 				<div -->
<!-- 					class="col-12 d-flex justify-content-center align-items-center p-0 my-3"> -->
<!-- 					유저들이 올린리뷰 후기 사진0 -->
<!-- 					<div id="carouselExampleFade" class="carousel slide w-100" -->
<!-- 						data-ride="carousel"> -->
<!-- 						<div class="carousel-inner"> -->
<!-- 							<div class="carousel-item active"> -->
<!-- 								<div class="d-flex justify-content-around flex-row"> -->
<!-- 									<img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=230" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0 mx-2" -->
<!-- 										src="https://picsum.photos/200/200?image=240" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=280" -->
<!-- 										style="width: 30%"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="carousel-item"> -->
<!-- 								<div class="d-flex justify-content-around flex-row"> -->
<!-- 									<img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=230" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0 mx-2" -->
<!-- 										src="https://picsum.photos/200/200?image=240" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=280" -->
<!-- 										style="width: 30%"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="carousel-item"> -->
<!-- 								<div class="d-flex justify-content-around flex-row"> -->
<!-- 									<img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=230" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0 mx-2" -->
<!-- 										src="https://picsum.photos/200/200?image=240" -->
<!-- 										style="width: 30%"> <img class="col-4 p-0" -->
<!-- 										src="https://picsum.photos/200/200?image=280" -->
<!-- 										style="width: 30%"> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<a class="user-photo-button-left carousel-control-prev pr-5" -->
<!-- 							href="#carouselExampleFade" role="button" data-slide="prev"> -->
<!-- 							<span class="carousel-control-prev-icon bg-dark" -->
<!-- 							aria-hidden="true"></span> <span class="sr-only">Previous</span> -->
<!-- 						</a> <a class="user-photo-button-right carousel-control-next pl-5" -->
<!-- 							href="#carouselExampleFade" role="button" data-slide="next"> -->
<!-- 							<span class="carousel-control-next-icon bg-dark" -->
<!-- 							aria-hidden="true"></span> <span class="sr-only">Next</span> -->
<!-- 						</a> -->
<!-- 					</div> -->
<!-- 					유저들이 올린리뷰 후기 사진0 End -->
<!-- 				</div> -->
<!-- 				<div class="col-12 p-0 my-3">Lorem ipsum dolor sit amet -->
<!-- 					consectetur adipisicing elit. Maiores, quam ipsum! Expedita -->
<!-- 					nesciunt repellat officia deserunt incidunt libero sequi possimus -->
<!-- 					pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo -->
<!-- 					vitae quos.</div> -->
<!-- 			</div> -->

<!-- 			<div class="card-footer d-flex justify-content-between bg-white"> -->
<!-- 				<div -->
<!-- 					class="col-6 p-0 d-flex flex-wrap align-items-center justify-content-center"> -->
<!-- 					<div class="col-12 d-flex justify-content-center"> -->
<!-- 						<i class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> <i -->
<!-- 							class="far fa-star" style="font-size: 20px;"></i> -->
<!-- 					</div> -->
<!-- 					<p class="text-center">4.5</p> -->
<!-- 				</div> -->

<!-- 				<div class="d-flex col-5 flex-column align-items-center justify-content-center"> -->
<!-- 					<i class="far fa-heart" style="font-size: 30px"></i> -->
<!-- 					<p>87.451</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 				<div -->
<!-- 					class="d-flex col-5 flex-column align-items-center justify-content-center"> -->
<!-- 					<i class="far fa-heart" style="font-size: 30px"></i> -->
<!-- 					<p>87.451</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->

		<!-- strat -->
		
	<c:forEach var="commentList" items="${commentList }" varStatus="status" end="4">
		<div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active" id="home_${commentList.comment_Num }">
		
		
			<div
				class=" col-2 d-flex flex-column justify-content-center align-items-center"
				style="width: 100%;">
				
				<div class="p-0">
				<c:choose>
					<c:when test="${commentList.profile ne null }">
						<img class="rounded-circle" src=${commentList.profile } style="height: 75px;">
					</c:when>
					<c:otherwise>
						<img class="rounded-circle" src="https://ssl.pstatic.net/static/pwe/address/img_profile.png" style="height: 75px;">
					</c:otherwise>
				</c:choose>
				</div>

				<div class="w-100 text-center" style="margin-top: 0px">${commentList.nickname }</div>
				
					
				<div class="p-0 d-flex justify-content-center">
					<c:forEach begin="1" end="${commentList.comment_Score }">
						<i class="fas fa-star" style="font-size: 20px; color: rgb(255, 153, 0);"></i>
					</c:forEach>
					<c:forEach begin="1" end="${5-commentList.comment_Score }">
						<i class="far fa-star" style="font-size: 20px; color: rgb(255, 153, 0);"></i>
					</c:forEach>
				</div>
				
			</div>
			
			<div class="col-2 d-flex justify-content-center align-items-center p-0">
				<!-- 유저들이 올린리뷰 후기 사진0-->
				<c:if test="${commentList.files[0] ne null }">
					<div id="carouselExampleFade-${status.index }" class="carousel slide carousel-fade"
						data-ride="carousel">
						<div class="carousel-inner" style="width:168px; height:123px;">
								<div class="carousel-item active sample_image">
									<img class="d-block user-review-img" style="width:168px; height:123px;"
											src="${commentList.files[0].comment_File}">
								</div>
	
								<c:forEach var="files" items="${commentList.files }" begin="1">
									<c:if test="${files ne null}">
										<div class="carousel-item big sample_image">
											<img class="d-block user-review-img" style="width:168px; height:123px;" 
														src="${files.comment_File}">
										</div>
									</c:if>
								</c:forEach>
						</div>
						
						<a class="user-photo-button-left carousel-control-prev"
							href="#carouselExampleFade-${status.index }" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a>
						<a class="user-photo-button-right carousel-control-next"
							href="#carouselExampleFade-${status.index }" role="button" data-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</c:if>
				<!-- 유저들이 올린리뷰 후기 사진0 End-->
			</div>

			<div class="col-6 d-flex flex-wrap flex-row align-items-center">
				<div class>${commentList.comment_Contents }
				 </div>
				
			</div>
			
			<div class="d-flex col-2 flex-column align-items-center justify-content-center ">
				<a class="heartCl" commentNum="${commentList.comment_Num}">
					<i class="fas fa-heart "  style="font-size: 40px" ></i>
				</a>
				<p value="${commentList.comment_Like }" nickname="${nickname}">
			
					<fmt:formatNumber value="${commentList.comment_Like }" pattern="#,###"/>
					
				</p>
				<c:if test="${nickname eq commentList.nickname}">
					<div id="session_Comment" class="w-50 d-flex mt-5 justify-content-between">
					<input type="hidden" value="" name="">
					<input type="hidden" value="" name="">
					
						<button id="update_Comment" style="border:0; outline:0; opacity: 0.3; padding: 0"
							onclick='update_Area(${commentList.comment_Num }, "${commentList.comment_Contents}", "${commentList.files}")'>수정</button>
							
						
						<button id="delete_Comment" style="border:0; outline:0; opacity: 0.3; padding: 0">삭제</button>
				   </div>
				</c:if>
			</div>
			
		
	
		</div>
	
		<div class="container d-flex flex-wrap" id="update_area_${commentList.comment_Num }">
		
		
		
		</div>
	
	
	</c:forEach>
	
	
</div>
	
	
	
	<script type="text/javascript">
		
			function addComma(num) {
				 var regexp = /\B(?=(\d{3})+(?!\d))/g;
			     return num.toString().replace(regexp, ',');
			}
				
			$('.heartCl').click(function(){
				
				if($(this).next().attr('nickname')!=""){
					
						if($(this).find("i").css('color')=='rgb(33, 37, 41)'){ 
							$(this).find("i").css('color','rgb(255, 0, 0)')//빨강
							
							var num1=Number($(this).next().attr('value'))+1;
							var num=addComma(Number($(this).next().attr('value'))+1);
							
							$(this).next().remove();
							$(this).after('<p value=\"'+num1+'\">'+num+'</p>')
							var commentNum = Number($(this).attr('commentNum'));
							
								$.ajax({
						    		url: '/comment/update', // 요청 할 주소 
						    	    type: 'get', // GET, PUT
						    	    dataType: 'text', 
						    	    data: {
						    	    	commentNum : commentNum,
						    	    	type : 1
						    	    },
						    	    success: function(data) {
					    	        },
					    	       error : function (data) {
					    	        	alert('죄송합니다. 잠시 후 다시 시도해주세요.');
						    	        return false;
					    	       }  // 전송할 데이터
						    	})
		    	
						}else{
							$(this).find("i").css('color','rgb(33, 37, 41)')//검정
	
							var num1=Number($(this).next().attr('value'))-1;
							var num=addComma(Number($(this).next().attr('value'))-1);
							
							$(this).next().remove();
							$(this).after('<p value=\"'+num1+'\">'+num+'</p>')
							var commentNum = Number($(this).attr('commentNum'));
							
								$.ajax({
						    		url: '/comment/update', // 요청 할 주소 
						    	    type: 'get', // GET, PUT
						    	    dataType: 'text', 
						    	    data: {
						    	    	commentNum : commentNum,
						    	    	type : 2
						    	    },
						    	    success: function(data) {
					    	        },
					    	       error : function (data) {
					    	        	alert('죄송합니다. 잠시 후 다시 시도해주세요.');
						    	        return false;
					    	       }  // 전송할 데이터
						    	})
						}
				}
				else{
					alert("회원만 이용 가능한 기능입니다. 로그인을 해주세요.")
				}
			})
			
		</script>


<div class="my-3 col-12" style="border-bottom: rgb(217, 217, 217) solid 1px;"></div>
<div id="review_more" class="d-flex col-12 justify-content-center align-items-center bg-white py-3 my-5">
    <a id="more_button" class="text-center" style="text-decoration: none">
        <img src="/img/more.png" style="width: 20%; border-radius: 100%; border: 1px solid gray">
        <span class="ml-2 text-dark">검색결과 더보기</span>
    </a>
    <div id="bar" style="display: none;"></div>
</div>



<jsp:include page="/WEB-INF/views/commons/footer.jsp" />
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=53d46cec9bd19a0835b7c8bc8150a448&libraries=services"></script>
<script type="text/javascript">

	function addComma(num) {
		 var regexp = /\B(?=(\d{3})+(?!\d))/g;
	     return num.toString().replace(regexp, ',');
	}
		
	$('.heartCl').click(function(){
		
		if($(this).next().attr('nickname')!=""){
			
				if($(this).find("i").css('color')=='rgb(33, 37, 41)'){ 
					$(this).find("i").css('color','rgb(255, 0, 0)')//빨강
					
					var num1=Number($(this).next().attr('value'))+1;
					var num=addComma(Number($(this).next().attr('value'))+1);
					
					$(this).next().remove();
					$(this).after('<p value=\"'+num1+'\">'+num+'</p>')
					var commentNum = Number($(this).attr('commentNum'));
					
						$.ajax({
				    		url: '/comment/update', // 요청 할 주소 
				    	    type: 'get', // GET, PUT
				    	    dataType: 'text', 
				    	    data: {
				    	    	commentNum : commentNum,
				    	    	type : 1
				    	    },
				    	    success: function(data) {
			    	        },
			    	       error : function (data) {
			    	        	alert('죄송합니다. 잠시 후 다시 시도해주세요.');
				    	        return false;
			    	       }  // 전송할 데이터
				    	})
    	
				}else{
					$(this).find("i").css('color','rgb(33, 37, 41)')//검정

					var num1=Number($(this).next().attr('value'))-1;
					var num=addComma(Number($(this).next().attr('value'))-1);
					
					$(this).next().remove();
					$(this).after('<p value=\"'+num1+'\">'+num+'</p>')
					var commentNum = Number($(this).attr('commentNum'));
					
						$.ajax({
				    		url: '/comment/update', // 요청 할 주소 
				    	    type: 'get', // GET, PUT
				    	    dataType: 'text', 
				    	    data: {
				    	    	commentNum : commentNum,
				    	    	type : 2
				    	    },
				    	    success: function(data) {
			    	        },
			    	       error : function (data) {
			    	        	alert('죄송합니다. 잠시 후 다시 시도해주세요.');
				    	        return false;
			    	       }  // 전송할 데이터
				    	})
				}
		}
		else{
			alert("회원만 이용 가능한 기능입니다. 로그인을 해주세요.")
		}
	})
	
</script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

var zoomControl = new daum.maps.ZoomControl();
map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
// 주소-좌표 변환 객체를 생성합니다
var geocoder = new daum.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('${reviewInfo.ADDR}', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === daum.maps.services.Status.OK) {

        var coords = new daum.maps.LatLng(result[0].y, result[0].x);
        var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
	    var imageSize = new daum.maps.Size(24, 35); 
	    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new daum.maps.Marker({
            map: map,
            position: coords,
	        image : markerImage
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new daum.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">${reviewInfo.TITLE}</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
</script>
<script type="text/javascript">

    // // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('cec5c87f0e6a1c8fc2daedbc6a4c7d6b');
    // // 카카오링크 버튼을 생성합니다. 처음 한번만 호출하면 됩니다.
    Kakao.Link.createDefaultButton({
      container: '#kakao-link-btn',  // 컨테이너는 아까 위에 버튼이 쓰여진 부분 id 
      objectType: 'feed',
      content: {  // 여기부터 실제 내용이 들어갑니다. 
        title: '${reviewInfo.TITLE}', // 본문 제목
        description: '#케익 #딸기 #삼평동 #카페 #분위기 #소개팅',  // 본문 바로 아래 들어가는 영역?
        imageUrl: 'http://mud-kage.kakao.co.kr/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png', // 이미지
        link: {
          mobileWebUrl: 'http://localhost:8000/review/post?num=${reviewInfo.NUM}&type=${reviewInfo.TYPE}',
          webUrl: 'http://localhost:8000/review/post?num=${reviewInfo.NUM}&type=${reviewInfo.TYPE}'
        }
      },
      social: {  /* 공유하면 소셜 정보도 같이 줄 수 있는데, 이 부분은 기반 서비스마다 적용이 쉬울수도 어려울 수도 있을듯 합니다. 전 연구해보고 안되면 제거할 예정 (망할 google  blogger...) */
        likeCount: ${reviewInfo.GOODS},
         commentCount: 45,
        sharedCount: ${reviewInfo.SHARES}
      },
      buttons: [
        {
          title: '웹으로 보기',
          link: {
            mobileWebUrl: 'http://localhost:8000/review/post?num=${reviewInfo.NUM}&type=${reviewInfo.TYPE}',
            webUrl: 'http://localhost:8000/review/post?num=${reviewInfo.NUM}&type=${reviewInfo.TYPE}'
          }
        }
 
      ]
    });

</script> 
<script>
var flag1=true;
var flag2=true;

		$("#share i").click(function(e){
			if(flag1){
				flag1=false;
				
			if($(this).attr('value')=='' && ($(this).attr('id')=='bb'||$(this).attr('id')=='cc')){
		
					alert('해당기능은 회원만 이용가능합니다.')
					$(this).attr("data-toggle","")
					
				}else{
				
					if($(this).css("color")!="rgb(33, 37, 41)"){
						$(this).attr("data-toggle","")
						$(this).css("color","rgb(33, 37, 41)")
					}else{
						if($(this).attr('id')=='aa'){
						
							$(this).css("color","green")
							
						}
						if($(this).attr('id')=='bb'){
							
							$(this).css("color","yellow")
						
						}
						if($(this).attr('id')=='cc'){
							
							$(this).css("color","blue")
						
						}
					}
					
				}
				setTimeout(() => {
					$(this).attr("data-toggle","modal")
					flag1=true;
				}, 300);
			}
		})

    	function doReview(type, nickname) {
			if(flag2){
				
				flag2=false;
				$.ajax({
		    		url: '/reviewList/reviewPost', // 요청 할 주소 
		    	    type: 'POST', // GET, PUT
		    	    dataType: 'text', 
		    	    data: {
		    	    	postNum : '${reviewInfo.NUM}',
		    	    	nickname: nickname,
		    	    	reviewType: type,
		    	    	type: '${reviewInfo.TYPE}'
		    	    },
		    	    success: function(data) {
	    	        },
	    	       error : function (data) {
	    	        	alert('죄송합니다. 잠시 후 다시 시도해주세요.');
		    	        return false;
	    	       }  // 전송할 데이터
		    	})
		    	setTimeout(() => {
					flag2=true;
				}, 300);
			}
	    
    	}
    
        $(document).ready(function() {
            var state = false;

            
            $('#review_write_pc').on('click', () => {
                $('#write_form').animate({
                    height: '520px'
                }, 400);
                $('#write_form').css('display', 'flex');
                $('#write_form').css('border-bottom', '2px solid #dadee6');
            });

            $('#review_write_cancel').on('click', () => {
                $('#write_form').animate({
                    height: '0px'
                }, 300);
                // $('#write_form').css('visibility', 'hidden');
                setTimeout(() => {
                    $('#write_form').css('display', 'none');
                    $('#write_form').css('border-bottom', '');
                }, 180);
            });
            
            $('#review_write_login').on('click', () => {
            	alert('로그인이 필요합니다.');
            });
            
        });
        
        function update_Form(){
            $('#update_form').css('display', 'flex');
            $('#update_form').css('border-bottom', '2px solid #dadee6');
            $('#update_form').animate({
                height: '520px'
            }, 400);
        };
        
        function update_Form_Cancel(){
        	$('#update_form').animate({
                height: '0px'
            }, 300);
        	setTimeout(() => {
        	$('#update_form').remove();
			}, 200);
        }
        
//         $('#update_write_cancel').on('click', () => {
//         	alert('gdgd');
//             $('#update_form').animate({
//                 height: '0px'
//             }, 300);
//         });
        
        $('#comment').on('keyup', function(){ // 댓글에 내용이 있는지 (확인 CSS 이벤트)
        	
        	var comment = $('#comment').val();
        	var comment_file = $('#comment_file').val();
        	
        	if(comment != ""){
        		$('#comment_submit').removeAttr('disabled');
            	$('#comment_submit').removeClass().addClass('btn btn-warning');
        	} else {
        		$('#comment_submit').prop('disabled', true);
            	$('#comment_submit').removeClass().addClass('btn btn-light');
        	}
        	
        	
        	
        });
        
		$('#star1').click(function(){
			$('#grade').val('1');
			$('#star1').removeClass().addClass('fas fa-star');
			$('#star2').removeClass().addClass('far fa-star');
			$('#star3').removeClass().addClass('far fa-star');
			$('#star4').removeClass().addClass('far fa-star');
			$('#star5').removeClass().addClass('far fa-star');
		});
		
		$('#star2').click(function(){
			$('#grade').val('2');
			$('#star1').removeClass().addClass('fas fa-star');
			$('#star2').removeClass().addClass('fas fa-star');
			$('#star3').removeClass().addClass('far fa-star');
			$('#star4').removeClass().addClass('far fa-star');
			$('#star5').removeClass().addClass('far fa-star');
			
		});
		
		$('#star3').click(function(){
			$('#grade').val('3');
			$('#star1').removeClass().addClass('fas fa-star');
			$('#star2').removeClass().addClass('fas fa-star');
			$('#star3').removeClass().addClass('fas fa-star');
			$('#star4').removeClass().addClass('far fa-star');
			$('#star5').removeClass().addClass('far fa-star');
		});
		
		$('#star4').click(function(){
			$('#grade').val('4');
			$('#star1').removeClass().addClass('fas fa-star');
			$('#star2').removeClass().addClass('fas fa-star');
			$('#star3').removeClass().addClass('fas fa-star');
			$('#star4').removeClass().addClass('fas fa-star');
			$('#star5').removeClass().addClass('far fa-star');
		});
		
		$('#star5').click(function(){
			$('#grade').val('5');
			$('#star1').removeClass().addClass('fas fa-star');
			$('#star2').removeClass().addClass('fas fa-star');
			$('#star3').removeClass().addClass('fas fa-star');
			$('#star4').removeClass().addClass('fas fa-star');
			$('#star5').removeClass().addClass('fas fa-star');
		});


		
    </script>
    
<script>
var start = 6;

var bar = new RadialProgress(document.getElementById("bar"),{indeterminate:true,colorBg:"white",colorFg:"red",thick:5});

$('#review_more').on('click', function(){
	$('#bar').show();
	$('#more_button').hide();
// 	start += 5;
	
	$.ajax({
		url: '/comment/more',
		type: 'get',
		dataType: 'json',
		data: {
			start: start,
			end: start + 4
		},
		success: function(data){
			console.log(data);
			if (data.length == 0){
				$('#review_more').text('더 이상 불러올 댓글이 없습니다.');
			};
			
		},
		error: function(request, status, error){
			alert(request.status);
			alert(request.responseText);
		}
		
		});
		
		
		
	});
	
function update_Area(num, contents, files) {
	if ($('#update_form').css('display') != null){
		return alert('이미 수정중인 댓글이 있습니다.');
	};
	var update_Tag =
		'<div id="update_form" class="col-12 flex-column align-items-center" style="display:none; height:0px;">'
		 + '<button id="update_write_cancel" type="button" class="btn btn-light d-none d-md-block text-center w-100 m-0" onclick="update_Form_Cancel(this)">'
		 +	'댓글 작성창 접기 <i class="fas fa-arrow-up"></i>'
		 + '</button>'
		 + '<div class="col-md-9 col-12 p-0 flex-column mt-5">'
		 + '<form id="updateForm" method="post" enctype="multipart/form-data">'
				+ '<input id="review_post_num" name="review_post_num" value=' + num + ' style="display: none;">'
				+ '<input id="grade" name="grade" value="0" style="display: none;">'
				
				+ '<textarea rows="6" class="form-control px-2" id="comment" name="comment" autofocus>' + contents + '</textarea>'
				+ '<div class="d-flex flex-wrap justify-content-between mt-3">'
				+	'<div class="star-box d-flex align-items-center">'
					
						+ '<a class="far fa-star" id="star1" style="font-size: 30px; color: rgb(255, 153, 0);"></a>'
						+ '<a class="far fa-star" id="star2" style="font-size: 30px; color: rgb(255, 153, 0);"></a>'
						+ '<a class="far fa-star" id="star3" style="font-size: 30px; color: rgb(255, 153, 0);"></a>'
						+ '<a class="far fa-star" id="star4" style="font-size: 30px; color: rgb(255, 153, 0);"></a>'
						+ '<a class="far fa-star" id="star5" style="font-size: 30px; color: rgb(255, 153, 0);"></a>'
					+ '</div>'
					+ '<input type="button" class="btn btn-warning" value="수정하기" onclick="update_Submit();">'
				
				+ '</div>'
				+ '<div id="update_comment_image" class="d-flex col-12 p-0 my-3">'
					+ '<div class="mr-2" style="width: 20%;">'
						+ '<label for="update_comment_file" class="filebox">'
							+ '<a>'
								+ '<img src="/img/addfile.png" id="update_img22" class="w-100" style="border: 2px dotted #b8bcc4">'
								+ '<input type="file" id="update_comment_file" name="update_comment_file" accept="image/*">'
							+ '</a>'
						+ '</label>'
					+ '</div>'
					
				+ '</div>'
			+ '</form>'
			
		+ '</div>'
	+ '</div>';
	$('#update_area_' + num).append(update_Tag);
	update_Form();
};

function update_Submit(){
	alert('업데이트 완료 !');
}

var update_files = new Array();
var update_previewIndex = 0;
var update_deleteIndex = 0;
var update_test = 0;
var update_j = 0;

function update_addPreview(input) {
	
	image_Exists : if (input[0].files) {
		
        //파일 선택이 여러개였을 시의 대응
        for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
            var file = input[0].files[fileIndex];
            var reader = new FileReader();
            
            if (files.length >= 4){
				alert('최대 4개까지 이미지를 등록 할 수 있습니다.');
				break image_Exists;
			}
            
            for (var i = 0; i < test; i++){
            	if (files[i].name == input[0].files[fileIndex].name){
            		alert(input[0].files[fileIndex].name + ' 는 이미 업로드된 이미지입니다.');
            		break image_Exists;
            	}
            };
            
            update_files[test] = file;
            update_reader.readAsDataURL(file);
            update_test++;
            
            reader.onload = function(img) {
            	var imgNum = update_previewIndex++;
            	var deleteNum = update_deleteIndex++;
            	
        		if (files[i].name != null) {
        			$("#update_comment_image")
                    .append(
                            "<div class=\"preview-box mr-2 view overlay\" style=\"width:20%;\" value=\"" + deleteNum +"\">"
                                    + "<img class=\"thumbnail w-100 img-fluid\" style=\"height:159.13px;\" src=\"" + img.target.result + "\"\/>"
                                    + "<div class=\"mask flex-center waves-effect waves-light rgba-red-strong\" style=\"height:159.13px;\">"
                                    + "<a style=\"font-size:19px; display:flex; justify-content: center; align-items: center\" class=\"white-text w-100 h-100\" id=\"" + deleteNum + "\"  value=\"" + files[imgNum].name + "\" onclick=\"deletePreview(this)\">"
                                    + "삭제" + "</a>" + "</div>" + "</div>");
        		}
            	
            };
        }
    } else
        alert('invalid file input'); // 첨부클릭 후 취소시의 대응책 세우지 않았음
}

$('#update_comment_file').change(function() {
	update_addPreview($(this));
});

function deletePreview(obj) {	// 미리보기 사진 삭제
var deleteNum = obj.attributes['id'].value;
var imgId = obj.attributes['value'].value;

for (var i in files){
	if(files[i].name == imgId){
		files.splice(i, 1);
		test--;
		previewIndex--;
	}
};

$("#comment_image .preview-box[value=" + deleteNum + "]").remove();
}



function fileSubmit(){ // 멀티파트 파일 업로더
	
	 if($('#grade').val() == 0){
     	return alert('별점을 주세요');
     };
	
	var comment = $('#comment').val();
	var formData = new FormData($('#commentForm')[0]);
	
	for (var index = 0; index < Object.keys(files).length; index++){
        formData.append('files',files[index]);
	};
	
	if (comment == "") {
		alert('내용을 입력해주세요.');
	} else {
		$.ajax({
	            url : "/comment/write",
				type : "post",
				data : formData,
				processData : false,
				contentType : false,
				
				success: function(data){
					if (data != ""){
					alert(data);
					return;
					}
					
					$('#comment').val('');
					$('#grade').val('0')
					location.reload();
				},
				error : function(error) {
					alert("파일업로드 실패");
					console.log(error);
					console.log(error.status);
				}
	        });
	}
}


</script>
    
<script>
	var files = new Array();
	var previewIndex = 0;
	var deleteIndex = 0;
	var test = 0;
	var j = 0;
	
	function addPreview(input) {
		
		image_Exists : if (input[0].files) {
			
	        //파일 선택이 여러개였을 시의 대응
	        for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
	            var file = input[0].files[fileIndex];
	            var reader = new FileReader();
	            
	            if (files.length >= 4){
					alert('최대 4개까지 이미지를 등록 할 수 있습니다.');
					break image_Exists;
				}
	            
	            for (var i = 0; i < test; i++){
	            	if (files[i].name == input[0].files[fileIndex].name){
	            		alert(input[0].files[fileIndex].name + ' 는 이미 업로드된 이미지입니다.');
	            		break image_Exists;
	            	}
	            };
	            
	            files[test] = file;
	            reader.readAsDataURL(file);
	            test++;
	            
	            reader.onload = function(img) {
	            	var imgNum = previewIndex++;
	            	var deleteNum = deleteIndex++;
	            	
            		if (files[i].name != null) {
            			$("#comment_image")
                        .append(
                                "<div class=\"preview-box mr-2 view overlay\" style=\"width:20%;\" value=\"" + deleteNum +"\">"
                                        + "<img class=\"thumbnail w-100 img-fluid\" style=\"height:159.13px;\" src=\"" + img.target.result + "\"\/>"
                                        + "<div class=\"mask flex-center waves-effect waves-light rgba-red-strong\" style=\"height:159.13px;\">"
                                        + "<a style=\"font-size:19px; display:flex; justify-content: center; align-items: center\" class=\"white-text w-100 h-100\" id=\"" + deleteNum + "\"  value=\"" + files[imgNum].name + "\" onclick=\"deletePreview(this)\">"
                                        + "삭제" + "</a>" + "</div>" + "</div>");
            		}
	            	
	            };
	        }
	    } else
	        alert('invalid file input'); // 첨부클릭 후 취소시의 대응책 세우지 않았음
	}
	
	$('#comment_file').change(function() {
		addPreview($(this));
	});
	
	function deletePreview(obj) {	// 미리보기 사진 삭제
	var deleteNum = obj.attributes['id'].value;
	var imgId = obj.attributes['value'].value;
	
	for (var i in files){
		if(files[i].name == imgId){
			files.splice(i, 1);
			test--;
			previewIndex--;
		}
	};
	
	$("#comment_image .preview-box[value=" + deleteNum + "]").remove();
	}
	
	
	
	function fileSubmit(){ // 멀티파트 파일 업로더
		
		 if($('#grade').val() == 0){
         	return alert('별점을 주세요');
         };
		
    	var comment = $('#comment').val();
    	var formData = new FormData($('#commentForm')[0]);
    	
    	for (var index = 0; index < Object.keys(files).length; index++){
            formData.append('files',files[index]);
    	};
    	
    	if (comment == "") {
    		alert('내용을 입력해주세요.');
    	} else {
    		$.ajax({
   	            url : "/comment/write",
   				type : "post",
   				data : formData,
   				processData : false,
   				contentType : false,
   				
   				success: function(data){
   					if (data != ""){
   					alert(data);
   					return;
   					}
   					
   					$('#comment').val('');
   					$('#grade').val('0')
   					location.reload();
   				},
   				error : function(error) {
   					alert("파일업로드 실패");
   					console.log(error);
   					console.log(error.status);
   				}
   	        });
    	}
    }
</script>
<style>
	.filebox input[type="file"] { /* 파일 필드 숨기기 */
		position: absolute;
		width: 1px;
		height: 1px;
		padding: 0;
		margin: -1px;
		overflow: hidden;
		clip: rect(0, 0, 0, 0);
		border: 0;
	}
	
	#comment:focus {
	    border: 1px solid #ffb833;
	    box-shadow: 0 0 0 0.2rem #ffdb99;
	}
	#img22 {
		height: 160px;
	}
	#write_form {
		display: none;
		height: 0px;
	}
	
	@media (max-width: 767.9px) {
		#img22 {
			height: 100px;
		}
		#write_form {
			display: flex;
			height: 100%;
		}
	}
</style>