<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<jsp:include page="/WEB-INF/views/commons/header.jsp" />
	<title>검색결과 - ALL Review</title>
	
	<!-- 컨텐츠 영역 -->
	<div style="margin: 0 auto; width: 100%; max-width: 800px;">

		<!-- 검색한 내용의 제목 -->
		<div class="col-12 p-4">
			<p class="board_search_title">석촌호수 벚꽃축제 맞집 베스트 40곳</p>
			<p class="board_search_contents">“벚꽃도 보고 먹으니까 더 꿀맛!”</p>
		</div>

		<!-- 지도 -->
		<div class="col-12 board_list_map">
			<img src="/img/지도.png" style="width:100%; height:100%;">
		</div>

		<hr class="my-5" style="border-bottom: rgb(217, 217, 217) solid 1px;" />
		
		<!-- 게시글의 사진 및 내용 -->
		<div class="d-flex flex-wrap" style="margin: 3% 0 3% 0;" >
			<div class="col-md-6 col-12">
				<!-- 마우스 호버시 줌 이벤트 -->
				<div class="view overlay zoom">

					<!-- 사진 캐러셀 -->
					<a href="#">
						<div id="carouselExampleControls1" class="carousel slide carousel-fade" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="/img/일식.jpg" style="width:100%; height: 100%;">
								</div>
								<div class="carousel-item">
									<img src="/img/양식.jpg" style="width:100%; height: 100%;">
								</div>
								<div class="carousel-item">
									<img src="/img/삼겹살.jpg" style="width:100%; height: 100%;">
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleControls1" role="button" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="carousel-control-next" href="#carouselExampleControls1" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</a>
				</div>
			</div>

			<div class="col-md-6 col-12">
				<div>
					<a href="/review/post" class="text-dark"><h5 class="board_list_title mb-1">강남 일식집</h5></a>
					<span style="float:right; font-size:2rem;">
						<a style="color:rgb(0, 102, 255)"><i class="far fa-star"></i></a>
					</span>

				</div>

				<div class="mb-1">
					<span><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star-half-alt"></i><i style="color: rgb(255, 153, 0);" class="far fa-star"></i></span> <span style="font-weight:bolder">300</span><span style="font-size:90%;"> reviews</span>
				</div>
				

				<div style="font-size:15px;">
					<div class="mb-2" style="font-weight:bolder">
						<i class="fas fa-heart"></i>
						<span>프랑스 음식</span>
					</div>
					<div class="mb-2" style="font-weight:bolder">
						<i class="fas fa-phone"></i>
						<span>02-1234-4567</span> 
					</div>
					<div class="mb-2" style="font-weight:bolder">
						<i class="fas fa-location-arrow"></i>
						<span>서울 강남구 섬성로85길 26</span>
					</div>
					<div class="mb-2" style="font-weight:bolder;">
						<i class="fas fa-clipboard-list"></i>
						<contents>
							히라메키는 일식 요리의 정수를 보여주는 고급 카이세키 코스요리와
							다양한 사케를 함께 즐기실 수 있는 고품격 일본 요리주점입니다.
							앞으로 힘들게 수산시장을 갈필요가 없다구요??? 이렇게 고급스러운데 진짜 안비싸다구요??
							압구정동 겔러리아 백화점 맞은편쪽에 위치한 회테이크아웃 전문점!!피쉬스토리!!  
							수산시장보다 훨씬 저렴한 가격!!
							지금까지 회에 대한 모든 불신!! 가격거품을 완전 제거하였습니다!!!
						</contents>
						

					</div>
				</div>
			</div>
		</div>

		<!-- 게시글 밑에 라인 -->
		<hr style="border-bottom: rgb(217, 217, 217) solid 1px;" />

		<!-- 게시글의 사진 및 내용 -->
		<div class="d-flex flex-wrap" style="margin: 3% 0 3% 0;" >
			<div class="col-md-6 col-12">
				<!-- 마우스 호버시 줌 이벤트 -->
				<div class="view overlay zoom">

					<!-- 사진 캐러셀 -->
					<a href="#">
						<div id="carouselExampleControls1" class="carousel slide carousel-fade" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="/img/일식.jpg" style="width:100%; height: 100%;">
								</div>
								<div class="carousel-item">
									<img src="/img/양식.jpg" style="width:100%; height: 100%;">
								</div>
								<div class="carousel-item">
									<img src="/img/삼겹살.jpg" style="width:100%; height: 100%;">
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleControls1" role="button" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="carousel-control-next" href="#carouselExampleControls1" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</a>
				</div>
			</div>

			<div class="col-md-6 col-12">
				<div>
					<a href="#" class="text-dark"><h5 class="board_list_title mb-1">강남 일식집</h5></a>
					<span style="float:right; font-size:2rem;">
						<a style="color:rgb(0, 102, 255)"><i class="far fa-star"></i></a>
					</span>

				</div>

				<div class="mb-1">
					<span><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star-half-alt"></i><i style="color: rgb(255, 153, 0);" class="far fa-star"></i></span> <span style="font-weight:bolder">300</span><span style="font-size:90%;"> reviews</span>
				</div>
				

				<div style="font-size:15px;">
					<div class="mb-2" style="font-weight:bolder">
						<i class="fas fa-heart"></i>
						<span>프랑스 음식</span>
					</div>
					<div class="mb-2" style="font-weight:bolder">
						<i class="fas fa-phone"></i>
						<span>02-1234-4567</span> 
					</div>
					<div class="mb-2" style="font-weight:bolder">
						<i class="fas fa-location-arrow"></i>
						<span>서울 강남구 섬성로85길 26</span>
					</div>
					<div class="mb-2" style="font-weight:bolder;">
						<i class="fas fa-clipboard-list"></i>
						<contents>
							히라메키는 일식 요리의 정수를 보여주는 고급 카이세키 코스요리와
							다양한 사케를 함께 즐기실 수 있는 고품격 일본 요리주점입니다.
							앞으로 힘들게 수산시장을 갈필요가 없다구요??? 이렇게 고급스러운데 진짜 안비싸다구요??
							압구정동 겔러리아 백화점 맞은편쪽에 위치한 회테이크아웃 전문점!!피쉬스토리!!  
							수산시장보다 훨씬 저렴한 가격!!
							지금까지 회에 대한 모든 불신!! 가격거품을 완전 제거하였습니다!!!
						</contents>
						

					</div>
				</div>
			</div>
		</div>

		<!-- 게시글 밑에 라인 -->
		<hr style="border-bottom: rgb(217, 217, 217) solid 1px;" />

		<!-- 게시글의 사진 및 내용 -->
		<div class="d-flex flex-wrap" style="margin: 3% 0 3% 0;" >
			<div class="col-md-6 col-12">
				<!-- 마우스 호버시 줌 이벤트 -->
				<div class="view overlay zoom">

					<!-- 사진 캐러셀 -->
					<a href="#">
						<div id="carouselExampleControls1" class="carousel slide carousel-fade" data-ride="carousel">
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img src="/img/일식.jpg" style="width:100%; height: 100%;">
								</div>
								<div class="carousel-item">
									<img src="/img/양식.jpg" style="width:100%; height: 100%;">
								</div>
								<div class="carousel-item">
									<img src="/img/삼겹살.jpg" style="width:100%; height: 100%;">
								</div>
							</div>
							<a class="carousel-control-prev" href="#carouselExampleControls1" role="button" data-slide="prev">
								<span class="carousel-control-prev-icon" aria-hidden="true"></span>
								<span class="sr-only">Previous</span>
							</a>
							<a class="carousel-control-next" href="#carouselExampleControls1" role="button" data-slide="next">
								<span class="carousel-control-next-icon" aria-hidden="true"></span>
								<span class="sr-only">Next</span>
							</a>
						</div>
					</a>
				</div>
			</div>

			<div class="col-md-6 col-12">
				<div>
					<a href="#" class="text-dark"><h5 class="board_list_title mb-1">강남 일식집</h5></a>
					<span style="float:right; font-size:2rem;">
						<a style="color:rgb(0, 102, 255)"><i class="far fa-star"></i></a>
					</span>

				</div>

				<div class="mb-1">
					<span><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star-half-alt"></i><i style="color: rgb(255, 153, 0);" class="far fa-star"></i></span> <span style="font-weight:bolder">300</span><span style="font-size:90%;"> reviews</span>
				</div>
				

				<div style="font-size:15px;">
					<div class="mb-2" style="font-weight:bolder">
						<i class="fas fa-heart"></i>
						<span>프랑스 음식</span>
					</div>
					<div class="mb-2" style="font-weight:bolder">
						<i class="fas fa-phone"></i>
						<span>02-1234-4567</span> 
					</div>
					<div class="mb-2" style="font-weight:bolder">
						<i class="fas fa-location-arrow"></i>
						<span>서울 강남구 섬성로85길 26</span>
					</div>
					<div class="mb-2" style="font-weight:bolder;">
						<i class="fas fa-clipboard-list"></i>
						<contents>
							히라메키는 일식 요리의 정수를 보여주는 고급 카이세키 코스요리와
							다양한 사케를 함께 즐기실 수 있는 고품격 일본 요리주점입니다.
							앞으로 힘들게 수산시장을 갈필요가 없다구요??? 이렇게 고급스러운데 진짜 안비싸다구요??
							압구정동 겔러리아 백화점 맞은편쪽에 위치한 회테이크아웃 전문점!!피쉬스토리!!  
							수산시장보다 훨씬 저렴한 가격!!
							지금까지 회에 대한 모든 불신!! 가격거품을 완전 제거하였습니다!!!
						</contents>
						

					</div>
				</div>
			</div>
		</div>

		<!-- 게시글 밑에 라인 -->
		<hr style="border-bottom: rgb(217, 217, 217) solid 1px;" />
		

		<div id="review_more" class="d-flex col-12 justify-content-center align-items-center bg-light py-3 my-5">
			<a class="text-center" href="#" style="text-decoration: none">
				<img src="/img/more.png" style="width: 20%; border-radius: 100%; border: 1px solid gray">
				<span class="ml-2 text-dark">댓글 더보기</span>
			</a>
		</div>
		<a href="#" id="scroll_top" class="text-dark">
			<i class="fas fa-caret-square-up scroll_top"></i>
		</a>
	</div>
	
	<jsp:include page="/WEB-INF/views/commons/header.jsp" />

	<script type="text/javascript">
		$(document).ready(function(){
			// 내용 더 보기
			$('contents').each(function(){
				var contents = $(this).html();
				
				if(contents.length >= 135){
					$(this).html(contents.substr(0, 135) + '...' + '<a style="color:rgb(0, 102, 255);">더 보기</a>');
					$(this).click(function(){
						$(this).html(contents.substr(0, 135) + contents.substr(135, contents.length));
					});
				}
			});

			// 스크롤 이벤트
			$(window).scroll(function(event){
				if(window.scrollY >= 140){
					$('.scroll_top').css('visibility', 'visible');
				} else {
					$('.scroll_top').css('visibility', 'hidden');
				}
			});

			$('#scroll_top').on('click', () => {
				$('html').animate({scrollTop : 0})
			});
		});
	</script>