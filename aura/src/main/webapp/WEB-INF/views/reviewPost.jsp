<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<jsp:include page="/WEB-INF/views/commons/header.jsp" />
	<title>석촌호수 - All Review</title>
	
    <!-- 카테고리 선택 -->
    <div class="d-flex container p-0 flex-wrap justify-content-center">
        <div class="btn-group col-4 m-0 px-0">
            <button id="restaurant-button" type="button" class="btn btn-dark btn-lg px-1 dropdown-toggle">
                맛집
            </button>

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
            <button id="hospital-button" type="button" class="btn btn-dark btn-lg px-1 dropdown-toggle">
                병원
            </button>

            <div id="hospital-category" class="hospital-category">
                <button id="general-button" type="button" class="btn btn-dark justify-content-center px-1 d-flex w-100">
                    종합병원
                    <i class="fas fa-caret-right ml-1 align-self-center"></i>
                </button>
                
                <button id="special-button" type="button" class="btn btn-dark justify-content-center px-1 d-flex w-100">
                    전문병원
                    <i class="fas fa-caret-right ml-1 align-self-center"></i>
                </button>
            </div>
            
            <ul class="general-category" id="general-category">
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        정형외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        내과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                    이비인후과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        방사선과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        비뇨기과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        내과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        신경외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        산부인과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        안과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        정형외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        내과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                    이비인후과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        방사선과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        비뇨기과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        내과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        신경외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        산부인과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        안과
                    </button>
                </li>
            </ul>
          
            <ul class="special-category" id="special-category">
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        한의원
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        내과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        신경외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        산부인과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        안과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        정형외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        내과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                    이비인후과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        방사선과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        비뇨기과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        내과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        신경외과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        산부인과
                    </button>
                </li>
                <li>
                    <button type="button" class="btn btn-dark px-0">
                        안과
                    </button>
                </li>
            </ul>
        </div>

        <div class="btn-group col-4 m-0 px-0">
            <button id="elect-button" type="button" class="btn btn-dark btn-lg px-1 dropdown-toggle">
                전자제품
            </button>

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
    <div class="container d-flex p-md-5 px-2 py-4" style="border-bottom: 2px solid; border-top: 2px solid; border-color: #dadee6">
        <div class="col-md-8 col-12 d-flex justify-content-center align-items-start flex-wrap">

            <!-- 리뷰 사진 캐러셀 -->
            <div id="carousel-example-2" class="carousel slide col-12" data-ride="carousel">
                <div class="carousel-inner" role="listbox">
                    <div class="carousel-item active">
                        <div class="d-flex">
                            <div class="card-body p-1 col-4">
                                <img class="w-100" src="https://picsum.photos/200/200?image=701">
                            </div>
                        
                            <div class="card-body p-1 col-4">
                                <img class="w-100"src="https://picsum.photos/200/200?image=113">
                            </div>
                                
                            <div class="card-body p-1 col-4">
                                <img class="w-100"src="https://picsum.photos/200/200?image=242">
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="view d-flex">
                            <div class="card-body p-1 col-4">
                                <img class="w-100"src="https://picsum.photos/200/200?image=0">
                            </div>
                        
                            <div class="card-body p-1 col-4">
                                <img class="w-100"src="https://picsum.photos/200/200?image=0">
                            </div>
                            
                            <div class="card-body p-1 col-4">
                                <img class="w-100"src="https://picsum.photos/200/200?image=0">
                            </div>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <div class="view d-flex">
                            <div class="card-body p-1 col-4">
                                <img class="w-100"src="https://picsum.photos/200/200?image=0">
                            </div>
                        
                            <div class="card-body p-1 col-4">
                                <img class="w-100"src="https://picsum.photos/200/200?image=0">
                            </div>
                            
                            <div class="card-body p-1 col-4">
                                <img class="w-100"src="https://picsum.photos/200/200?image=0">
                            </div>
                        </div>
                    </div>
                </div>
                <!--Controls-->
                <a class="carousel-control-prev" href="#carousel-example-2" role="button" data-slide="prev" >
                    <span class="carousel-control-prev-icon" aria-hidden="true" style="color: white;"></span>
                </a>
                <a class="carousel-control-next review-photo-button-right" href="#carousel-example-2" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true" style="color: white;"></span>
                </a>
            </div>
            <!-- 리뷰 상세 설명 -->
            <div class="d-flex flex-wrap col-12">
                <p class="col-12 p-0 my-1">
                    <span>
                        ■ 연락처 : 
                    </span>
                    <span>
                        010-2053-4968
                    </span>
                </p>
                <p class="col-12 p-0 my-1">
                    <span>
                        ■ 주소 : 
                    </span>
                    <span>
                        서울특별시 송파구 잠실동 석촌호수 서호
                    </span>
                </p>
                <p class="col-12 p-0 my-1">
                    <span>
                        ■ 운영 시간
                    </span>
                    <p class="ml-4 my-1">
                        <div>
                            평일 : 09: 00 ~ 11 : 00<br>
                            토: 10: 00 ~ 11: 00
                        </div>
                    </p>
                </p>
                <p class="col-12 p-0 my-1">
                    <span>
                        ■ 세부 정보 :
                    </span>
                    <span class="review-explanation-2  col-18" text="">
                        Lorem ipsum dolor sit amet consectetur, adipisicing elit. Et fugiat temporibus voluptate laudantium ducimus sequi error rerum, dolores consequatur? Dolorum minus a aliquam ipsa laboriosam esse odit tempore non sed.
                    </span>
                </p>
            </div>
            <div class="d-md-none col-12 d-flex justify-content-between align-items-center p-0 ">
                <div class="col-6 d-flex align-items-center justify-content-center">
                    <i class="fas fa-share-alt"></i>
                    <i class="far fa-star mx-4"></i>
                    <i class="far fa-thumbs-up"></i>
                </div>
                <div class="col-6 d-flex align-items-center justify-content-end p-0">
                    <button type="button" id="review_write_mobile" class="btn btn-dark review-write px-3">리뷰 작성하기</button>
                </div>
            </div>
        </div>
        <div class="col-4 d-md-flex d-none flex-wrap align-items-center justify-content-center">
            <div class="col-12">
                <img class="main-review-photo w-100" src="https://picsum.photos/350/300?image=1040">
            </div>
            <div class="col-12 d-flex justify-content-center my-4">
                <i class="fas fa-share-alt"></i>
                <i class="far fa-star mx-4"></i>
                <i class="far fa-thumbs-up"></i>
            </div>
            <button type="button" id="review_write" class="btn btn-dark review-write">리뷰 작성하기</button>
        </div>
    </div>

    <!-- 컨텐트 영역 -->
    <div class="container d-flex flex-wrap">

        <!-- 댓글 작성 양식 -->
        <div id="write_form" class="col-12 flex-md-row flex-wrap justify-content-center" style="
            display: none;
            height: 0px;
            border-bottom: 2px solid #dadee6;
        ">
            <button id="review_write_cancel" type="button" class="btn btn-light col-12 text-center py-3 m-0 mb-3">
                댓글 작성창 접기
                <i class="fas fa-arrow-up"></i>
            </button>

            <div class="col-md-3 col-12 d-flex flex-wrap text-center align-content-start justify-content-center"> 
                <h4 class="my-3 font-weight-bold w-100">리뷰 작성</h4>
                <div class="w-50">
                    <img class="rounded-circle w-100" src="https://mdbootstrap.com/img/Photos/Avatars/img%20%2810%29.jpg">
                </div>

                <div class="w-100 my-3">
                    유저 닉네임1
                </div>

                <div class="d-flex flex-wrap text-left mt-4">
                    <div class="star-box">
                        <a>
                            <i class="far fa-star" style="font-size: 30px;"></i>
                        </a>
                        <a>
                            <i class="far fa-star" style="font-size: 30px;"></i>
                        </a>
                        <a>
                            <i class="far fa-star" style="font-size: 30px;"></i>
                        </a>
                        <a>
                            <i class="far fa-star" style="font-size: 30px;"></i>
                        </a>
                        <a>
                            <i class="far fa-star" style="font-size: 30px;"></i>
                        </a>
                    </div>
                </div>
            </div>
            
            <div class="col-md-9 col-12 p-0 flex-column my-3">
                <textarea rows="10" class="form-control px-2"></textarea>

                <div class="d-md-flex d-none col-12 p-0 my-3">
                    <div style="width: 20%;">
                        <a href="#">
                            <img src="https://picsum.photos/200/300?image=194" class="w-100" style="height: 160px">
                        </a>
                    </div>
                    <div class="mx-2" style="width: 20%;">
                        <a href="#">
                            <img src="https://picsum.photos/200/300?image=536" class="w-100" style="height: 160px">                            <a href="#">                            <a href="#">
                        </a>
                    </div>
                    <div style="width: 20%;">
                        <a href="#">
                            <img src="https://picsum.photos/200/300?image=392" class="w-100" style="height: 160px">                            </a>                            </a>
                        </a>
                    </div>
                    <div class="mx-2" style="width: 20%;">
                        <a href="#">
                                <img src="/img/addfile.png" class="w-100" style="height: 160px; border: 2px dotted #b8bcc4">
                        </a>
                    </div>
                    <div style="width: 20%;">
                        <a href="#">
                            <img src="/img/addfile.png" class="w-100" style="height: 160px; border: 2px dotted #b8bcc4">
                        </a>
                    </div>
                </div>

                <div class="form-group d-md-none d-block">
                    <input type="file" class="form-control-file my-1">
                </div>

                <div class="my-4 text-md-right text-center">
                    <button type="button" class="btn btn-light">다시작성</button>
                    <button type="button" class="btn btn-elegant">등록하기</button>
                </div>
            </div>
        </div>

        <!-- 댓글 목록 -->
        <div class="d-flex col-12 flex-md-row flex-wrap my-3">
            <div class="card col-12 my-3 d-md-none d-block">
                <div class="card-header px-2 d-flex justify-content-start align-items-center bg-white border-0">
                    <div style="width: 13%">
                        <img class="rounded-circle w-100" src="https://picsum.photos/50/50?image=1081">
                    </div>

                    <div class="ml-3" style="width: 80%">
                        유저 닉네임2
                    </div>
                </div>

                <div class="card-body p-2">
                    <div class="col-12 d-flex justify-content-center align-items-center p-0 my-3">
                        <!-- 유저들이 올린리뷰 후기 사진0-->
                        <div id="carouselExampleFade" class="carousel slide w-100" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="d-flex justify-content-around flex-row">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=230" style="width: 30%">
                                        <img class="col-4 p-0 mx-2" src="https://picsum.photos/200/200?image=240" style="width: 30%">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=280" style="width: 30%">
                                    </div>
                                </div >
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around flex-row">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=230" style="width: 30%">
                                        <img class="col-4 p-0 mx-2" src="https://picsum.photos/200/200?image=240" style="width: 30%">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=280" style="width: 30%">
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around flex-row">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=230" style="width: 30%">
                                        <img class="col-4 p-0 mx-2" src="https://picsum.photos/200/200?image=240" style="width: 30%">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=280" style="width: 30%">
                                    </div>
                                </div>
                            </div>
                            <a class="user-photo-button-left carousel-control-prev pr-5" href="#carouselExampleFade" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="user-photo-button-right carousel-control-next pl-5" href="#carouselExampleFade" role="button" data-slide="next">
                                <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <!-- 유저들이 올린리뷰 후기 사진0 End-->
                    </div>
                    <div class="col-12 p-0 my-3">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores, quam ipsum! Expedita nesciunt repellat officia deserunt incidunt libero sequi possimus pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo vitae quos.
                    </div>
                </div>
                
                <div class="card-footer d-flex justify-content-between bg-white">
                    <div class="col-6 p-0 d-flex flex-wrap align-items-center justify-content-center">
                        <div class="col-12 d-flex justify-content-center">
                            <i class="far fa-star" style="font-size: 20px;"></i>
                            <i class="far fa-star" style="font-size: 20px;"></i>
                            <i class="far fa-star" style="font-size: 20px;"></i>
                            <i class="far fa-star" style="font-size: 20px;"></i>
                            <i class="far fa-star" style="font-size: 20px;"></i>
                        </div>
                        <p class="text-center">
                            4.5
                        </p>
                    </div>

                    <div class="d-flex col-5 flex-column align-items-center justify-content-center">
                        <i class="far fa-heart" style="font-size: 30px"></i>
                        <p>
                            87.451
                        </p>
                    </div>
                </div>
            </div>

            <div class="card col-12 my-3 d-md-none d-block">
                    <div class="card-header px-2 d-flex justify-content-start align-items-center bg-white border-0">
                        <div style="width: 13%">
                            <img class="rounded-circle w-100" src="https://picsum.photos/50/50?image=1081">
                        </div>
    
                        <div class="ml-3" style="width: 80%">
                            유저 닉네임2
                        </div>
                    </div>
    
                    <div class="card-body p-2">
                        <div class="col-12 d-flex justify-content-center align-items-center p-0 my-3">
                            <!-- 유저들이 올린리뷰 후기 사진0-->
                            <div id="carouselExampleFade" class="carousel slide w-100" data-ride="carousel">
                                <div class="carousel-inner">
                                    <div class="carousel-item active">
                                        <div class="d-flex justify-content-around flex-row">
                                            <img class="col-4 p-0" src="https://picsum.photos/200/200?image=230" style="width: 30%">
                                            <img class="col-4 p-0 mx-2" src="https://picsum.photos/200/200?image=240" style="width: 30%">
                                            <img class="col-4 p-0" src="https://picsum.photos/200/200?image=280" style="width: 30%">
                                        </div>
                                    </div >
                                    <div class="carousel-item">
                                        <div class="d-flex justify-content-around flex-row">
                                            <img class="col-4 p-0" src="https://picsum.photos/200/200?image=230" style="width: 30%">
                                            <img class="col-4 p-0 mx-2" src="https://picsum.photos/200/200?image=240" style="width: 30%">
                                            <img class="col-4 p-0" src="https://picsum.photos/200/200?image=280" style="width: 30%">
                                        </div>
                                    </div>
                                    <div class="carousel-item">
                                        <div class="d-flex justify-content-around flex-row">
                                            <img class="col-4 p-0" src="https://picsum.photos/200/200?image=230" style="width: 30%">
                                            <img class="col-4 p-0 mx-2" src="https://picsum.photos/200/200?image=240" style="width: 30%">
                                            <img class="col-4 p-0" src="https://picsum.photos/200/200?image=280" style="width: 30%">
                                        </div>
                                    </div>
                                </div>
                                <a class="user-photo-button-left carousel-control-prev pr-5" href="#carouselExampleFade" role="button" data-slide="prev">
                                    <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="user-photo-button-right carousel-control-next pl-5" href="#carouselExampleFade" role="button" data-slide="next">
                                    <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                            <!-- 유저들이 올린리뷰 후기 사진0 End-->
                        </div>
                        <div class="col-12 p-0 my-3">
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores, quam ipsum! Expedita nesciunt repellat officia deserunt incidunt libero sequi possimus pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo vitae quos.
                        </div>
                    </div>
                    
                    <div class="card-footer d-flex justify-content-between bg-white">
                        <div class="col-6 p-0 d-flex flex-wrap align-items-center justify-content-center">
                            <div class="col-12 d-flex justify-content-center">
                                <i class="far fa-star" style="font-size: 20px;"></i>
                                <i class="far fa-star" style="font-size: 20px;"></i>
                                <i class="far fa-star" style="font-size: 20px;"></i>
                                <i class="far fa-star" style="font-size: 20px;"></i>
                                <i class="far fa-star" style="font-size: 20px;"></i>
                            </div>
                            <p class="text-center">
                                4.5
                            </p>
                        </div>
    
                        <div class="d-flex col-5 flex-column align-items-center justify-content-center">
                            <i class="far fa-heart" style="font-size: 30px"></i>
                            <p>
                                87.451
                            </p>
                        </div>
                    </div>
            </div>
    
            <div class="card col-12 my-3 d-md-none d-block">
                <div class="card-header px-2 d-flex justify-content-start align-items-center bg-white border-0">
                    <div style="width: 13%">
                        <img class="rounded-circle w-100" src="https://picsum.photos/50/50?image=1081">
                    </div>

                    <div class="ml-3" style="width: 80%">
                        유저 닉네임2
                    </div>
                </div>

                <div class="card-body p-2">
                    <div class="col-12 d-flex justify-content-center align-items-center p-0 my-3">
                        <!-- 유저들이 올린리뷰 후기 사진0-->
                        <div id="carouselExampleFade" class="carousel slide w-100" data-ride="carousel">
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <div class="d-flex justify-content-around flex-row">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=230" style="width: 30%">
                                        <img class="col-4 p-0 mx-2" src="https://picsum.photos/200/200?image=240" style="width: 30%">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=280" style="width: 30%">
                                    </div>
                                </div >
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around flex-row">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=230" style="width: 30%">
                                        <img class="col-4 p-0 mx-2" src="https://picsum.photos/200/200?image=240" style="width: 30%">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=280" style="width: 30%">
                                    </div>
                                </div>
                                <div class="carousel-item">
                                    <div class="d-flex justify-content-around flex-row">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=230" style="width: 30%">
                                        <img class="col-4 p-0 mx-2" src="https://picsum.photos/200/200?image=240" style="width: 30%">
                                        <img class="col-4 p-0" src="https://picsum.photos/200/200?image=280" style="width: 30%">
                                    </div>
                                </div>
                            </div>
                            <a class="user-photo-button-left carousel-control-prev pr-5" href="#carouselExampleFade" role="button" data-slide="prev">
                                <span class="carousel-control-prev-icon bg-dark" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="user-photo-button-right carousel-control-next pl-5" href="#carouselExampleFade" role="button" data-slide="next">
                                <span class="carousel-control-next-icon bg-dark" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <!-- 유저들이 올린리뷰 후기 사진0 End-->
                    </div>
                    <div class="col-12 p-0 my-3">
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores, quam ipsum! Expedita nesciunt repellat officia deserunt incidunt libero sequi possimus pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo vitae quos.
                    </div>
                </div>
                
                <div class="card-footer d-flex justify-content-between bg-white">
                    <div class="col-6 p-0 d-flex flex-wrap align-items-center justify-content-center">
                        <div class="col-12 d-flex justify-content-center">
                            <i class="far fa-star" style="font-size: 20px;"></i>
                            <i class="far fa-star" style="font-size: 20px;"></i>
                            <i class="far fa-star" style="font-size: 20px;"></i>
                            <i class="far fa-star" style="font-size: 20px;"></i>
                            <i class="far fa-star" style="font-size: 20px;"></i>
                        </div>
                        <p class="text-center">
                            4.5
                        </p>
                    </div>

                    <div class="d-flex col-5 flex-column align-items-center justify-content-center">
                        <i class="far fa-heart" style="font-size: 30px"></i>
                        <p>
                            87.451
                        </p>
                    </div>
                </div>
            </div>
            
            <!-- strat -->
            <div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active" id="home">
                <div class=" col-2 d-flex flex-wrap justify-content-center align-items-center" style ="width: 100%; display: flex;">
                    <div class="w-50">
                        <img class="rounded-circle w-100" src="https://picsum.photos/300/300?image=1081">
                    </div>

                    <div class="w-100 text-center" style ="margin-top: 0px">
                        유저 닉네임2
                    </div>
                </div>
                    
                <div class="col-2 d-flex justify-content-center align-items-center p-0">
                    <!-- 유저들이 올린리뷰 후기 사진0-->
                    <div id="carouselExampleFade-1" class="carousel slide carousel-fade" data-ride="carousel">
                        <div class="carousel-inner user-picture">
                            <div class="carousel-item active">
                                <img class="d-block w-100 user-review-img" src="https://picsum.photos/200/200?image=230" >
                            </div >
                            <div class="carousel-item">
                                <img class="d-block w-100 user-review-img" src="https://picsum.photos/200/200?image=240">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 user-review-img" src="https://picsum.photos/200/200?image=280">
                            </div>
                        </div>
                        <a class="user-photo-button-left carousel-control-prev" href="#carouselExampleFade-1" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="user-photo-button-right carousel-control-next" href="#carouselExampleFade-1" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <!-- 유저들이 올린리뷰 후기 사진0 End-->
                </div>

                <div class="col-6 d-flex flex-wrap flex-row align-items-center">
                    <div>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores, quam ipsum! Expedita nesciunt repellat officia deserunt incidunt libero sequi possimus pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo vitae quos.
                    </div>
                    
                    <div class=" col-5 p-0 d-flex flex-wrap">
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                    </div>
                </div>
                <div class="d-flex col-2 flex-column align-items-center justify-content-center">
                    <i class="far fa-heart" style="font-size: 40px"></i>
                    <p class="heart-number">87.451</p>
                </div>
            </div>

            <div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active" id="home">
                <div class=" col-2 d-flex flex-wrap justify-content-center align-items-center" style ="width: 100%; display: flex;">
                    <div class="w-50">
                        <img class="rounded-circle w-100" src="https://picsum.photos/300/300?image=1081">
                    </div>

                    <div class="w-100 text-center" style ="margin-top: 0px">
                        유저 닉네임2
                    </div>
                </div>
                    
                <div class="col-2 d-flex justify-content-center align-items-center p-0">
                    <!-- 유저들이 올린리뷰 후기 사진0-->
                    <div id="carouselExampleFade-2" class="carousel slide carousel-fade" data-ride="carousel">
                        <div class="carousel-inner user-picture">
                            <div class="carousel-item active">
                                <img class="d-block w-100 user-review-img" src="https://picsum.photos/200/200?image=230" >
                            </div >
                            <div class="carousel-item">
                                <img class="d-block w-100 user-review-img" src="https://picsum.photos/200/200?image=240">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 user-review-img" src="https://picsum.photos/200/200?image=280">
                            </div>
                        </div>
                        <a class="user-photo-button-left carousel-control-prev" href="#carouselExampleFade-2" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="user-photo-button-right carousel-control-next" href="#carouselExampleFade-2" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <!-- 유저들이 올린리뷰 후기 사진0 End-->
                </div>

                <div class="col-6 d-flex flex-wrap flex-row align-items-center">
                    <div>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores, quam ipsum! Expedita nesciunt repellat officia deserunt incidunt libero sequi possimus pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo vitae quos.
                    </div>
                    
                    <div class=" col-5 p-0 d-flex flex-wrap">
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                    </div>
                </div>
                <div class="d-flex col-2 flex-column align-items-center justify-content-center">
                    <i class="far fa-heart" style="font-size: 40px"></i>
                    <p class="heart-number">87.451</p>
                </div>
            </div>
            
            <div class="col-12 my-3 d-md-flex d-none flex-wrap fade show active" id="home">
                <div class=" col-2 d-flex flex-wrap justify-content-center align-items-center" style ="width: 100%; display: flex;">
                    <div class="w-50">
                        <img class="rounded-circle w-100" src="https://picsum.photos/300/300?image=1081">
                    </div>

                    <div class="w-100 text-center" style ="margin-top: 0px">
                        유저 닉네임2
                    </div>
                </div>
                    
                <div class="col-2 d-flex justify-content-center align-items-center p-0">
                    <!-- 유저들이 올린리뷰 후기 사진0-->
                    <div id="carouselExampleFade-3" class="carousel slide carousel-fade" data-ride="carousel">
                        <div class="carousel-inner user-picture">
                            <div class="carousel-item active">
                                <img class="d-block w-100 user-review-img" src="https://picsum.photos/200/200?image=230" >
                            </div >
                            <div class="carousel-item">
                                <img class="d-block w-100 user-review-img" src="https://picsum.photos/200/200?image=240">
                            </div>
                            <div class="carousel-item">
                                <img class="d-block w-100 user-review-img" src="https://picsum.photos/200/200?image=280">
                            </div>
                        </div>
                        <a class="user-photo-button-left carousel-control-prev" href="#carouselExampleFade-3" role="button" data-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="sr-only">Previous</span>
                        </a>
                        <a class="user-photo-button-right carousel-control-next" href="#carouselExampleFade-3" role="button" data-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="sr-only">Next</span>
                        </a>
                    </div>
                    <!-- 유저들이 올린리뷰 후기 사진0 End-->
                </div>

                <div class="col-6 d-flex flex-wrap flex-row align-items-center">
                    <div>
                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Maiores, quam ipsum! Expedita nesciunt repellat officia deserunt incidunt libero sequi possimus pariatur, fugiat magnam, repellendus ipsa mollitia in explicabo vitae quos.
                    </div>
                    
                    <div class=" col-5 p-0 d-flex flex-wrap">
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                        <i class="far fa-star" style="font-size: 20px;"></i>
                    </div>
                </div>
                <div class="d-flex col-2 flex-column align-items-center justify-content-center">
                    <i class="far fa-heart" style="font-size: 40px"></i>
                    <p class="heart-number">87.451</p>
                </div>
            </div>
        </div>
        <div id="review_more" class="d-flex col-12 justify-content-center align-items-center bg-light py-3 my-4">
            <a class="text-center" href="#" style="text-decoration: none">
                <img src="/img/more.png" style="width: 20%; border-radius: 100%; border: 1px solid gray">
                <span class="ml-2 text-dark">댓글 더보기</span>
            </a>
        </div>
    </div>

	<jsp:include page="/WEB-INF/views/commons/footer.jsp" />
	
    <script>
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

            $('#review_write').on('click', () => {
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

    </script>
</body>
</html>