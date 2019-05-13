<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<jsp:include page="/WEB-INF/views/commons/header.jsp"></jsp:include>
	<title>All Review</title>
	<style>
		.fade {
		  	transition: opacity 0.4s linear;
		}
	</style>
	<script>
		$(function() {
			var index = 1;
			var images = [
				'/img/main/full_background.jpg',
				'/img/main/full_background2.png',
				'/img/main/full_background3.png',
				'/img/main/full_background4.png'
			];
			setInterval(() => {
				$('#background').attr('class', 'fade hide')
				setTimeout(() => {
					$('#background').attr('class', 'fade show')
					$('#background').css({
						'background-image': 'url(' + images[index] + ')'
					})
					if (index++ == 3) {
						index = 0;
					}
				}, 500);
			}, 4000);
		});
	</script>
	<div id="header">
		<a href="/main" class="brand_logo">
			<img src="/img/logo/blacklogo.png" width="130px" class="pt-1">
		</a>
		<div id="search_form" class="search_form col-md-6 col-12 p-0">
			<form class="form-check-inline w-100" id="origin_search_form" action="/review/search">
				<select class="form-control search_select" name="type">
					<option value="1">음식점</option>
					<option value="2">병원</option>
					<option value="3">전자제품</option>
				</select>
				
				<input class="form-control search_input" type="text" name="keyword" placeholder="Search" autocomplete="off">
			
				<button type="submit" class="fas text-white ml-2 fa-search" style="font-size: 20px; background-color: transparent; border: 0px transparent solid;"></button>
			</form>
		</div>
		<div style="height: 100px;"></div>
	</div>
	
	<script>
		document.onscroll = function() {
			var isSearchFormInNav = false;
			var nav_search_form = $('#navigation_search_form');
			var origin_search_form = $('#origin_search_form');
			var search_form = $('#search_form');
			
			console.log(window.scrollY)
			if (window.scrollY > 200) {
				isSearchFormInNav = true;
				nav_search_form.append(origin_search_form);
				$('#navigation').css({
					'position': 'sticky',
					'top': 0
				})
			} else if (window.scrollY <= 200) {
				isSearchFormInNav = false;
				search_form.append(origin_search_form);
				$('#navigation').css({
					'position': 'sticky',
					'top': 0
				})
			}
		}
	</script>
  <!-- 인기리뷰시작 -->
  
  	<div id="background"></div>
<div style="z-index: 1; background-color: white; position: relative;">
  <div class="container">
    <h5 class="pt-4 m-0 text-center text-danger" style="font-weight: bold;">Popular Review</h5>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="false">

      <div class="carousel-inner">

	<c:forEach var="i" begin="0" end="${reviewVo.size() / 6}">
		<div class="carousel-item ${i == 0 ? 'active' : ''}">
			<div class="d-flex flex-wrap w-100 justify-content-center tl">
				<c:forEach var="j" begin="${i * 6}" end="${i * 6 + 5}">
					<div class="win">
						<div class="card-jisung">
							<a href="/review/post?num=${reviewVo[j].num}&type=${reviewVo[j].type}">
								<div class="cardtitle">
									<span class="text-primary" style="font-size: 70%;">${reviewVo[j].title}</span>
									<span class="text-dark" style="font-size: 70%;">${reviewVo[j].type}</span><br>
									<i class="fas fa-star" style="color: red;"></i>
									<i class="fas fa-star" style="color: red;"></i>
									<i class="fas fa-star" style="color: red;"></i>
									<i class="fas fa-star" style="color: red; "></i>
									<i class="fas fa-star-half" style="color: red;"></i>
								</div>
							</a>
							
							<div class="cardcontent">
								<div style="height: 90%; overflow: hidden;">
									${reviewVo[j].contents}
								</div>
									<a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
									read more...
								</a>
							</div>
							
							<div class="cardpic bg-white text-center">
								<c:if test="${reviewVo[j].files.size() eq 0 }">
									<img src="/img/NoImg.jpg" style="width: 50%;" />
								</c:if>
								<c:if test="${reviewVo[j].files.size() ne 0 }">
									<img src="${reviewVo[j].files[0]}" />
								</c:if>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</c:forEach>
			
      <a class="carousel-control-prev pop-review-prev-button" href="#carouselExampleControls" role="button"
        data-slide="prev">
        <i class="fas fa-chevron-left" style="color: black"></i>
      </a>
      <a class="carousel-control-next pop-review-next-button" href="#carouselExampleControls" role="button"
        data-slide="next">
        <i class="fas fa-chevron-right " style="color: black"></i>
      </a>
      </div>
    </div>
  </div>

  <hr />
  <!-- 인기리뷰끝 -->
  
  <!-- 최신리뷰시작 -->
  <div class="container ">
    <h5 class="pt-4 m-0 text-center text-danger" style="font-weight: bold;">New Review</h5>
      <div id="carouselExampleControls2" class="carousel slide" data-ride="carousel" data-interval="false">
        <div class="carousel-inner">
			<c:forEach var="i" begin="0" end="${reviewVo.size() / 6}">
				<div class="carousel-item ${i == 0 ? 'active' : ''}">
					<div class="d-flex flex-wrap w-100 justify-content-center tl">
						<c:forEach var="j" begin="${i * 6}" end="${i * 6 + 5}">
							<div class="win">
								<div class="card-jisung">
									<a href="/review/post?num=${reviewVo[j].num}&type=${reviewVo[j].type}">
										<div class="cardtitle">
											<span class="text-primary" style="font-size: 70%;">${reviewVo[j].title}</span>
											<span class="text-dark" style="font-size: 70%;">${reviewVo[j].type}</span><br>
											<i class="fas fa-star" style="color: red;"></i>
											<i class="fas fa-star" style="color: red;"></i>
											<i class="fas fa-star" style="color: red;"></i>
											<i class="fas fa-star" style="color: red; "></i>
											<i class="fas fa-star-half" style="color: red;"></i>
										</div>
									</a>
									
									<div class="cardcontent">
										<div style="height: 90%; overflow: hidden;">
											${reviewVo[j].contents}
										</div>
											<a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
											read more...
										</a>
									</div>
									
									<div class="cardpic bg-white text-center">
										<c:if test="${reviewVo[j].files.size() eq 0 }">
											<img src="/img/NoImg.jpg" style="width: 50%;" />
										</c:if>
										<c:if test="${reviewVo[j].files.size() ne 0 }">
											<img src="${reviewVo[j].files[0]}" />
										</c:if>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</c:forEach>
		</div>
        <a class="carousel-control-prev pop-review-prev-button" href="#carouselExampleControls2" role="button"
          data-slide="prev">
          <i class="fas fa-chevron-left" style="color: black"></i>
        </a>
        <a class="carousel-control-next pop-review-next-button" href="#carouselExampleControls2" role="button"
          data-slide="next">
          <i class="fas fa-chevron-right " style="color: black"></i>
        </a>
      </div>
    </div>
  <hr />

  <br>

  <!-- 최신리뷰끝 -->

  <!-- 추천 밑 테마 -->
  <div class="container">

    <div class="row justify-content-center">

      <div class="col-11 col-md-11 col-lg-4 pl-5">
        <div class="pb-4" style="font-weight: 900; padding-left: 1%">오늘의 All Review 추천</div>
        <!-- Classic tabs -->
        <div class="classic-tabs border-bottom">
          <ul id="today_review" class="nav navbar bg-dark p-0 justify-content-start" id="myClassicTab">
            <li class="nav-item col-4 text-center orange p-0">
              <a class="nav-link today_item active waves-light show text-white" id="profile-tab-classic"
                data-toggle="tab" href="#profile-classic">병원</a>
            </li>
            <li class="nav-item col-4 text-center orange p-0">
              <a class="nav-link today_item waves-light text-white" id="follow-tab-classic" data-toggle="tab"
                href="#follow-classic">맛집</a>
            </li>
            <li class="nav-item col-4 text-center orange p-0">
              <a class="nav-link today_item waves-light text-white" id="contact-tab-classic" data-toggle="tab"
                href="#contact-classic">전자기기</a>
            </li>
          </ul>
          <div class="tab-content rounded-bottom" id="myClassicTabContent">
            <div class="tab-pane active" id="profile-classic">

              <ul class="row flex-wrap pl-2 pt-4">
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="/img/추천/병원/아산병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 80%;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="/img/추천/병원/차병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="/img/추천/병원/삼성병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="/img/추천/병원/건대병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex" style="height: 120px;">
                    <img class="mt-1" src="/img/추천/병원/가천길병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>

              </ul>

            </div>

            <div class="tab-pane fade" id="follow-classic">
              <ul class="row flex-wrap pl-2 pt-4">

                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="/img/추천/전자기기/노트북.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/추천/전자기기/맥북.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/추천/전자기기/아이폰.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/추천/전자기기/애플워치.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex" style="height: 120px;">
                    <img class="mt-1" src="img/추천/전자기기/이어팟.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>

              </ul>
            </div>
            <div class="tab-pane fade" id="contact-classic">
              <ul class="row flex-wrap pl-2 pt-4">

                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/event/이벤트2.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/event/이벤트2.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/event/이벤트2.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/event/이벤트2.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex" style="height: 120px;">
                    <img class="mt-1" src="img/event/이벤트2.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>
                  </li>
                </a>
              </ul>
            </div>

          </div>

        </div>
        <!-- Classic tabs -->

      </div>

      <div class="thema-flex col-md-12 col-12 col-lg-8 d-flex flex-row flex-wrap justify-content-center align-items-start">
        <div class="col-11" style="font-weight: 800;">테마별 리뷰</div>
        
        <div class="first_recommand col-5 p-0" style="background-image: url('/img/테마별사진/img.jpg');">
          <a href="#">
            <div class="recommand_box justify-content-center align-items-center row m-0 h-100 w-100">
              <div class="text">데이트추천 100</div>
            </div>
          </a>
        </div>


        <div class="first_recommand col-5 p-0" style="background-image: url('/img/테마별사진/img.jpg'); ">
          <a href="#">
            <div class="recommand_box justify-content-center align-items-center row m-0 h-100 w-100">
              <div>멸치국수추천 베트스 100!!!!</div>
            </div>
          </a>
        </div>

        <div class="first_recommand col-5 p-0 " style="background-image: url('/img/테마별사진/새우회.png');">
          <a href="#">
            <div class="recommand_box justify-content-center align-items-center row m-0 h-100 w-100">
              <div>얄루얄루!!!추천 100</div>
            </div>
          </a>
        </div>

        <div class="first_recommand col-5 p-0 " style="background-image: url('/img/테마별사진/커리.png');">
          <a href="#">
            <div class="recommand_box justify-content-center align-items-center row m-0 h-100 w-100">
              <div>데이트추천 100 꺅@@@</div>
            </div>
          </a>
        </div>

      </div>
    </div>
  </div>
</div>
  <jsp:include page="/WEB-INF/views/commons/footer.jsp"></jsp:include>