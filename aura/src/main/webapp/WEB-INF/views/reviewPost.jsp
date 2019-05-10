<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/commons/header.jsp" />
<title>${reviewInfo.TITLE} - All Review</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>

<!-- 리뷰 항목 설명 및 사진, 지도 -->
<div class="container d-flex flex-wrap p-md-5 px-1 py-4" style="border-bottom: 2px solid; border-color: #dadee6">
	<div class="col-12 text-center font-weight-bold my-3 d-flex flex-row align-items-center justify-content-center" style="font-size: 40px; padding: 25px 0; border-bottom: 2px solid orange">
		${reviewInfo.TITLE}
		<span class="badge badge-pill badge-success" style="font-size: 20px; margin-left: 3px;">
			${reviewInfo.CATEGORY}
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
				
				<c:if test="${reviewInfo.FILES.size() > 3}">
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
		
		<div class="col-md-4 col-12 p-0 d-flex flex-wrap align-items-start justify-content-center order-2 order-md-1">
			<div class="col-md-12 col-8">
				<div id="map" class="my-4" style="width:100%; height:250px;"></div>
				<div class="font-weight-bold text-center" style="font-size: 20px"> ${reviewInfo.ADDR} </div>
			</div>
			<div class="col-12 d-flex justify-content-center my-4"> 
				<a id="share" onclick="doReview(1)">
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
				<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#basicExampleModal"> -->
<!--   Launch demo modal -->
<!-- </button> -->

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
					<button type="button" id="review_write_pc" class="btn btn-warning review-write">리뷰 작성하기</button>
				</c:when>
				<c:otherwise>
					<button type="button" id="review_write_login" class="btn btn-warning review-write">리뷰 작성하기</button>
				</c:otherwise>
			</c:choose>
		</div>
		${reviewInfo}
		<!-- 리뷰 상세 설명 -->
		<div class="d-flex flex-wrap col-md-8 col-12 order-1 order-md-2 mx-auto">
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
							<div class="col-md-6 col-12 p-0 d-flex">
								<div class="col-8 p-0 m-0">
									${menu.name}
								</div>
								<div class="col-4 p-0 m-0 text-center">
									${String.format("%,3d", Integer.parseInt(menu.price))}원
								</div>
							</div>
						</c:forEach>
					</c:if>
					<c:if test="${type eq 2}">
						<c:forEach var="sub" items="${sub}"  varStatus="num">
							<div class="col-5 p-0 m-0">
								${sub.intValue()}
							</div>
						</c:forEach>
					</c:if>
				</div>
			</div>
			<div class="col-12 d-flex flex-row p-0 my-1">
				<i class="col-1 pt-1 far fa-comment-alt"></i> 
				<div class="col-11 pl-1 font-weight-bold review-explanation-2">
					${reviewInfo.CONTENTS}				
				</div>
			</div>
		</div>
	</div>
</div>


<!-- 컨텐트 영역 -->
<div class="container d-flex flex-wrap">

	<!-- 댓글 작성 양식 -->
	<div id="write_form" class="col-12 flex-md-row flex-wrap justify-content-center"
		style="display: none; height: 0px; border-bottom: 2px solid #dadee6;">
		<button id="review_write_cancel" type="button"
			class="btn btn-light col-12 text-center py-3 m-0 mb-3">
			댓글 작성창 접기 <i class="fas fa-arrow-up"></i>
		</button>

		<div class="col-md-3 col-12 d-flex flex-wrap text-center align-content-start justify-content-center">
			<h4 class="my-3 font-weight-bold w-100" id="review_write">리뷰 작성</h4>
			<div class="w-50">
				<c:choose>
					<c:when test="${profile ne null }">
						<img class="rounded-circle w-100 h-100" src=${profile }>
					</c:when>
					<c:otherwise>
						<img class="rounded-circle w-100 h-100" src="https://ssl.pstatic.net/static/pwe/address/img_profile.png">
					</c:otherwise>
				</c:choose>
				
			</div>
<!-- 			세션 유저의 닉네임 넣기 			-->
			<div class="w-100 my-3" id="nickname">${nickname}</div>

			<div class="d-flex flex-wrap text-left mt-4">
				<div class="star-box">
<!-- 					마우스가 호버되면 별 색깔 바꾸기 및 호버된 별의 순서에따라 점수를 다르게 주기 -->
					<a class="far fa-star" id="star1" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
					<a class="far fa-star" id="star2" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
					<a class="far fa-star" id="star3" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
					<a class="far fa-star" id="star4" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
					<a class="far fa-star" id="star5" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
				</div>
			</div>
		</div>	

		<div class="col-md-9 col-12 p-0 flex-column my-3">
			<form id="commentForm" method="post" enctype="multipart/form-data">
				<input id="review_post_num" name="review_post_num" value=${reviewInfo.NUM} style="display: none;">
				<input id="nickname_post" name="nickname_post" value=${nickname} style="display: none;">
				<input id="grade" name="grade" value="0" style="display: none;">
				
				<textarea rows="10" class="form-control px-2" id="comment" name="comment" autofocus></textarea>

				<div id="comment_image" class="d-md-flex d-none col-12 p-0 my-3">
				
					<div class="mr-2" style="width: 20%;">
						<label for="comment_file" class="filebox">
							<a>
								<img src="/img/addfile.png" id="img22" class="w-100" style="height: 160px; border: 2px dotted #b8bcc4">
								<input type="file" id="comment_file" name="comment_file" accept="image/*">
							</a>
						</label>
					</div>
					
				</div>
			</form>

				
				
				<div class="my-4 text-md-right text-center">
					<input id="comment_submit" type="button" class="btn btn-light" value="등록하기" onclick="fileSubmit();" disabled>
					
				</div>
			
			
		</div>
	</div>

	<!-- 댓글 목록 -->
	<div class="d-flex col-12 flex-md-row flex-wrap my-3">
		<div class="card col-12 my-3 d-md-none d-block">
			<div
				class="card-header px-2 d-flex justify-content-start align-items-center bg-white border-0">
				<div style="width: 13%">
					<img class="rounded-circle w-100"
						src="https://picsum.photos/50/50?image=1081">
				</div>

				<div class="ml-3" style="width: 80%">유저 닉네임2</div>
			</div>

			<div class="card-body p-2">
				<div
					class="col-12 d-flex justify-content-center align-items-center p-0 my-3">
					<!-- 유저들이 올린리뷰 후기 사진0-->
					<div id="carouselExampleFade" class="carousel slide w-100"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="d-flex justify-content-around flex-row">
									<img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=230"
										style="width: 30%"> <img class="col-4 p-0 mx-2"
										src="https://picsum.photos/200/200?image=240"
										style="width: 30%"> <img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=280"
										style="width: 30%">
								</div>
							</div>
							<div class="carousel-item">
								<div class="d-flex justify-content-around flex-row">
									<img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=230"
										style="width: 30%"> <img class="col-4 p-0 mx-2"
										src="https://picsum.photos/200/200?image=240"
										style="width: 30%"> <img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=280"
										style="width: 30%">
								</div>
							</div>
							<div class="carousel-item">
								<div class="d-flex justify-content-around flex-row">
									<img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=230"
										style="width: 30%"> <img class="col-4 p-0 mx-2"
										src="https://picsum.photos/200/200?image=240"
										style="width: 30%"> <img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=280"
										style="width: 30%">
								</div>
							</div>
						</div>
						<a class="user-photo-button-left carousel-control-prev pr-5"
							href="#carouselExampleFade" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon bg-dark"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="user-photo-button-right carousel-control-next pl-5"
							href="#carouselExampleFade" role="button" data-slide="next">
							<span class="carousel-control-next-icon bg-dark"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
					<!-- 유저들이 올린리뷰 후기 사진0 End-->
				</div>
				<div class="col-12 p-0 my-3">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Maiores, quam ipsum! Expedita
					nesciunt repellat officia deserunt incidunt libero sequi possimus
					pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo
					vitae quos.</div>
			</div>

			<div class="card-footer d-flex justify-content-between bg-white">
				<div
					class="col-6 p-0 d-flex flex-wrap align-items-center justify-content-center">
					<div class="col-12 d-flex justify-content-center">
						<i class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i>
					</div>
					<p class="text-center">4.5</p>
				</div>

				<div
					class="d-flex col-5 flex-column align-items-center justify-content-center">
					<i class="fas fa-heart" style="font-size: 30px"></i>
					<p>87.451</p>
				</div>
			</div>
		</div>

		<div class="card col-12 my-3 d-md-none d-block">
			<div
				class="card-header px-2 d-flex justify-content-start align-items-center bg-white border-0">
				<div style="width: 13%">
					<img class="rounded-circle w-100"
						src="https://picsum.photos/50/50?image=1081">
				</div>

				<div class="ml-3" style="width: 80%">유저 닉네임2</div>
			</div>

			<div class="card-body p-2">
				<div
					class="col-12 d-flex justify-content-center align-items-center p-0 my-3">
					<!-- 유저들이 올린리뷰 후기 사진0-->
					<div id="carouselExampleFade" class="carousel slide w-100"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="d-flex justify-content-around flex-row">
									<img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=230"
										style="width: 30%"> <img class="col-4 p-0 mx-2"
										src="https://picsum.photos/200/200?image=240"
										style="width: 30%"> <img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=280"
										style="width: 30%">
								</div>
							</div>
							<div class="carousel-item">
								<div class="d-flex justify-content-around flex-row">
									<img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=230"
										style="width: 30%"> <img class="col-4 p-0 mx-2"
										src="https://picsum.photos/200/200?image=240"
										style="width: 30%"> <img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=280"
										style="width: 30%">
								</div>
							</div>
							<div class="carousel-item">
								<div class="d-flex justify-content-around flex-row">
									<img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=230"
										style="width: 30%"> <img class="col-4 p-0 mx-2"
										src="https://picsum.photos/200/200?image=240"
										style="width: 30%"> <img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=280"
										style="width: 30%">
								</div>
							</div>
						</div>
						<a class="user-photo-button-left carousel-control-prev pr-5"
							href="#carouselExampleFade" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon bg-dark"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="user-photo-button-right carousel-control-next pl-5"
							href="#carouselExampleFade" role="button" data-slide="next">
							<span class="carousel-control-next-icon bg-dark"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
					<!-- 유저들이 올린리뷰 후기 사진0 End-->
				</div>
				<div class="col-12 p-0 my-3">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Maiores, quam ipsum! Expedita
					nesciunt repellat officia deserunt incidunt libero sequi possimus
					pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo
					vitae quos.</div>
			</div>

			<div class="card-footer d-flex justify-content-between bg-white">
				<div
					class="col-6 p-0 d-flex flex-wrap align-items-center justify-content-center">
					<div class="col-12 d-flex justify-content-center">
						<i class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i>
					</div>
					<p class="text-center">4.5</p>
				</div>

				<div
					class="d-flex col-5 flex-column align-items-center justify-content-center">
					<i class="far fa-heart" style="font-size: 30px"></i>
					<p>87.451</p>
				</div>
			</div>
		</div>

		<div class="card col-12 my-3 d-md-none d-block">
			<div
				class="card-header px-2 d-flex justify-content-start align-items-center bg-white border-0">
				<div style="width: 13%">
					<img class="rounded-circle w-100"
						src="https://picsum.photos/50/50?image=1081">
				</div>

				<div class="ml-3" style="width: 80%">유저 닉네임2</div>
			</div>

			<div class="card-body p-2">
				<div
					class="col-12 d-flex justify-content-center align-items-center p-0 my-3">
					<!-- 유저들이 올린리뷰 후기 사진0-->
					<div id="carouselExampleFade" class="carousel slide w-100"
						data-ride="carousel">
						<div class="carousel-inner">
							<div class="carousel-item active">
								<div class="d-flex justify-content-around flex-row">
									<img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=230"
										style="width: 30%"> <img class="col-4 p-0 mx-2"
										src="https://picsum.photos/200/200?image=240"
										style="width: 30%"> <img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=280"
										style="width: 30%">
								</div>
							</div>
							<div class="carousel-item">
								<div class="d-flex justify-content-around flex-row">
									<img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=230"
										style="width: 30%"> <img class="col-4 p-0 mx-2"
										src="https://picsum.photos/200/200?image=240"
										style="width: 30%"> <img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=280"
										style="width: 30%">
								</div>
							</div>
							<div class="carousel-item">
								<div class="d-flex justify-content-around flex-row">
									<img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=230"
										style="width: 30%"> <img class="col-4 p-0 mx-2"
										src="https://picsum.photos/200/200?image=240"
										style="width: 30%"> <img class="col-4 p-0"
										src="https://picsum.photos/200/200?image=280"
										style="width: 30%">
								</div>
							</div>
						</div>
						<a class="user-photo-button-left carousel-control-prev pr-5"
							href="#carouselExampleFade" role="button" data-slide="prev">
							<span class="carousel-control-prev-icon bg-dark"
							aria-hidden="true"></span> <span class="sr-only">Previous</span>
						</a> <a class="user-photo-button-right carousel-control-next pl-5"
							href="#carouselExampleFade" role="button" data-slide="next">
							<span class="carousel-control-next-icon bg-dark"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
					<!-- 유저들이 올린리뷰 후기 사진0 End-->
				</div>
				<div class="col-12 p-0 my-3">Lorem ipsum dolor sit amet
					consectetur adipisicing elit. Maiores, quam ipsum! Expedita
					nesciunt repellat officia deserunt incidunt libero sequi possimus
					pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo
					vitae quos.</div>
			</div>

			<div class="card-footer d-flex justify-content-between bg-white">
				<div
					class="col-6 p-0 d-flex flex-wrap align-items-center justify-content-center">
					<div class="col-12 d-flex justify-content-center">
						<i class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i> <i
							class="far fa-star" style="font-size: 20px;"></i>
					</div>
					<p class="text-center">4.5</p>
				</div>

				<div class="d-flex col-5 flex-column align-items-center justify-content-center">
					<i class="far fa-heart" style="font-size: 30px"></i>
					<p>87.451</p>
				</div>
			</div>
		</div>

		<!-- strat -->
		
	<c:forEach var="commentList" items="${commentList }">
		<div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active"
			id="home">
			
			
			<div
				class=" col-2 d-flex flex-wrap justify-content-center align-items-center"
				style="width: 100%; display: flex;">
				
				
				<div style="width: 65%; height: 75px;">
				<c:choose>
					<c:when test="${commentList.profile ne null }">
						<img class="rounded-circle w-100 h-100" src=${commentList.profile }>
					</c:when>
					<c:otherwise>
						<img class="rounded-circle w-100 h-100" src="https://ssl.pstatic.net/static/pwe/address/img_profile.png">
					</c:otherwise>
				</c:choose>
				</div>

				<div class="w-100 text-center" style="margin-top: 0px">${commentList.nickname }
				
				</div>
				
					
				<div class=" col-12 p-0 d-flex justify-content-center">
					<c:forEach begin="1" end="${commentList.comment_Score }">
						<i class="fas fa-star" style="font-size: 20px; color: rgb(255, 153, 0);"></i>
					</c:forEach>
					<c:forEach begin="1" end="${5-commentList.comment_Score }">
						<i class="far fa-star" style="font-size: 20px; color: rgb(255, 153, 0);"></i>
					</c:forEach>
				</div>
				
				
				
			</div>

			<div
				class="col-2 d-flex justify-content-center align-items-center p-0">
				<!-- 유저들이 올린리뷰 후기 사진0-->
				<div id="carouselExampleFade-1" class="carousel slide carousel-fade"
					data-ride="carousel">
					<div class="carousel-inner user-picture">
<!-- 						<div class="carousel-item active"> -->
<!-- 							<img class="d-block w-100 user-review-img" -->
<!-- 								src="https://picsum.photos/200/200?image=230"> -->
<!-- 						</div> -->
<!-- 						<div class="carousel-item"> -->
<!-- 							<img class="d-block w-100 user-review-img" -->
<!-- 								src="https://picsum.photos/200/200?image=240"> -->
<!-- 						</div> -->
<!-- 						<div class="carousel-item"> -->
<!-- 							<img class="d-block w-100 user-review-img" -->
<!-- 								src="https://picsum.photos/200/200?image=280"> -->
<!-- 						</div> -->
					</div>
					<a class="user-photo-button-left carousel-control-prev"
						href="#carouselExampleFade-1" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="user-photo-button-right carousel-control-next"
						href="#carouselExampleFade-1" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				<!-- 유저들이 올린리뷰 후기 사진0 End-->
			</div>

			<div class="col-6 d-flex flex-wrap flex-row align-items-center">
				<div class>${commentList.comment_Contents }</div>
				
			</div>
			
			<div
				class="d-flex col-2 flex-column align-items-center justify-content-center">
				<i class="fas fa-heart heartCl"  style="font-size: 40px"></i>
				<p class="heart-number">
				<fmt:formatNumber value="${commentList.comment_Like }" pattern="#,###"/>
				</p>
			</div>
		</div>
		<script type="text/javascript">
			$('.heartCl').click(function(){
				if($(this).css('color')=='rgb(33, 37, 41)'){
					$(this).css('color','rgb(255, 0, 0)')//빨강
				}else{
					$(this).css('color','rgb(33, 37, 41)')//검정
				}
				
			})
		
		</script>
	</c:forEach>
<!-- 		끝 부분 -->


		
<!-- 		<div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active" -->
<!-- 			id="home"> -->


<!-- 		</div> -->

<!-- 		<div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active" -->
<!-- 			id="home"> -->
			
<!-- 		</div> -->
		
	<div id="review_more"
		class="d-flex col-12 justify-content-center align-items-center bg-light py-3 my-4">
		<a class="text-center" href="#" style="text-decoration: none"> <img
			src="/img/more.png"
			style="width: 20%; border-radius: 100%; border: 1px solid gray">
			<span class="ml-2 text-dark">댓글 더보기</span>
		</a>
	</div>
</div>

</div>


<jsp:include page="/WEB-INF/views/commons/footer.jsp" />
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=53d46cec9bd19a0835b7c8bc8150a448&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new daum.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new daum.maps.Map(mapContainer, mapOption); 

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
                    height: '630px'
                }, 400);
                $('#write_form').css('display', 'flex');
            });
            
            $('#review_write_mobile').on('click', () => {
                $('#write_form').animate({
                    height: '900px'
                }, 400);
                $('#write_form').css('display', 'flex');
            });

            $('#review_write_cancel').on('click', () => {
                $('#write_form').animate({
                    height: '0px'
                }, 200);
                // $('#write_form').css('visibility', 'hidden');
                setTimeout(() => {
                    $('#write_form').css('display', 'none');

                }, 180);
            });
            
            $('#review_write_login').on('click', () => {
            	alert('로그인이 필요합니다.');
            });
            
        });
        
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
        
        
// 		for (var i = 1; i <= 5; i++){
// 			$('#star' + i).hover(function(){ // 별 마우스호버 이벤트
// 	        	$(this).removeClass().addClass('fas fa-star');
// 	        }, function(){
// 	        		$(this).removeClass().addClass('far fa-star');
// 	        	});
// 		}
		
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
		
		
		
		
		
// 		$('#star3').click(function(){
// 			$('#star1').removeClass().addClass('fas fa-star');
// 			$('#star2').removeClass().addClass('fas fa-star');
// 		});
		
// 		$('#star4').hover(function(){
// 			$('#star1').removeClass().addClass('fas fa-star');
// 			$('#star2').removeClass().addClass('fas fa-star');
// 			$('#star3').removeClass().addClass('fas fa-star');
// 		}, function(){
// 			$('#star1').removeClass().addClass('far fa-star');
// 			$('#star2').removeClass().addClass('far fa-star');
// 			$('#star3').removeClass().addClass('far fa-star');
// 		});
		
// 		$('#star5').hover(function(){
// 			$('#star1').removeClass().addClass('fas fa-star');
// 			$('#star2').removeClass().addClass('fas fa-star');
// 			$('#star3').removeClass().addClass('fas fa-star');
// 			$('#star4').removeClass().addClass('fas fa-star');
// 		}, function(){
// 			$('#star1').removeClass().addClass('far fa-star');
// 			$('#star2').removeClass().addClass('far fa-star');
// 			$('#star3').removeClass().addClass('far fa-star');
// 			$('#star4').removeClass().addClass('far fa-star');
// 		})
		
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
                                        + "<a style=\"font-size:19px;\" class=\"white-text\" id=\"" + deleteNum + "\"  value=\"" + files[imgNum].name + "\" onclick=\"deletePreview(this)\">"
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
</style>

</body>
</html>