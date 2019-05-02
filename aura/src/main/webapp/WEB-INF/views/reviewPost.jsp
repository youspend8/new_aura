<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="/WEB-INF/views/commons/header.jsp" />
<title>석촌호수 - All Review</title>


<!-- 카테고리 선택 -->
<div class="d-flex container p-0 flex-wrap justify-content-center">
	<div class="btn-group col-4 m-0 px-0">
		<button id="restaurant-button" type="button"
			class="btn btn-dark btn-lg px-1 dropdown-toggle">맛집</button>

		<!-- <div id="restaurant-category" class="restaurant-category">
                <div class="restaurant-category-button" style="
                    display: flex;
                    width: 25%;
                    flex-direction: column;
                ">
                    <button id="general-button" type="button" class="btn btn-light d-flex px-1 justify-content-center">종합병원
                        <i class="fas fa-caret-right ml-4 align-self-center"></i>
                    </button>
                    <button id="special-button" type="button" class="btn btn-light d-flex px-1 justify-content-center">전문병원
                        <i class="fas fa-caret-right ml-4 align-self-center"></i>
                    </button>
                </div>
                <div id="general-restaurant" class="general-restaurant">
                    <ul class="general-category">
                        <li>l
                            <i class="fas fa-square"></i>
                            정형외과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            내과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            이비인후과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            방사선과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            비뇨기과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            내과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            외과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            신경외과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            산부인과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            안과
                        </li>
                    </ul>
                    
                </div>
                <div id="special-restaurant" class="special-restaurant">
                    <ul class="special-category">
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                    </ul>
                    
                </div>
            </div> -->
	</div>

	<div class="hospital-group btn-group col-4 m-0 px-0">
		<button id="hospital-button" type="button"
			class="btn btn-dark btn-lg px-1 dropdown-toggle">병원</button>

		<div id="hospital-category" class="hospital-category">
			<button id="general-button" type="button"
				class="btn btn-dark justify-content-center px-1 d-flex w-100">
				종합병원 <i class="fas fa-caret-right ml-1 align-self-center"></i>
			</button>

			<button id="special-button" type="button"
				class="btn btn-dark justify-content-center px-1 d-flex w-100">
				전문병원 <i class="fas fa-caret-right ml-1 align-self-center"></i>
			</button>
		</div>

		<ul class="general-category" id="general-category">
			<li>
				<button type="button" class="btn btn-dark px-0">정형외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">내과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">이비인후과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">방사선과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">비뇨기과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">내과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">신경외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">산부인과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">안과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">정형외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">내과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">이비인후과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">방사선과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">비뇨기과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">내과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">신경외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">산부인과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">안과</button>
			</li>
		</ul>

		<ul class="special-category" id="special-category">
			<li>
				<button type="button" class="btn btn-dark px-0">한의원</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">내과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">신경외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">산부인과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">안과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">정형외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">내과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">이비인후과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">방사선과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">비뇨기과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">내과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">신경외과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">산부인과</button>
			</li>
			<li>
				<button type="button" class="btn btn-dark px-0">안과</button>
			</li>
		</ul>
	</div>

	<div class="btn-group col-4 m-0 px-0">
		<button id="elect-button" type="button"
			class="btn btn-dark btn-lg px-1 dropdown-toggle">전자제품</button>

		<!-- <div id="hospital-category" class="hospital-category">
                <div class="hosipital-category-button" style="
                    display: flex;
                    width: 25%;
                    flex-direction: column;
                ">
                    <button id="general-button" type="button" class="btn btn-light d-flex px-1 justify-content-center">종합병원
                        <i class="fas fa-caret-right ml-4 align-self-center"></i>
                    </button>
                    <button id="special-button" type="button" class="btn btn-light d-flex px-1 justify-content-center">전문병원
                        <i class="fas fa-caret-right ml-4 align-self-center"></i>
                    </button>
                </div>
                <div id="general-elect" class="general-elect">
                    <ul class="general-category">
                        <li>
                            <i class="fas fa-square"></i>
                            정형외과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            내과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            이비인후과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            방사선과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            비뇨기과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            내과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            외과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            신경외과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            산부인과
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            안과
                        </li>
                    </ul>
                    
                </div>
                <div id="special-elect" class="special-elect">
                    <ul class="special-category">
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                        <li>
                            <i class="fas fa-square"></i>
                            example
                        </li>
                    </ul>
                    
                </div>
            </div> -->
	</div>

</div>

<!-- 리뷰 항목 설명 및 사진, 지도 -->
<div class="container d-flex flex-wrap p-md-5 px-2 py-4" style="border-bottom: 2px solid; border-top: 2px solid; border-color: #dadee6">
	<div class="col-12 text-center">
		${reviewInfo.TITLE}
	</div>
	<div class="col-md-8 col-12 d-flex justify-content-center align-items-start flex-wrap">
		<!-- 리뷰 사진 캐러셀 -->
		<div id="carousel-example-2" class="carousel slide col-12"
			data-ride="carousel">
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<div class="d-flex">
						<c:forEach var="file" items="${reviewInfo.files}">
							<div class="card-body p-1 col-4">
								<img class="w-100" src="${file}" style="width: 100%; height: 200px">
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
			
			<c:if test="${reviewInfo.files.size() > 3}">
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
		<!-- 리뷰 상세 설명 -->
		<div class="d-flex flex-wrap col-12">
			<p class="col-12 p-0 my-1">
				<span> ■ 연락처 : </span> <span> ${reviewInfo.TEL} </span>
			</p>
			<p class="col-12 p-0 my-1">
				<span> ■ 주소 : </span> <span> ${reviewInfo.ADDR} </span>
			</p>
			<p class="col-12 p-0 my-1">
				<span> ■ 운영 시간 </span>
				<p class="ml-4 my-1">
					<div>
						${reviewInfo.SERVICETIME}
					</div>
				</p>
			</p>
			<p class="col-12 p-0 my-1">
				<span> ■ 세부 정보 : </span> 
				<span class="review-explanation-2  col-18">
					${reviewInfo.CONTENTS}				
				</span>
			</p>
			<p class="col-12 p-0 my-1">
				<span> ■ 메뉴 : </span> 
				
			</p>
			
				<p class="col-12 p-0 my-1 ml-lg-3">

				<c:forEach var="menu" items="${menu}"  varStatus="num">
					<span>${num.index+1}. ${menu.name}</span>
					<span>( ${String.format("%,3d", Integer.parseInt(menu.price))} 원 )</span><br>
				</c:forEach>
				</p>
			
			
		</div>
<!-- 		점수		 -->
		<div
			class="d-md-none col-12 d-flex justify-content-between align-items-center p-0 ">
			<div class="col-6 d-flex align-items-center justify-content-center">
				<i class="fas fa-share-alt"></i> 
				<i class="far fa-star mx-4"></i>
				<i class="far fa-thumbs-up"></i>
			</div>
			<div class="col-6 d-flex align-items-center justify-content-end p-0">
				<button type="button" id="review_write_mobile"
					class="btn btn-dark review-write px-3">리뷰 작성하기</button>
			</div>
		</div>
	</div>
	<div
		class="col-4 d-md-flex d-none flex-wrap align-items-center justify-content-center">
		<div class="col-12">
			<img class="main-review-photo w-100"
				src="https://picsum.photos/350/300?image=1040">
		</div>
		<div class="col-12 d-flex justify-content-center my-4">
			<a id="share" onclick="doReview(1)">
				<i class="fas fa-share-alt"></i>
			</a>
			<a id="share" onclick="doReview(2)">
			<i class="far fa-star mx-4" ></i>
			</a>
			<a id="share" onclick="doReview(3)">
			<i class="far fa-thumbs-up"></i>
				</a>
		</div>
		<c:choose>
			<c:when test="${nickname ne null}">
				<button type="button" id="review_write_pc" class="btn btn-dark review-write">리뷰 작성하기</button>
			</c:when>
			<c:otherwise>
				<button type="button" id="review_write_login" class="btn btn-dark review-write">리뷰 작성하기</button>
			</c:otherwise>
		</c:choose>
	</div>
</div>


<!-- 컨텐트 영역 -->
<div class="container d-flex flex-wrap">

	<!-- 댓글 작성 양식 -->
	<div id="write_form"
		class="col-12 flex-md-row flex-wrap justify-content-center"
		style="display: none; height: 0px; border-bottom: 2px solid #dadee6;">
		<button id="review_write_cancel" type="button"
			class="btn btn-primary col-12 text-center py-3 m-0 mb-3">
			댓글 작성창 접기 <i class="fas fa-arrow-up"></i>
		</button>

		<div
			class="col-md-3 col-12 d-flex flex-wrap text-center align-content-start justify-content-center">
			<h4 class="my-3 font-weight-bold w-100" id="review_write">리뷰 작성</h4>
			<div class="w-50">
				<img class="rounded-circle w-100"
					src="https://mdbootstrap.com/img/Photos/Avatars/img%20%2810%29.jpg">
			</div>
			
<!-- 			세션 유저의 닉네임 넣기 			-->
			<div class="w-100 my-3" id="nickname">${nickname}</div>

			<div class="d-flex flex-wrap text-left mt-4">
				<div class="star-box">
<!-- 					마우스가 호버되면 별 색깔 바꾸기 및 호버된 별의 순서에따라 점수를 다르게 주기 -->
					<a class="far fa-star" id="star1" name="star1" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
					<a class="far fa-star" id="star2" name="star2" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
					<a class="far fa-star" id="star3" name="star3" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
					<a class="far fa-star" id="star4" name="star4" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
					<a class="far fa-star" id="star5" name="star5" style="font-size: 30px; color: rgb(255, 153, 0);"></a>
				</div>
			</div>
		</div>	

		<div class="col-md-9 col-12 p-0 flex-column my-3">
			<form id="commentForm" method="post" enctype="multipart/form-data">
				<input id="review_post_num" name="review_post_num" type="text" value=${reviewInfo.NUM} style="display: none;">
				<input id="nickname_post" name="nickname_post" type="text" value=${nickname} style="display: none;">
				
				<textarea rows="10" class="form-control px-2" id="comment" name="comment" autofocus></textarea>

				<div id="comment_image" class="d-md-flex d-none col-12 p-0 my-3">
				
			</form>
					<div class="mr-2" style="width: 20%;">
						<label for="comment_file" class="filebox">
							<a>
								<img src="/img/addfile.png" id="img22" class="w-100" style="height: 160px; border: 2px dotted #b8bcc4">
								<input type="file" id="comment_file" name="comment_file" multiple accept="image/*">
							</a>
						</label>
					</div>
					
					
					
					
				</div>

				
				
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

				<div
					class="d-flex col-5 flex-column align-items-center justify-content-center">
					<i class="far fa-heart" style="font-size: 30px"></i>
					<p>87.451</p>
				</div>
			</div>
		</div>

		<!-- strat -->
		<div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active"
			id="home">
			<div
				class=" col-2 d-flex flex-wrap justify-content-center align-items-center"
				style="width: 100%; display: flex;">
				<div class="w-50">
					<img class="rounded-circle w-100"
						src="https://picsum.photos/300/300?image=1081">
				</div>

				<div class="w-100 text-center" style="margin-top: 0px">유저 닉네임2
				</div>
			</div>

			<div
				class="col-2 d-flex justify-content-center align-items-center p-0">
				<!-- 유저들이 올린리뷰 후기 사진0-->
				<div id="carouselExampleFade-1" class="carousel slide carousel-fade"
					data-ride="carousel">
					<div class="carousel-inner user-picture">
						<div class="carousel-item active">
							<img class="d-block w-100 user-review-img"
								src="https://picsum.photos/200/200?image=230">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100 user-review-img"
								src="https://picsum.photos/200/200?image=240">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100 user-review-img"
								src="https://picsum.photos/200/200?image=280">
						</div>
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
				<div>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Maiores, quam ipsum! Expedita nesciunt repellat officia deserunt
					incidunt libero sequi possimus pariatur, fugiat magnam, repellendus
					ipsa mollitia in explicabo vitae quos.</div>

				<div class=" col-5 p-0 d-flex flex-wrap">
					<i class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i>
				</div>
			</div>
			<div
				class="d-flex col-2 flex-column align-items-center justify-content-center">
				<i class="far fa-heart" style="font-size: 40px"></i>
				<p class="heart-number">87.451</p>
			</div>
		</div>

		<div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active"
			id="home">
			<div
				class=" col-2 d-flex flex-wrap justify-content-center align-items-center"
				style="width: 100%; display: flex;">
				<div class="w-50">
					<img class="rounded-circle w-100"
						src="https://picsum.photos/300/300?image=1081">
				</div>

				<div class="w-100 text-center" style="margin-top: 0px">유저 닉네임2
				</div>
			</div>

			<div
				class="col-2 d-flex justify-content-center align-items-center p-0">
				<!-- 유저들이 올린리뷰 후기 사진0-->
				<div id="carouselExampleFade-2" class="carousel slide carousel-fade"
					data-ride="carousel">
					<div class="carousel-inner user-picture">
						<div class="carousel-item active">
							<img class="d-block w-100 user-review-img"
								src="https://picsum.photos/200/200?image=230">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100 user-review-img"
								src="https://picsum.photos/200/200?image=240">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100 user-review-img"
								src="https://picsum.photos/200/200?image=280">
						</div>
					</div>
					<a class="user-photo-button-left carousel-control-prev"
						href="#carouselExampleFade-2" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="user-photo-button-right carousel-control-next"
						href="#carouselExampleFade-2" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				<!-- 유저들이 올린리뷰 후기 사진0 End-->
			</div>

			<div class="col-6 d-flex flex-wrap flex-row align-items-center">
				<div>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Maiores, quam ipsum! Expedita nesciunt repellat officia deserunt
					incidunt libero sequi possimus pariatur, fugiat magnam, repellendus
					ipsa mollitia in explicabo vitae quos.</div>

				<div class=" col-5 p-0 d-flex flex-wrap">
					<i class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i>
				</div>
			</div>
			<div
				class="d-flex col-2 flex-column align-items-center justify-content-center">
				<i class="far fa-heart" style="font-size: 40px"></i>
				<p class="heart-number">87.451</p>
			</div>
		</div>

		<div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active"
			id="home">
			<div
				class=" col-2 d-flex flex-wrap justify-content-center align-items-center"
				style="width: 100%; display: flex;">
				<div class="w-50">
					<img class="rounded-circle w-100"
						src="https://picsum.photos/300/300?image=1081">
				</div>

				<div class="w-100 text-center" style="margin-top: 0px">유저 닉네임2
				</div>
			</div>

			<div
				class="col-2 d-flex justify-content-center align-items-center p-0">
				<!-- 유저들이 올린리뷰 후기 사진0-->
				<div id="carouselExampleFade-3" class="carousel slide carousel-fade"
					data-ride="carousel">
					<div class="carousel-inner user-picture">
						<div class="carousel-item active">
							<img class="d-block w-100 user-review-img"
								src="https://picsum.photos/200/200?image=230">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100 user-review-img"
								src="https://picsum.photos/200/200?image=240">
						</div>
						<div class="carousel-item">
							<img class="d-block w-100 user-review-img"
								src="https://picsum.photos/200/200?image=280">
						</div>
					</div>
					<a class="user-photo-button-left carousel-control-prev"
						href="#carouselExampleFade-3" role="button" data-slide="prev">
						<span class="carousel-control-prev-icon" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="user-photo-button-right carousel-control-next"
						href="#carouselExampleFade-3" role="button" data-slide="next">
						<span class="carousel-control-next-icon" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
				<!-- 유저들이 올린리뷰 후기 사진0 End-->
			</div>

			<div class="col-6 d-flex flex-wrap flex-row align-items-center">
				<div>Lorem ipsum dolor sit amet consectetur adipisicing elit.
					Maiores, quam ipsum! Expedita nesciunt repellat officia deserunt
					incidunt libero sequi possimus pariatur, fugiat magnam, repellendus
					ipsa mollitia in explicabo vitae quos.</div>

				<div class=" col-5 p-0 d-flex flex-wrap">
					<i class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i> <i
						class="far fa-star" style="font-size: 20px;"></i>
				</div>
			</div>
			<div
				class="d-flex col-2 flex-column align-items-center justify-content-center">
				<i class="far fa-heart" style="font-size: 40px"></i>
				<p class="heart-number">87.451</p>
			</div>
		</div>
	</div>
	<div id="review_more"
		class="d-flex col-12 justify-content-center align-items-center bg-light py-3 my-4">
		<a class="text-center" href="#" style="text-decoration: none"> <img
			src="/img/more.png"
			style="width: 20%; border-radius: 100%; border: 1px solid gray">
			<span class="ml-2 text-dark">댓글 더보기</span>
		</a>
	</div>
</div>



<jsp:include page="/WEB-INF/views/commons/footer.jsp" />

<script>
    	function doReview(type) {
	    	$.ajax({
	    		url: '/reviewList/reviewPost', // 요청 할 주소 
	    	    type: 'POST', // GET, PUT
	    	    dataType: 'text', 
	    	    data: {
	    	    	postNum : ${reviewInfo.NUM},
	    	    	nickname: '채훈22',
	    	    	reviewType: type
	    	    },
	    	    success: function(data) {    
    	        },
    	       error : function (data) {
    	        	alert('죄송합니다. 잠시 후 다시 시도해주세요.');
	    	        return false;
    	       }  // 전송할 데이터
	    	})
    	}
    
        $(document).ready(function() {
            var state = false;
            var generalHospitalState = false;
            var specialHospitalState = false;

            $('#hospital-button').on('click', function() {
                if (state == true) {
                    $('#hospital-category').css('visibility', 'hidden');
                    hideSpecialCategory();
                    hideGeneralCategory();
                    specialHospitalState = false;
                    generalHospitalState = false;
                    
                } else {
                    $('#hospital-category').css('visibility', 'visible');
                }
                state = !state;
            });

            $('#general-button').on('mouseover', function() {
                showGeneralCategory();
                generalHospitalState = !generalHospitalState;

                if (specialHospitalState == true) {
                    hideSpecialCategory();
                    specialHospitalState = !specialHospitalState;
                }
            });

            $('#special-button').on('mouseover', function() {
                showSpecialCategory();
                specialHospitalState = !specialHospitalState;

                if (generalHospitalState == true) {
                    hideGeneralCategory();
                    generalHospitalState = !generalHospitalState;
                }
            });
            
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
            
            
            $(document).on('click', (e) => {
                var target = e.target.id;
                if (target == 'general-button' || target == 'special-button'
                    || target == 'hospital-button') {
                    
                } else {
                    
                    $('#hospital-category').css('visibility', 'hidden');
                    hideSpecialCategory();
                    hideGeneralCategory();
                    specialHospitalState = false;
                    generalHospitalState = false;
                    state = false;
                }
            });
            
        });
        
        function showGeneralCategory() {
            $('#general-category').css('visibility', 'visible');
        }
        function hideGeneralCategory() {
            $('#general-category').css('visibility', 'hidden');
        }
        
        function showSpecialCategory() {
            $('#special-category').css('visibility', 'visible');
        }
        function hideSpecialCategory() {
            $('#special-category').css('visibility', 'hidden');
        }
        
        function fileSubmit(){ // 멀티파트 파일 업로더
        	
        	var comment = $('#comment').val();
        	var formData = new FormData($('#commentForm')[0]);
        	
        	for (var index = 0; index < Object.keys(files).length; index++){
        		//formData 공간에 files라는 이름으로 파일을 추가한다.
                //동일명으로 계속 추가할 수 있다.'
                formData.append('files',files[index]);
        	}
        	
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
       					
       				},
       				error : function(error) {
       					alert("파일업로드 실패");
       					console.log(error);
       					console.log(error.status);
       				}
       	        });
        	}
        }
        
        
        $('#comment').on('keyup', function(){ // 댓글에 내용이 있는지 (확인 CSS 이벤트)
        	
        	var comment = $('#comment').val();
        	var comment_file = $('#comment_file').val();
        	
        	if(comment != ""){
        		$('#comment_submit').removeAttr('disabled');
            	$('#comment_submit').removeClass().addClass('btn btn-primary');
        	} else {
        		$('#comment_submit').prop('disabled', true);
            	$('#comment_submit').removeClass().addClass('btn btn-light');
        	}
        	
        	
        	
        });
        
        
		for (var i = 1; i <= 5; i++){
			$('#star' + i).hover(function(){ // 별 마우스호버 이벤트
	        	$(this).removeClass().addClass('fas fa-star');
	        }, function(){
	        		$(this).removeClass().addClass('far fa-star');
	        	});
		}
		
		$('#star2').hover(function(){
			$('#star1').removeClass().addClass('fas fa-star');
		}, function(){
			$('#star1').removeClass().addClass('far fa-star');
		});
		
		$('#star3').hover(function(){
			$('#star1').removeClass().addClass('fas fa-star');
			$('#star2').removeClass().addClass('fas fa-star');
		}, function(){
			$('#star1').removeClass().addClass('far fa-star');
			$('#star2').removeClass().addClass('far fa-star');
		});
		
		$('#star4').hover(function(){
			$('#star1').removeClass().addClass('fas fa-star');
			$('#star2').removeClass().addClass('fas fa-star');
			$('#star3').removeClass().addClass('fas fa-star');
		}, function(){
			$('#star1').removeClass().addClass('far fa-star');
			$('#star2').removeClass().addClass('far fa-star');
			$('#star3').removeClass().addClass('far fa-star');
		});
		
		$('#star5').hover(function(){
			$('#star1').removeClass().addClass('fas fa-star');
			$('#star2').removeClass().addClass('fas fa-star');
			$('#star3').removeClass().addClass('fas fa-star');
			$('#star4').removeClass().addClass('fas fa-star');
		}, function(){
			$('#star1').removeClass().addClass('far fa-star');
			$('#star2').removeClass().addClass('far fa-star');
			$('#star3').removeClass().addClass('far fa-star');
			$('#star4').removeClass().addClass('far fa-star');
		})
		
    </script>
    
<script>
	var files = {};
	var previewIndex = 0;
	
	function addPreview(input) {
		
		if (input[0].files) {
	        //파일 선택이 여러개였을 시의 대응
	        for (var fileIndex = 0; fileIndex < input[0].files.length; fileIndex++) {
	            var file = input[0].files[fileIndex];
	            var reader = new FileReader();
	            
	            reader.onload = function(img) {
	                var imgNum = previewIndex++;
	                $("#comment_image")
	                        .append(
	                                "<div class=\"preview-box mr-2\" style=\"width:20%;\" value=\"" + imgNum +"\">"
	                                        + "<img class=\"thumbnail w-100\" style=\"height:159.13px;\" src=\"" + img.target.result + "\"\/>"
	                                        + "<a value=\"" + imgNum + "\" onclick=\"deletePreview(this)\">"
	                                        + "삭제" + "</a>" + "</div>");
	                files[imgNum] = file;
	            };
	            reader.readAsDataURL(file);
	        }
	    } else
	        alert('invalid file input'); // 첨부클릭 후 취소시의 대응책은 세우지 않았다.
	}
	
	$('#comment_file').change(function() {
		addPreview($(this)); //preview form 추가하기
	});
	
	function deletePreview(obj) {	// 미리보기 사진 삭제
	var imgNum = obj.attributes['value'].value;
	delete files[imgNum];
	$("#comment_image .preview-box[value=" + imgNum + "]").remove();
	resizeHeight();
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
</style>

</body>
</html>