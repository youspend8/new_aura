<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<jsp:include page="/WEB-INF/views/commons/header.jsp"></jsp:include>
	<title>All Review</title>
	
  <div class="container first_container">

    <section class="row m-0 w-100 h-100">
      <!-- 첫번째 캐러 -->
      <div class="col-lg-8 col-md-12 p-0 h-100">

        <div style="height: 1px; position: absolute; z-index: 2;">
          <!--Navbar -->
          <nav class="mb-1 m-2  navbar-expand navbar-dark">
            <div class="collapse navbar-collapse" id="navbarSupportedContent-555">
              <ul class="navbar-nav mr-auto">

                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">병원
                  </a>
                  <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">맛집
                  </a>
                  <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">Another action</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </li>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" id="navbarDropdownMenuLink-555" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">Dropdown
                  </a>
                  <div class="dropdown-menu dropdown-secondary" aria-labelledby="navbarDropdownMenuLink-555">
                    <a class="dropdown-item" href="#">Action</a>
                    <a class="dropdown-item" href="#">sdfsdfsdfsdfsdn</a>
                    <a class="dropdown-item" href="#">Something else here</a>
                  </div>
                </li>
              </ul>

            </div>
          </nav>
          <!--/.Navbar -->
        </div>


        <!--Carousel Wrapper-->
        <div id="carousel-example-2" class="carousel slide carousel-fade d-inline-block h-100" data-ride="carousel"
          data-interval="2000">
          <!--Indicators-->
          <ol class="carousel-indicators">
            <li data-target="#carousel-example-2" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-example-2" data-slide-to="1"></li>
            <li data-target="#carousel-example-2" data-slide-to="2"></li>
          </ol>
          <!--/.Indicators-->
          <!--Slides-->
          <div class="carousel-inner h-100" role="listbox">
            <div class="carousel-item active">
              <div class="view">
                <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(68).jpg"
                  alt="First slide" >
                <div class="mask rgba-black-light"></div>
              </div>
            </div>
            <div class="carousel-item">
              <!--Mask color-->
              <div class="view">
                <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(6).jpg"
                  alt="Second slide">
                <div class="mask rgba-black-strong"></div>
              </div>
            </div>
            <div class="carousel-item">
              <!--Mask color-->
              <div class="view">
                <img class="d-block w-100" src="https://mdbootstrap.com/img/Photos/Slides/img%20(9).jpg"
                  alt="Third slide">
                <div class="mask rgba-black-slight"></div>
              </div>
            </div>
          </div>
          <!--/.Slides-->
          <!--Controls-->
          <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#carousel-example-2" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
          <!--/.Controls-->
        </div>
      </div>


      <!-- 랭킹시작 -->
      <div class="col-lg-4 col-md-12 p-0 d-flex flex-wrap">

        <div class="col-lg-12 col-md-6 d-flex flex-wrap bg-dark rank_section"
          style="padding: 0; overflow: hidden;">
          <!--랭킹  -->

          <ul class="col-lg-12 d-flex text-center h-lg-50 h-md-100 m-0 p-0">
            <li>
              <a href="#" class="text-dark" style="font-weight: bold;">별점 순위</a>
              <ul class="m-0 p-0 text-left">
                <li class="col-12">
                  <a href="#" class="text-dark" style="font-size: 10px;">
                    <span style="font-size: 10px; margin-right: 3px; font-weight: 700">1.</span>
                    별점 순위
                  </a>
                </li>
                <li class="col-12">
                  <a href="#" class="text-dark" style="font-size: 10px;">
                    <span style="font-size: 10px; margin-right: 3px; font-weight: 700">2.</span>
                    전자기기 순위
                  </a>
                </li>
                <li class="col-12">
                  <a href="#" class="text-dark" style="font-size: 10px;">
                    <span style="font-size: 10px; margin-right: 3px; font-weight: 700">3.</span>
                    별점 순위
                  </a>
                </li>
                <li class="col-12">
                  <a href="#" class="text-dark" style="font-size: 10px;">
                    <span style="font-size: 10px; margin-right: 3px; font-weight: 700">4.</span>
                    맛집 순위
                  </a>
                </li>
                <li class="col-12">
                  <a href="#" class="text-dark" style="font-size: 10px;">
                    <span style="font-size: 10px; margin-right: 3px; font-weight: 700">5.</span>
                    전자기기 순위
                  </a>
                </li>
                <li class="col-12">
                  <a href="#" class="text-dark" style="font-size: 10px;">
                    <span style="font-size: 10px; margin-right: 3px; font-weight: 700">6.</span>
                    전자기기 순위
                  </a>
                </li>
                <li class="col-12">
                  <a href="#" class="text-dark" style="font-size: 10px;">
                    <span style="font-size: 10px; margin-right: 3px; font-weight: 700">7.</span>
                    맛집 순위
                  </a>
                </li>
                <li class="col-12">
                  <a href="#" class="text-dark" style="font-size: 10px;">
                    <span style="font-size: 10px; margin-right: 3px; font-weight: 700">8.</span>
                    맛집 순위
                  </a>
                </li>
                <li class="col-12">
                  <a href="#" class="text-dark" style="font-size: 10px;">
                    <span style="font-size: 10px; margin-right: 3px; font-weight: 700">9.</span>
                    맛집 순위
                  </a>
                </li>


              </ul>
            </li>
            <li>
              <a href="#" class="text-dark" style="font-weight: bold">맛집 순위</a>

              <ul class="m-0 p-0">
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">별점 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">맛집 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">전자기기 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">별점 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">맛집 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">전자기기 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">전자기기 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">맛집 순위</a></li>

              </ul>
            </li>
            <li>
              <a href="#" class="text-dark" style="font-weight: bold">전자기기 순위</a>

              <ul class="m-0 p-0">
                <li class="col-12"><a href="#" class="text-dark " style="font-size: 10px;">별점 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">맛집 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">전자기기 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">별점 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">맛집 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">전자기기 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">전자기기 순위</a></li>
                <li class="col-12"><a href="#" class="text-dark" style="font-size: 10px;">맛집 순위</a></li>

              </ul>
            </li>
          </ul>
        </div>
        <!-- 랭킹시작 끝-->

        <!-- 2nd 광고판~ -->
        <div class="col-lg-12 col-md-6 m-0 p-0 evnetPan" style="background: burlywood;">
          <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="false">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner evnetPan">
              <div class="carousel-item active">
                <a href=".."><img src="img/event/이벤트1.jpg" class="d-block w-100" alt="..."></a>
              </div>
              <div class="carousel-item evnetPan">
                <img src="img/event/이벤트2.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item evnetPan">
                <img src="img/event/이벤트3.jpg" class="d-block w-100" alt="...">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        </div>
        <!-- 2nd 광고판~end -->
      </div>

    </section>
    <!-- //광고판있는 줄 끝 -->

  </div>

  <hr />




  <!-- 인기리뷰시작 -->

  <div class="container ">
    <div class="mt-5 " style="font-weight: bold; padding-left: 7%; ">인기리뷰</div>
    <div id="carouselExampleControls" class="carousel slide" data-ride="carousel" data-interval="false">

      <div class="carousel-inner">

        <div class="carousel-item active">
          <div class="d-flex flex-wrap w-100 justify-content-center tl">
			<c:forEach items="${reviewVo}" var="review">
            <div class="win">

              <div class="card-jisung">
                <a href="/review/post?num=${review.num}&type=${review.type}">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">${review.title}</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    ${review.contents}
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="${review.files[0]}" alt="" />
                </div>

              </div>
            </div>
			</c:forEach>
			
            <div class="win">

              <div class="card-jisung">
                <a href="/review/post">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/230" alt="" />
                </div>

              </div>
            </div>
            <div class="win">

              <div class="card-jisung">
                <a href="/review/post">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/240" alt="" />
                </div>

              </div>
            </div>

            <div class="win d-none d-lg-inline-block ">


              <div class="card-jisung" id="bb">
                <a href="/review/post">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 100%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>

                <div class="cardcontent">
                  <div href=""
                    style="display: inline-block; text-decoration: none; color: white; height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 90%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>

                <div class="cardpic">
                  <img class="" src="https://picsum.photos/250" alt="" />
                </div>

              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <div class="d-flex flex-wrap w-100 justify-content-center tl">

            <div class="win">

              <div class="card-jisung">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/211" alt="" />
                </div>

              </div>
            </div>

            <div class="win">

              <div class="card-jisung">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/212" alt="" />
                </div>

              </div>
            </div>
            <div class="win">

              <div class="card-jisung">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/213" alt="" />
                </div>

              </div>
            </div>
            <div class="win">

              <div class="card-jisung">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/214" alt="" />
                </div>

              </div>
            </div>

            <div class="win d-none d-lg-inline-block ">


              <div class="card-jisung" id="bb">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 100%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>

                <div class="cardcontent">
                  <div href=""
                    style="display: inline-block; text-decoration: none; color: white; height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 90%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>

                <div class="cardpic">
                  <img class="" src="https://picsum.photos/245" alt="" />
                </div>

              </div>
            </div>
          </div>
        </div>
        <div class="carousel-item">
          <div class="d-flex flex-wrap w-100 justify-content-center tl">

            <div class="win">

              <div class="card-jisung">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/210" alt="" />
                </div>

              </div>
            </div>

            <div class="win">

              <div class="card-jisung">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/210" alt="" />
                </div>

              </div>
            </div>
            <div class="win">

              <div class="card-jisung">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/210" alt="" />
                </div>

              </div>
            </div>
            <div class="win">

              <div class="card-jisung">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 70%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>


                <div class="cardcontent">
                  <div style="height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>


                <div class="cardpic">
                  <img class="" src="https://picsum.photos/210" alt="" />
                </div>

              </div>
            </div>

            <div class="win d-none d-lg-inline-block ">


              <div class="card-jisung" id="bb">
                <a href="">
                  <div class="cardtitle">
                    <span class="text-primary" style="font-size: 100%;">테스트</span>
                    <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red;"></i>
                    <i class="fas fa-star" style="color: red; "></i>
                    <i class="fas fa-star-half" style="color: red;"></i>
                  </div>
                </a>

                <div class="cardcontent">
                  <div href=""
                    style="display: inline-block; text-decoration: none; color: white; height: 90%; overflow: hidden;">
                    sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                    quaerat
                    sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                    error.onsectetur
                    adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                    commodi
                    eius
                    esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                    ipsum
                    eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                    Quod,
                    error.
                  </div>
                  <a href="" style="display: inline-block; height: 90%; overflow: hidden; float: right;">
                    read more...
                  </a>
                </div>

                <div class="cardpic">
                  <img class="" src="https://picsum.photos/240" alt="" />
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
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

  <hr />
  <!-- 인기리뷰끝 -->
  
  <!-- 최신리뷰시작 -->
  <div class="container ">
      <div class="mt-5 " style="font-weight: bold; padding-left: 7%; ">최신리뷰</div>
      <div id="carouselExampleControls2" class="carousel slide" data-ride="carousel" data-interval="false">
  
        <div class="carousel-inner">
  
          <div class="carousel-item active">
            <div class="d-flex flex-wrap w-100 justify-content-center tl">
  
              <div class="win">
  
                <div class="card-jisung">
                  <a href="/review/post">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/110" alt="" />
                  </div>
  
                </div>
              </div>
  
              <div class="win">
  
                <div class="card-jisung">
                  <a href="/review/post">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/228" alt="" />
                  </div>
  
                </div>
              </div>
              <div class="win">
  
                <div class="card-jisung">
                  <a href="/review/post">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/330" alt="" />
                  </div>
  
                </div>
              </div>
              <div class="win">
  
                <div class="card-jisung">
                  <a href="/review/post">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/219" alt="" />
                  </div>
  
                </div>
              </div>
  
              <div class="win d-none d-lg-inline-block ">
  
  
                <div class="card-jisung" id="bb">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 100%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
                  <div class="cardcontent">
                    <div href=""
                      style="display: inline-block; text-decoration: none; color: white; height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 90%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/251" alt="" />
                  </div>
  
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="d-flex flex-wrap w-100 justify-content-center tl">
  
              <div class="win">
  
                <div class="card-jisung">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/291" alt="" />
                  </div>
  
                </div>
              </div>
  
              <div class="win">
  
                <div class="card-jisung">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/212" alt="" />
                  </div>
  
                </div>
              </div>
              <div class="win">
  
                <div class="card-jisung">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/213" alt="" />
                  </div>
  
                </div>
              </div>
              <div class="win">
  
                <div class="card-jisung">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/214" alt="" />
                  </div>
  
                </div>
              </div>
  
              <div class="win d-none d-lg-inline-block ">
  
  
                <div class="card-jisung" id="bb">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 100%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
                  <div class="cardcontent">
                    <div href=""
                      style="display: inline-block; text-decoration: none; color: white; height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 90%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/245" alt="" />
                  </div>
  
                </div>
              </div>
            </div>
          </div>
          <div class="carousel-item">
            <div class="d-flex flex-wrap w-100 justify-content-center tl">
  
              <div class="win">
  
                <div class="card-jisung">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/210" alt="" />
                  </div>
  
                </div>
              </div>
  
              <div class="win">
  
                <div class="card-jisung">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/210" alt="" />
                  </div>
  
                </div>
              </div>
              <div class="win">
  
                <div class="card-jisung">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/210" alt="" />
                  </div>
  
                </div>
              </div>
              <div class="win">
  
                <div class="card-jisung">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 70%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
  
                  <div class="cardcontent">
                    <div style="height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 10%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/210" alt="" />
                  </div>
  
                </div>
              </div>
  
              <div class="win d-none d-lg-inline-block ">
  
  
                <div class="card-jisung" id="bb">
                  <a href="">
                    <div class="cardtitle">
                      <span class="text-primary" style="font-size: 100%;">테스트</span>
                      <span class="text-dark" style="font-size: 70%;">cafe & bag </span><br>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red;"></i>
                      <i class="fas fa-star" style="color: red; "></i>
                      <i class="fas fa-star-half" style="color: red;"></i>
                    </div>
                  </a>
  
                  <div class="cardcontent">
                    <div href=""
                      style="display: inline-block; text-decoration: none; color: white; height: 90%; overflow: hidden;">
                      sdsd Lorem ipsum dolor sit amet consectetur adipisicing elit. Neque asperiores eos, ipsum eaque ut
                      quaerat
                      sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex. Quod,
                      error.onsectetur
                      adipisicing elit. Neque asperiores eos, ipsum eaque ut quaerat sunt nobis repudiandae officiis
                      commodi
                      eius
                      esse enim soluta quasi unde iusto ex. Quod, error.onsectetur adipisicing elit. Neque asperiores eos,
                      ipsum
                      eaque ut quaerat sunt nobis repudiandae officiis commodi eius esse enim soluta quasi unde iusto ex.
                      Quod,
                      error.
                    </div>
                    <a href="" style="display: inline-block; height: 90%; overflow: hidden; float: right;">
                      read more...
                    </a>
                  </div>
  
                  <div class="cardpic">
                    <img class="" src="https://picsum.photos/240" alt="" />
                  </div>
  
                </div>
              </div>
            </div>
          </div>
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

    <div class="row justify-content-lg-between justify-content-center">

      <div class="col-11  col-md-11 col-lg-4">
        <div class="pb-4" style="font-weight: 900; padding-left: 1%">오늘의 All Review 추천</div>
        <!-- Classic tabs -->
        <div class="classic-tabs border-bottom">
          <ul id="today_review" class="nav navbar bg-dark p-0 justify-content-start" id="myClassicTab" role="tablist">
            <li class="nav-item col-4 col-lg-auto text-center p-0">
              <a class="nav-link today_item active waves-light show text-white" id="profile-tab-classic"
                data-toggle="tab" href="#profile-classic" role="tab" aria-controls="profile-classic"
                aria-selected="true">병원</a>
            </li>
            <li class="nav-item col-4 col-lg-auto text-center p-0">
              <a class="nav-link today_item waves-light text-white" id="follow-tab-classic" data-toggle="tab"
                href="#follow-classic" role="tab" aria-controls="follow-classic" aria-selected="false">맛집</a>
            </li>
            <li class="nav-item col-4 col-lg-auto text-center p-0">
              <a class="nav-link today_item waves-light text-white" id="contact-tab-classic" data-toggle="tab"
                href="#contact-classic" role="tab" aria-controls="contact-classic" aria-selected="false">전자기기</a>
            </li>
          </ul>
          <div class="tab-content rounded-bottom" id="myClassicTabContent">
            <div class="tab-pane fade active show" id="profile-classic" role="tabpanel"
              aria-labelledby="profile-tab-classic">

              <ul class="row flex-wrap pl-2 pt-4">
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/추천/병원/아산병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 80%;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/추천/병원/차병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/추천/병원/삼성병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/추천/병원/건대병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>
                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex" style="height: 120px;">
                    <img class="mt-1" src="img/추천/병원/가천길병원.jpg" alt=""
                      style="border-radius: 7px; width: 35%; height: 100px;">
                    <div class="d-flex flex-wrap ">
                      <div class="col-12 mt-4 pt-3 pr-0 pl-1" style="font-size: 70%;">빵순이 빵돌이들이 환장하는 집</div>
                      <div class="col-12 pb-5 pl-1" style="font-size: 80%; font-weight: bold">아리가또빵집</div>
                    </div>

                  </li>
                </a>

              </ul>

            </div>

            <div class="tab-pane fade" id="follow-classic" role="tabpanel" aria-labelledby="follow-tab-classic">
              <ul class="row flex-wrap pl-2 pt-4">

                <a href="#" style="color: black;" class="col-md-6 col-lg-12">
                  <li class="col-11 d-flex border-bottom mb-2" style="height: 120px;">
                    <img class="mt-1" src="img/추천/전자기기/노트북.jpg" alt=""
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
            <div class="tab-pane fade" id="contact-classic" role="tabpanel" aria-labelledby="contact-tab-classic">
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

      <div
        class="thema-flex col-md-12 col-12 col-lg-8 d-flex ml-0 mb-5 p-lg-0 flex-wrap justify-content-lg-end justify-content-center">
        <div class="w-100 pl-4 pt-5 pt-lg-0 pl-lg-5 ml-lg-3 ml-4" style="font-weight: 900; ">테마별 리뷰</div>

        <div class="first_recommand col-5 p-0" style="background-image: url('img/테마별사진/img.jpg');">
          <a href="#">
            <div class="recommand_box justify-content-center align-items-center row m-0 h-100 w-100">
              <div class="text">데이트추천 100</div>
            </div>
          </a>
        </div>


        <div class="first_recommand col-5 p-0" style="background-image: url('img/테마별사진/img.jpg'); ">
          <a href="#">
            <div class="recommand_box justify-content-center align-items-center row m-0 h-100 w-100">
              <div>멸치국수추천 베트스 100!!!!</div>
            </div>
          </a>
        </div>

        <div class="first_recommand col-5 p-0 " style="background-image: url('img/테마별사진/새우회.png');">
          <a href="#">
            <div class="recommand_box justify-content-center align-items-center row m-0 h-100 w-100">
              <div>얄루얄루!!!추천 100</div>
            </div>
          </a>
        </div>

        <div class="first_recommand col-5 p-0 " style="background-image: url('img/테마별사진/커리.png');">
          <a href="#">
            <div class="recommand_box justify-content-center align-items-center row m-0 h-100 w-100">
              <div>데이트추천 100 꺅@@@</div>
            </div>
          </a>
        </div>

      </div>
    </div>
  </div>
  
  <jsp:include page="/WEB-INF/views/commons/footer.jsp"></jsp:include>