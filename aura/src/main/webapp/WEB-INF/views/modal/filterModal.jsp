<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<!-- Modal -->
	<div id="exampleModalPopovers" style="font-size: 15px;" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel">
		<div class="modal-dialog" role="document">
			<form method="GET" action="/review/search">
				<input type="hidden" name="keyword" value="${keyword}">
				<div class="modal-content">
					<div class="modal-body">
						<div class="btn-group btn-group-toggle nav nav-tabs" data-toggle="buttons" id="myTab" role="tablist">
							<a class="btn btn-warning active nav-link col-4" id="home-tab" data-toggle="tab" href="#home">
								<input type="radio" name="type" value="1" checked>맛집
							</a>
							<a class="btn btn-warning nav-link col-4" id="profile-tab" data-toggle="tab" href="#profile">
								<input type="radio" name="type" value="2">병원
							</a>
							<a class="btn btn-warning nav-link col-4" id="contact-tab" data-toggle="tab" href="#contact">
								<input type="radio" name="type" value="3">전자제품
							</a>
						</div>
						<div class="tab-content" id="myTabContent">
						    <div class="tab-pane fade show active" id="home" role="tabpanel">
								<div class="pt-3">
								    <b style="font-size:18px;">검색 필터</b>
								    <div class="custom-control custom-radio d-flex justify-content-around py-2">
								        <b>
								            <input type="radio" class="custom-control-input" id="grade1" name="restGroup" value="score" checked>
								            <label class="custom-control-label" for="grade1">평점순</label>
								        </b>
								        <b>
								            <input type="radio" class="custom-control-input" id="grade2" name="restGroup" value="pop">
								            <label class="custom-control-label" for="grade2">인기순</label>
								        </b>
								        <b>
								            <input type="radio" class="custom-control-input" id="grade3" name="restGroup" value="comments">
								            <label class="custom-control-label" for="grade3">댓글수</label>
								        </b>
								    </div>
								    <hr>
								</div>
						
<!-- 								<div class="pt-1"> -->
<!-- 									<b style="font-size:18px;">1인당 가격</b> -->
<!-- 								    <div class="custom-control custom-checkbox d-flex justify-content-around py-2"> -->
<!-- 								        <b> -->
<!-- 								            <input type="checkbox" class="custom-control-input" id="defaultChecked1" -->
<!-- 								            	name="restPrice" value="0"> -->
<!-- 								            <label class="custom-control-label" for="defaultChecked1">만원미만</label> -->
<!-- 								        </b> -->
<!-- 								        <b> -->
<!-- 								            <input type="checkbox" class="custom-control-input" id="defaultChecked2" -->
<!-- 								            	name="restPrice" value="10000"> -->
<!-- 								            <label class="custom-control-label" for="defaultChecked2">1만원대</label> -->
<!-- 								        </b> -->
<!-- 								        <b> -->
<!-- 								            <input type="checkbox" class="custom-control-input" id="defaultChecked3" -->
<!-- 								            	name="restPrice" value="20000"> -->
<!-- 								            <label class="custom-control-label" for="defaultChecked3">2만원대</label> -->
<!-- 								        </b> -->
<!-- 								        <b> -->
<!-- 								            <input type="checkbox" class="custom-control-input" id="defaultChecked4" -->
<!-- 								            	name="restPrice" value="30000"> -->
<!-- 								            <label class="custom-control-label" for="defaultChecked4">3만원대</label> -->
<!-- 								        </b> -->
<!-- 								    </div> -->
<!-- 								    <hr> -->
<!-- 								</div> -->
						
								<div class="pt-1">
									<b style="font-size:18px;">지역</b>
									<ul class="nav nav-tabs" id="myTab" role="tablist">
									    <li class="nav-item">
									        <a class="nav-link active text-dark" style="font-weight: bold;" id="gangnam-tab" data-toggle="tab" href="#gangnam" role="tab" aria-controls="gangnam"
										    aria-selected="true">서울-강남</a>
										</li>
										<li class="nav-item">
										    <a class="nav-link text-dark" style="font-weight: bold;" id="gangbuk-tab" data-toggle="tab" href="#gangbuk" role="tab" aria-controls="gangbuk"
										    aria-selected="false">서울-강북</a>
										</li>
										<li class="nav-item">
										    <a class="nav-link text-dark" style="font-weight: bold;" id="gyeonggi-do-tab" data-toggle="tab" href="#gyeonggi" role="tab" aria-controls="gyeonggi"
										    aria-selected="false">경기도</a>
										</li>
										<li class="nav-item">
										    <a class="nav-link text-dark" style="font-weight: bold;" id="busan-tab" data-toggle="tab" href="#busan" role="tab" aria-controls="busan"
										    aria-selected="false">부산</a>
										</li>
										<li class="nav-item">
										    <a class="nav-link text-dark" style="font-weight: bold;" id="jeju-tab" data-toggle="tab" href="#jeju" role="tab" aria-controls="jeju"
										    aria-selected="false">제주</a>
										</li>
									</ul>
									<div class="tab-content" id="myTabContent">
										<c:forEach var="locCate" items="${locationCate}" varStatus="i">
											<div class="tab-pane fade custom-control custom-checkbox px-0 py-2 ${i.index == 0 ? 'show active' : ''}" id="${locCate.key}" role="tabpanel" aria-labelledby="${locCate.key}">
												<div class="d-flex flex-row flex-wrap">
													<c:forEach var="loc" items="${locCate.value}" varStatus="j">
														<div class="w-25 pl-4">
															<input type="checkbox" class="custom-control-input" id="${locCate.key}${j.index}" name="restLoc" value="${loc}">
															<label class="custom-control-label" for="${locCate.key}${j.index}">${loc}</label>
														</div>
													</c:forEach>
												</div>
												<hr>
											</div>
										</c:forEach>
										<div class="pt-1">
											<div class="pb-2">
												<b style="font-size:18px;">음식 종류</b>
											</div>
											
											<div class="tab-pane fade show active custom-control custom-checkbox px-0 py-2" id="seoul-b" role="tabpanel" aria-labelledby="seoul-b-tab">
												<div class="d-flex flex-row flex-wrap">
													<c:forEach var="restCate" items="${restCategory}" varStatus="i">
													    <div class="w-25 pl-4 py-1">
													        <input type="checkbox" class="custom-control-input" id="${restCate}" name="restCategory" value="${restCate.num}">
													        <label class="custom-control-label" for="${restCate}">${restCate.name}</label>
													    </div>
													</c:forEach>
												</div>
												<hr>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<!-- 병원 -->
							<div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
								<div class="pt-3">
								    <b style="font-size:18px;">검색 필터</b>
								    <div class="custom-control custom-radio d-flex justify-content-around py-2">
								        <b>
								            <input type="radio" class="custom-control-input" id="defaultGroupExample3" name="hospitalGroup" value="score" checked>
								            <label class="custom-control-label" for="defaultGroupExample3">평점순</label>
								        </b>
								        <b>
								            <input type="radio" class="custom-control-input" id="defaultGroupExample4" name="hospitalGroup" value="pop">
								            <label class="custom-control-label" for="defaultGroupExample4">인기순</label>
								        </b>
								        <b>
								            <input type="radio" class="custom-control-input" id="defaultGroupExample5" name="hospitalGroup" value="comment">
								            <label class="custom-control-label" for="defaultGroupExample5">댓글수</label>
								        </b>
								    </div>
								    <hr>
								</div>
							
								<!--병원 지역 -->
								<div class="pt-1">
								    <div class="pb-3">
								        <b style="font-size:18px;">지역</b>
									</div>
								
									<ul class="nav nav-tabs" id="myTab" role="tablist">
									    <li class="nav-item">
									        <a class="nav-link active text-dark" style="font-weight: bold;" id="hospital-seoul-b-tab" data-toggle="tab" href="#hospital_gangnam" role="tab" aria-controls="hospital_gangnam"
										    aria-selected="true">서울-강남</a>
										</li>
										<li class="nav-item">
										    <a class="nav-link text-dark" style="font-weight: bold;" id="hospital-seoul-t-tab" data-toggle="tab" href="#hospital_gangbuk" role="tab" aria-controls="hospital_gangbuk"
										    aria-selected="false">서울-강북</a>
										</li>
										<li class="nav-item">
										    <a class="nav-link text-dark" style="font-weight: bold;" id="hospital-gyeonggi-do-tab" data-toggle="tab" href="#hospital_gyeonggi" role="tab" aria-controls="hospital_gyeonggi"
										    aria-selected="false">경기도</a>
										</li>
										<li class="nav-item">
										    <a class="nav-link text-dark" style="font-weight: bold;" id="hospital-busan-tab" data-toggle="tab" href="#hospital_busan" role="tab" aria-controls="hospital_busan"
										    aria-selected="false">부산</a>
										</li>
										<li class="nav-item">
										    <a class="nav-link text-dark" style="font-weight: bold;" id="hospital-jeju-tab" data-toggle="tab" href="#hospital_jeju" role="tab" aria-controls="hospital_jeju"
										               aria-selected="false">제주</a>
										</li>
									</ul>
									<div class="tab-content" id="myTabContent">
										<c:forEach var="locCate" items="${locationCate}" varStatus="i">
											<div class="tab-pane fade custom-control custom-checkbox px-0 py-2 ${i.index == 0 ? 'show active' : ''}" id="hospital_${locCate.key}" role="tabpanel">
												<div class="d-flex flex-row flex-wrap">
													<c:forEach var="loc" items="${locCate.value}" varStatus="j">
														<div class="w-25 pl-4">
															<input type="checkbox" class="custom-control-input" id="hospital_${locCate.key}${j.index}" name="hosLoc" value="${loc}">
															<label class="custom-control-label" for="hospital_${locCate.key}${j.index}">${loc}</label>
														</div>
													</c:forEach>
												</div>
												<hr>
											</div>
										</c:forEach>
										<div class="pt-1">
											<div class="pb-2">
											    <b style="font-size:18px;">진료 과목</b>
											</div>
							                  
											<div class="tab-pane fade show active custom-control custom-checkbox px-0 py-2" id="hospital-seoul-b" role="tabpanel" aria-labelledby="hospital-seoul-b-tab">
												<div class="d-flex flex-row flex-wrap">
													<c:forEach var="medCate" items="${medCategory}" varStatus="i">
														<div class="w-25 pl-4 py-1">
															<input type="checkbox" class="custom-control-input" id="${medCate}" name="medCategory" value="${medCate.num}">
															<label class="custom-control-label" for="${medCate}">${medCate.name}</label>
														</div>
													</c:forEach>
												</div> 
												<hr>
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<!-- 전자제품  -->
							<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
								<div class="pt-3">
								    <b style="font-size:18px;">검색 필터</b>
								    <div class="custom-control custom-radio d-flex justify-content-around py-2">
								        <b>
								            <input type="radio" class="custom-control-input" id="grade7" name="digitalGroup" value="score" checked>
								            <label class="custom-control-label" for="grade7">평점순</label>
								        </b>
								        <b>
								            <input type="radio" class="custom-control-input" id="grade8" name="digitalGroup" value="pop">
								            <label class="custom-control-label" for="grade8">인기순</label>
								        </b>
								        <b>
								            <input type="radio" class="custom-control-input" id="grade9" name="digitalGroup" value="comments">
								            <label class="custom-control-label" for="grade9">댓글수</label>
								        </b>
								    </div>
								    <hr>
								</div>
								<div class="pt-1">
								    <div class="pb-3">
								        <b style="font-size:18px;">분류</b>
									</div>
									
									<ul class="nav nav-tabs" id="myTab" role="tablist">
										<c:forEach var="category1" items="${digitalCategory[0]}" varStatus="i">
										    <li class="nav-item">
										        <a class="nav-link ${i.index == 0 ? 'active' : ''} text-dark" style="font-weight: bold;" id="${category1.name}-tab" data-toggle="tab" href="#${category1.name}" role="tab" aria-controls="${category1.name}"
											    aria-selected="true">${category1.name}</a>
											</li>
										</c:forEach>
									</ul>
									
									<input type="hidden" id="digital_category2_value" name="digiCategory2" value="0">
									<div class="tab-content" id="myTabContent">
										<c:forEach var="category1" items="${digitalCategory[0]}" varStatus="i">
											<div class="tab-pane fade custom-control custom-checkbox px-0 py-2 ${i.index == 0 ? 'show active' : ''}" id="${category1.name}" role="tabpanel">
												<div class="d-flex flex-row flex-wrap">
													<c:forEach var="category2" items="${digitalCategory[1]}" varStatus="i">
														<c:if test="${category2.category1Num eq category1.num}">
															<a class="w-25 px-2 py-2" id="${category2.name}-tab" class="digital_category2" data-toggle="tab" href="#category2_${category2.num}" role="tab"
																onclick="$('#digital_category2_value').val(${category2.num})">
																${category2.name}
															</a>
														</c:if>
													</c:forEach>
												</div>
												<hr>
											</div>
										</c:forEach>
										<div class="pt-1">
											<div class="pb-2">
											    <b style="font-size:18px;">상세분류</b>
											</div>
							                
											<div class="tab-content" id="myTabContent">
											<c:forEach var="category2" items="${digitalCategory[1]}" varStatus="i">
												<div class="tab-pane fade custom-control custom-checkbox px-0 py-2 ${i.index == 0 ? 'show active' : ''}" id="category2_${category2.num}" role="tabpanel">
													<div class="d-flex flex-row flex-wrap">
														<c:forEach var="category3" items="${digitalCategory[2]}" varStatus="j">
															<c:if test="${category3.category2Num eq category2.num}">
																<div class="w-25 pl-4">
																	<input type="checkbox" class="custom-control-input" id="digital_${category3.num}_${j.index}" name="digiCategory3" value="${category3.num}">
																	<label class="custom-control-label" for="digital_${category3.num}_${j.index}">${category3.name}</label>
																</div>
															</c:if>
														</c:forEach>
													</div>
													<hr>
												</div>
											</c:forEach>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
					<button type="submit" class="btn btn-primary">필터적용</button>
		  		</div>
			</form>
		</div>
	</div>
	<script>
// 		function setValue(num) {
// 			$('#digital_category2_value').val(num)
// 		}
	</script>