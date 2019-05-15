<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<jsp:include page="/WEB-INF/views/commons/header.jsp" />
	<title>검색결과 - ALL Review</title>
	
	<div style="margin: 0 auto; width: 100%; max-width: 800px;">
		<!-- 게시글 -->
		<div id="content" class="col-12">
			<!-- 검색한 내용의 제목 -->
			<div class="col-12 py-4">
				<div class="board_search_title  d-flex justify-content-between">
					<span>
						<c:if test="${keyword == ''}">
							<c:choose>
								<c:when test="${type == 1}">
									맛집
								</c:when>
								<c:when test="${type == 2}">
									병원
								</c:when>
								<c:when test="${type == 3}">
									전자제품
								</c:when>
							</c:choose>
						</c:if>
						<c:if test="${keyword != ''}">
							'${keyword}'
						</c:if>
						에 대한 검색결과
					</span>
					<a class="board_filter text-dark" data-toggle="modal" data-target="#exampleModalPopovers">
						<i class="fas fa-sliders-h" style="font-size: 100%;"></i>
						<span style="font-size:90%;">필터</span>
					</a>
				
				</div>
			</div>
	
			<c:if test="type == 1 || type == 2">
				<!-- 지도 -->
				<div class="col-12">
					<div id="map" class="w-100" style="height:400px;"></div>
				</div>
				<div class="my-2" style="border-bottom: rgb(217, 217, 217) solid 1px;">
				</div>
			</c:if>
			
	      
	    	<!-- 게시글의 사진 및 내용 -->
		   	<c:forEach items="${list}" var="review" varStatus="i">
				<div class="d-flex flex-wrap" style="margin: 3% 0 3% 0;" >
					<div class="col-md-6 col-12">
			      		<!-- 마우스 호버시 줌 이벤트 -->
			      		<div class="view overlay zoom" style="width: 100%; height: 100%">
			        		<!-- 사진 캐러셀 -->
			        		<a href="/review/post?num=${review.num}&type=${review.type}">
							  	<c:if test="${review.files.size() == 0}">
							      <img src="/img/NoImg.jpg" style="width:40%; height: 250px; margin: 0 auto">
							  	</c:if>
							  	<c:if test="${review.files.size() != 0}">
									<div id="searchCarousel${i.index}" class="carousel slide carousel-fade" data-ride="carousel">
									  <div class="carousel-inner">
										  	<c:forEach var="file" items="${review.files}" varStatus="j">
											    <div class="carousel-item ${j.index == 0 ? 'active' : ''}">
											      <img src="${file}" style="width:100%; height: 250px;">
											    </div>
										  	</c:forEach>
									  </div>
									  <a class="carousel-control-prev" href="#searchCarousel${i.index}" role="button" data-slide="prev">
									    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
									    <span class="sr-only">Previous</span>
									  </a>
									  <a class="carousel-control-next" href="#searchCarousel${i.index}" role="button" data-slide="next">
									    <span class="carousel-control-next-icon" aria-hidden="true"></span>
									    <span class="sr-only">Next</span>
									  </a>
									</div>
							  	</c:if>
							</a>
						</div>
					</div>
			
					<div class="col-md-6 col-12">
						<div>
						    <a href="/review/post?num=${review.num}&type=${review.type}" class="text-dark">
						    	<h5 class="board_list_title mb-1">
						    		${review.title}
							    	<c:if test="${type eq 1}">
									    <span style="color: gray; font-size: 12px;">
								    		<c:forEach var="cate" items="${restCategory}" varStatus="i">
												<c:if test="${review.category eq i.index}">${cate.name}</c:if>
								    		</c:forEach>
										</span>
									</c:if>
							    	<c:if test="${type eq 2}">
									    <span style="color: gray; font-size: 12px;">
								    		<c:forEach var="cate" items="${hosCategory}" varStatus="j">
												<c:if test="${review.hospitalCategory eq j.index}">${cate.name}</c:if>
								    		</c:forEach>
										</span>
									</c:if>
									<fmt:parseDate value="${review.addDate}" var="addDate" pattern="yyyy-MM-dd" />
									<c:if test="${addDate.month + 1 == 5}">
										<span class="badge badge-pill align-middle ml-1" style="font-size: 12px; background-color: red">
											NEW
										</span>
									</c:if>
						    	</h5>
						    </a>
<!-- 즐겨찾기 별부분  -->
						    <form style="float:right; font-size:2rem;" class="favostar">
								<a style="color:rgb(33, 37, 41)"  >
								</a>
						      	<input type="hidden" name="postNum" value="${review.num}">
								<button class="p-0 m-0" type="submit" style="border: none; background-color: white">
									<c:choose>
										<c:when test="${reviewList[review.num] eq null}">
											<i class="fas fa-star"></i>
										</c:when>
										<c:otherwise>
											<i class="fas fa-star" style="color: #f9ca24"></i>
										</c:otherwise>
									</c:choose>
								</button>
						    </form>
						</div>
						
							
						
<%-- 									<c:choose> --%>
<%-- 									<c:when test ="${flag eq true}"> --%>
<!-- 									<i class="fas fa-star" style ="color: #f9ca24"></i> -->
<%-- 									</c:when> --%>
<%-- 									<c:otherwise> --%>
<!-- 									<i class="fas fa-star"></i> -->
<%-- 									</c:otherwise> --%>
<%-- 									</c:choose> --%>
	
<!-- 검색 후 즐겨찾기 부분	-->
			

						
						<div class="my-1">
						    <span>
						    	<c:forEach var="i" begin="0" end="4">
						    		<c:if test="${review.stars - i >= 1}">
							    		<i style="color: rgb(255, 153, 0);" class="fas fa-star"></i>
					    			</c:if>
					    			<c:if test="${review.stars - i < 1 && review.stars - i > 0}">
						    			<i style="color: rgb(255, 153, 0);" class="fas fa-star-half-alt"></i>
						    		</c:if>
						    		<c:if test="${review.stars - i <= 0}">
							    		<i style="color: rgb(255, 153, 0);" class="far fa-star"></i>
						    		</c:if>
						    	</c:forEach>
						    </span>
						    <span style="font-weight:bolder">
						    	<c:if test="${review.stars != 0}">
						    		<fmt:formatNumber value="${review.stars}" pattern=".0" />
						    	</c:if>
						    	<c:if test="${review.stars == 0}">
						    		<fmt:formatNumber value="${review.stars}" pattern="0" />
						    	</c:if>
						    </span>
						    <span class="ml-2" style="font-size:80%;">
						    	${review.starCount}
						    	Reviews
						    </span>
						</div>
						<c:if test="${type eq 1 || type == 2}">
							<div class="my-2" style="font-weight:bolder">
								<i class="fas fa-phone"></i>
								<span>${review.tel}</span> 
							</div>
							<div class="my-2" style="font-weight:bolder">
								<i class="fas fa-location-arrow"></i>
								<span>${review.addr}</span>
							</div>
							<div class="my-2" style="font-weight:bolder;">
								<i class="fas fa-clipboard-list mr-1"></i>
								<span>
									${review.contents}
								</span>
							</div>
						</c:if>
						<c:if test="${type eq 3}">
							<div class="my-2" style="font-weight:bolder">
								<span>카테고리 : </span> 
								<span>${digitalCategory[0][review.subCategory1].name}</span> 
								<span>-</span> 
								<span>${digitalCategory[1][review.subCategory2].name}</span> 
								<span>-</span> 
								<span>${digitalCategory[2][review.subCategory3].name}</span> 
							</div>
							<div class="my-2" style="font-weight:bolder">
								<span>제조사 : </span> 
								<span>${review.productor}</span> 
							</div>
							<div class="my-2" style="font-weight:bolder">
								<span>출시일 : </span> 
								<span>${review.release}</span> 
							</div>
							<div class="my-2" style="font-weight:bolder">
								<span>모델명 : </span> 
								<span>${review.model}</span> 
							</div>
						</c:if>
					</div>
				</div>
			</c:forEach>
		</div>
		<div class="my-3" style="border-bottom: rgb(217, 217, 217) solid 1px;"></div>
		<div class="text-right">
			<span class="badge badge-pill align-middle ml-1" style="font-size: 12px; background-color: red">
				NEW
			</span>
			<c:if test="${type eq 1 || type == 2}">
				<span style="font-size: 12px;">
					: 이번달 신규 등록 지점
				</span>
			</c:if>
			<c:if test="${type eq 3}">
				<span style="font-size: 12px;">
					: 이번달 신규 출시 제품
				</span>
			</c:if>
		</div>
		<div id="review_more" class="d-flex col-12 justify-content-center align-items-center bg-white py-3 my-5">
		    <a id="more_button" class="text-center" style="text-decoration: none">
		        <img src="/img/more.png" style="width: 20%; border-radius: 100%; border: 1px solid gray">
		        <span class="ml-2 text-dark">검색결과 더보기</span>
		    </a>
			<div id="bar" style="display: none;"></div>
		</div>
	</div>
  
	<a href="#" id="scroll_top" class="text-dark">
	  <i class="fas fa-caret-square-up scroll_top"></i>
	</a>
	<jsp:include page="/WEB-INF/views/modal/filterModal.jsp" />
	<jsp:include page="/WEB-INF/views/commons/footer.jsp" />

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6060ab38dd0e3fd90aaea5e539c8172e&libraries=services"></script>
	<script type="text/javascript" src="/js/radialprogress.js"></script>
	
<!-- 	  <span style="float:right; font-size:2rem;" id="favostar" value=${nickname} > -->

<!-- 						      <a style="color:rgb(33, 37, 41)"  ><i class="far fa-star"></i></a> -->
<!-- 	</span> -->
	
	<script>
		var nickname = "${nickname}";
		var flag = false;
		$('.favostar').submit(function(e) {
			e.preventDefault();
			
			if(nickname != ""){ //닉네임이 null이 아닌 경우
					if(e.target[1].children[0].style.color == '' || 
					   e.target[1].children[0].style.color === 'rgb(0, 0, 0)') {//검정
						e.target[1].children[0].style.color = '#f9ca24';
												
						$.ajax({
							url : '/reviewList/favostar',
							type: "POST",
							dataType : "text",
							data :{
								postNum : e.target.postNum.value,
								nickname : nickname,
								reviewType : 2
							},
							success : function(data){
								console.log(data);
							},
							error : function(data){
								alert("잘못된 경로입니다.");
								console.log(data);
								return false;
							}
						})
					}else{
						e.target[1].children[0].style.color = 'rgb(0, 0, 0)';
							$.ajax({
								url : "/reviewList/favostar",
								type: "POST",
								dataType : "text",
								data: 
								{
									postNum : e.target.postNum.value,
									nickname : nickname,
									reviewType : 2,
								},
								success : function(data){
								},
								error : function(data){
									alert("잘못된 경로입니다.");
								}
							})							
				    }								
			}else{
				alert("회원만 이용 가능합니다. 로그인 해주세요");
			}
			
		})
	</script>		
	

	
	<script type="text/javascript">
		var categoryList = [
			'뷔페',
			'한식',
			'양식',
			'중식',
			'일식',
			'카페',
			'치킨',
			'피자',
			'중국집',
			'족발·보쌈',
			'도시락',
			'패스트푸드',
			'테이크아웃',
			'프랜차이즈',
			'맥주',
			'호프'
		];
		var type = ${type};
		
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
			
			var start = 1;
			
			var bar = new RadialProgress(document.getElementById("bar"),{indeterminate:true,colorBg:"white",colorFg:"red",thick:5});
			
			$('#review_more').click(e => {
				$('#bar').show();
				$('#more_button').hide();
				start += 5;
				$.ajax({
					url: '/review/search/more',
					type: 'get',
					dataType: 'json',
					data: {
						type: '${type}',
						keyword: '${keyword}',
						start: start,
						end: start + 4
					},
					success: function(data) {
						if (data.length == 0) {
							$('#review_more').text('더 이상 불러올 리뷰글이 없습니다.');
						}
						data.forEach((item, index) => {
							var files = '';
						  	item.files.forEach(function(file, index) {
							    files +='<div class="carousel-item ' + (index == 0 ? 'active' : '') + '">' +
									      '<img src="' + file + '" style="width:100%; height: 250px;">' +
									    '</div>	'
						  	});
							var list = 
							'<div class="d-flex flex-wrap" style="margin: 3% 0 3% 0;" >' +
								'<div class="col-md-6 col-12">' +
						      		'<div class="view overlay zoom" style="width: 100%; height: 100%">' +
						        		'<a href="/review/post?num=' + item.num + '&type=' + item.type + '">' +
						        			(item.files.length == 0 ?
										    '<img src="/img/NoImg.jpg" style="width:40%; height: 250px; margin: 0 auto">' :
											'<div id="searchCarousel' + item.num + '" class="carousel slide carousel-fade" data-ride="carousel">' +
											  '<div class="carousel-inner">' +
											    files +
											  '</div>' +
											  '<a class="carousel-control-prev" href="#searchCarousel' + item.num + '" role="button" data-slide="prev">' +
											    '<span class="carousel-control-prev-icon" aria-hidden="true"></span>' +
											    '<span class="sr-only">Previous</span>' +
											  '</a>' +
											  '<a class="carousel-control-next" href="#searchCarousel' + item.num + '" role="button" data-slide="next">' +
											    '<span class="carousel-control-next-icon" aria-hidden="true"></span>' +
											    '<span class="sr-only">Next</span>' +
											  '</a>' +
											'</div>') +
										'</a>' +
									'</div>' +
								'</div>' +
								'<div class="col-md-6 col-12">' +
									'<div>' +
									    '<a href="/review/post?num=' + item.num + '&type=' + item.type + '" class="text-dark">' +
									    	'<h5 class="board_list_title mb-1">' + item.title + '</h5>' +
									    '</a>' +
									    '<span style="float:right; font-size:2rem;">' +
									      '<a style="color:rgb(0, 102, 255)"><i class="far fa-star"></i></a>' +
									    '</span>' +
									'</div>' +
									'<div class="my-1">' +
									    '<span><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star"></i><i style="color: rgb(255, 153, 0);" class="fas fa-star-half-alt"></i><i style="color: rgb(255, 153, 0);" class="far fa-star"></i></span> <span style="font-weight:bolder">300</span><span style="font-size:90%;"> reviews</span>' +
									'</div>' +
									'<div class="my-1 align-middle">' +
									    '<i class="fas fa-heart"></i>' +
									    '<span> ' + categoryList[item.category] + '</span>' +
									'</div>' +
									'<div class="my-2" style="font-weight:bolder">' +
										'<i class="fas fa-phone"></i>' +
										'<span>' + item.tel + '</span>' +
									'</div>' +
									'<div class="my-2" style="font-weight:bolder">' +
										'<i class="fas fa-location-arrow"></i>' +
										'<span>' + item.addr + '</span>' +
									'</div>' +
									'<div class="my-2" style="font-weight:bolder;">' +
										'<i class="fas fa-clipboard-list"></i>' +
										'<div>' +
											item.contents +
										'</div>' +
									'</div>' +
								'</div>' +
							'</div>'
							document.getElementById('content').innerHTML += list;
						});
						if (type == 1 && type == 2) {
							getReviewAddr(start);
						}
					}
				}).done(function() {
					$('#bar').hide();
					$('#more_button').show();
				})
			});

			if (type == 1 && type == 2) {
				getReviewAddr(0);
			}
		});

		function getReviewAddr(start) {
			$.ajax({
				url: '/review/search/address',
				type: 'get',
				dataType: 'json',
				data: {
					type: '${type}',
					keyword: '${keyword}',
					start: start,
					end: start + 4
				},
				success: function(data) {
					getCoords(data);
				}
			})
		}
		
		function getCoords(data, map) {
			var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
			var options = { //지도를 생성할 때 필요한 기본 옵션
				center: new daum.maps.LatLng(37.49581788064077, 127.03051440129362), //지도의 중심좌표.
				level: 3 //지도의 레벨(확대, 축소 정도)
			};
			var map = new daum.maps.Map(container, options);
			var zoomControl = new daum.maps.ZoomControl();
			map.addControl(zoomControl, daum.maps.ControlPosition.RIGHT);
			
			var bounds = new daum.maps.LatLngBounds();    
			
			//	주소로 좌표 가져오기
			var geocoder = new daum.maps.services.Geocoder();
			
			var callback = (data) => function(result, status) {
				console.log(data)
			    if (status === daum.maps.services.Status.OK) {
			    	reviewArr.push({
			    		'title': data.title,
			    		'x': result[0].x,
			    		'y': result[0].y
			    	})
			    }
			};
			
			for (var i = 0; i < data.length; i++) {
				geocoder.addressSearch(data[i].addr, callback(data[i]));	
				
				setTimeout(() => {
					reviewArr.forEach((item, index) => {
						var imageSrc = "http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
					    var imageSize = new daum.maps.Size(24, 35); 
					    var markerImage = new daum.maps.MarkerImage(imageSrc, imageSize); 
					    
					    var point = new daum.maps.LatLng(item.y, item.x);
					    
					    // 마커를 생성합니다
					    var marker = new daum.maps.Marker({
					        map: map,
					        position: point,
					        image : markerImage
					    });
					    
					    var infowindow = new daum.maps.InfoWindow({
						    content : '<div style="width: 150px; text-align: center; padding: 5px 0; font-weight: 800">' + item.title + '</div>' // 인포윈도우에 표시할 내용
						});

						marker.setMap(map);
					    bounds.extend(point)
						
						// 마커에 마우스오버 이벤트를 등록합니다
						daum.maps.event.addListener(marker, 'mouseover', function() {
						  // 마커에 마우스오버 이벤트가 발생하면 인포윈도우를 마커위에 표시합니다
						    infowindow.open(map, marker);
						});
						
						// 마커에 마우스아웃 이벤트를 등록합니다
						daum.maps.event.addListener(marker, 'mouseout', function() {
						    // 마커에 마우스아웃 이벤트가 발생하면 인포윈도우를 제거합니다
						    infowindow.close();
						});
						
						map.setBounds(bounds);
					})
				}, 200);
			}
		}
		
		const reviewArr = [];
	</script>