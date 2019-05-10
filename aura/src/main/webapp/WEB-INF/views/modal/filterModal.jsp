<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<!-- Modal -->
	<div id="exampleModalPopovers" style="font-size: 15px;" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="exampleModalPopoversLabel">
		<div class="modal-dialog" role="document">
			<form method="GET" action="/ttt">
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
					          </div>
					          <hr>
					      </div>
					
					      <div class="pt-1">
					              <b style="font-size:18px;">1인당 가격</b>
					
					          <!-- Default checked -->
					          <div class="custom-control custom-checkbox d-flex justify-content-around py-2">
					              <b>
					                  <input type="checkbox" class="custom-control-input" id="defaultChecked1"
					                  	name="restPrice" value="0">
					                  <label class="custom-control-label" for="defaultChecked1">만원미만</label>
					              </b>
					              <b>
					                  <input type="checkbox" class="custom-control-input" id="defaultChecked2"
					                  	name="restPrice" value="10000">
					                  <label class="custom-control-label" for="defaultChecked2">1만원대</label>
					              </b>
					              <b>
					                  <input type="checkbox" class="custom-control-input" id="defaultChecked3"
					                  	name="restPrice" value="20000">
					                  <label class="custom-control-label" for="defaultChecked3">2만원대</label>
					              </b>
					              <b>
					                  <input type="checkbox" class="custom-control-input" id="defaultChecked4"
					                  	name="restPrice" value="30000">
					                  <label class="custom-control-label" for="defaultChecked4">3만원대</label>
					              </b>
					          </div>
					          <hr>
					      </div>
					
					      <div class="pt-1 pb-3">
				                  <b style="font-size:18px;">지역</b>
					
					              <ul class="nav nav-tabs" id="myTab" role="tablist">
					                  <li class="nav-item">
					                      <a class="nav-link active text-dark" style="font-weight: bold;" id="seoul-b-tab" data-toggle="tab" href="#seoul-b" role="tab" aria-controls="seoul-b"
					                      aria-selected="true">서울-강남</a>
					                  </li>
					                  <li class="nav-item">
					                      <a class="nav-link text-dark" style="font-weight: bold;" id="seoul-t-tab" data-toggle="tab" href="#seoul-t" role="tab" aria-controls="seoul-t"
					                      aria-selected="false">서울-강북</a>
					                  </li>
					                  <li class="nav-item">
					                      <a class="nav-link text-dark" style="font-weight: bold;" id="gyeonggi-do-tab" data-toggle="tab" href="#gyeonggi-do" role="tab" aria-controls="gyeonggi-do"
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
					                  <!-- <li class="nav-item">
					                      <a class="nav-link text-primary" style="font-weight: bold;" id="more-tab" data-toggle="tab" href="#more" role="tab" aria-controls="more"
					                      aria-selected="false">더보기</a>
					                  </li> -->
					              </ul>
			                    		<div class="tab-content" id="myTabContent">
					                      <div class="tab-pane fade show active custom-control custom-checkbox px-0 py-2" id="seoul-b" role="tabpanel" aria-labelledby="seoul-b-tab">
					                          <table class="w-100">
					                              <tbody>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="garosu">
					                                          <label class="custom-control-label" for="garosu">가로수</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="gangnam">
					                                          <label class="custom-control-label" for="gangnam">강남</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="gangdong-gu">
					                                          <label class="custom-control-label" for="gangdong-gu">강동구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="gaebong-suseo-il-won">
					                                          <label class="custom-control-label" for="gaebong-suseo-il-won">개포/수서/일원</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="gwanak">
					                                          <label class="custom-control-label" for="gwanak">관악구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="gyodae-seocho">
					                                          <label class="custom-control-label" for="gyodae-seocho">교대/서초</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="gulogu">
					                                          <label class="custom-control-label" for="gulogu">구로구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="geumcheongu">
					                                          <label class="custom-control-label" for="geumcheongu">금천구</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="nonhyeondong">
					                                          <label class="custom-control-label" for="nonhyeondong">논현동</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="daechidong">
					                                          <label class="custom-control-label" for="daechidong">대치동</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="dogokdong">
					                                          <label class="custom-control-label" for="dogokdong">도곡동</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="dongjag-sadang">
					                                          <label class="custom-control-label" for="dongjag-sadang">동작/사당</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="deungchon-gangseo">
					                                          <label class="custom-control-label" for="deungchon-gangseo">등촌/강서</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="mogdong-yangcheon">
					                                          <label class="custom-control-label" for="mogdong-yangcheon">목동/양천</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="bangbae-banpo-jam-won">
					                                          <label class="custom-control-label" for="bangbae-banpo-jam-won">방배/반포/잠원</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="bang-idong">
					                                          <label class="custom-control-label" for="bang-idong">방이동</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="samseongdong">
					                                          <label class="custom-control-label" for="samseongdong">삼성동</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="seolaema-eul">
					                                          <label class="custom-control-label" for="seolaema-eul">서래마을</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="songpa-galag">
					                                          <label class="custom-control-label" for="songpa-galag">송파/가락</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="sinsa-abgujeong">
					                                          <label class="custom-control-label" for="sinsa-abgujeong">신사/압구정</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="sincheon-jamsil">
					                                          <label class="custom-control-label" for="sincheon-jamsil">신천/잠실</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="yangjaedong">
					                                          <label class="custom-control-label" for="yangjaedong">양재동</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="yeouido">
					                                          <label class="custom-control-label" for="yeouido">여의도</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="yeogsam-seonleung">
					                                          <label class="custom-control-label" for="yeogsam-seonleung">역삼/선릉</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="yeongdeungpogu">
					                                          <label class="custom-control-label" for="yeongdeungpogu">영등포구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="cheongdamdong">
					                                          <label class="custom-control-label" for="cheongdamdong">청담동</label>
					                                      </th>
					                                  </tr>
					                              </tbody>
					                          </table>
					                          <hr>
					                          
					                  </div>
					
					
					
					
					                      <div class="tab-pane fade custom-control custom-checkbox px-0 py-2" id="seoul-t" role="tabpanel" aria-labelledby="seoul-t-tab">
					                          <table class="w-100">
					                              <tbody>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="geondae-gunja-gwangjin">
					                                          <label class="custom-control-label" for="geondae-gunja-gwangjin">건대/군자/광진</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="gwanghwamun">
					                                          <label class="custom-control-label" for="gwanghwamun">광화문</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="nowongu">
					                                          <label class="custom-control-label" for="nowongu">노원구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="daehaglo-hyehwa">
					                                          <label class="custom-control-label" for="daehaglo-hyehwa">대학로/혜화</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="dongdaemungu">
					                                          <label class="custom-control-label" for="dongdaemungu">동대문구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="dongbu-ichondong">
					                                          <label class="custom-control-label" for="dongbu-ichondong">동부이촌동</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="mapo-gongdeog">
					                                          <label class="custom-control-label" for="mapo-gongdeog">마포/공덕</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="myeongdong-namsan">
					                                          <label class="custom-control-label" for="myeongdong-namsan">명동/남산</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="samcheong-insa">
					                                          <label class="custom-control-label" for="samcheong-insa">삼청/인사</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="sangam-seongsan">
					                                          <label class="custom-control-label" for="sangam-seongsan">상암/성산</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="seodaemungu">
					                                          <label class="custom-control-label" for="seodaemungu">서대문구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="seongbuggu">
					                                          <label class="custom-control-label" for="seongbuggu">성북구</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="suyu-dobong-gangbug">
					                                          <label class="custom-control-label" for="suyu-dobong-gangbug">수유/도봉/강북</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="sicheong-namdaemun">
					                                          <label class="custom-control-label" for="sicheong-namdaemun">시청/남대문</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="sinchon-idae">
					                                          <label class="custom-control-label" for="sinchon-idae">신촌/이대</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="yeonnamdong">
					                                          <label class="custom-control-label" for="yeonnamdong">연남동</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="wangsibli-seongdong">
					                                          <label class="custom-control-label" for="wangsibli-seongdong">왕십리/성동</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="yongsan-sugdae">
					                                          <label class="custom-control-label" for="yongsan-sugdae">용산/숙대</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="eunpyeonggu">
					                                          <label class="custom-control-label" for="eunpyeonggu">은평구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="itaewon-hannamdong">
					                                          <label class="custom-control-label" for="itaewon-hannamdong">이태원/한남동</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="jonglo">
					                                          <label class="custom-control-label" for="jonglo">종로</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="junggu">
					                                          <label class="custom-control-label" for="junggu">중구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="junglanggu">
					                                          <label class="custom-control-label" for="junglanggu">중랑구</label>
					                                      </th>
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="habjeong-mangwon">
					                                          <label class="custom-control-label" for="habjeong-mangwon">합정/망원</label>
					                                      </th>
					                                  </tr>
					                                  <tr style="height: 40px;">
					                                      <th class="w-25 pl-4">
					                                          <input type="checkbox" class="custom-control-input" id="hongdae">
					                                          <label class="custom-control-label" for="hongdae">홍대</label>
					                                      </th>
					                                  </tr>
					                              </tbody>
					                          </table>
					                          <hr>
					                  </div>
					
					
					
					
					                  <div class="tab-pane fade custom-control custom-checkbox px-0 py-2" id="gyeonggi-do" role="tabpanel" aria-labelledby="gyeonggi-do-tab">
					                      <table class="w-100">
					                          <tbody>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="gapyeong-gun">
					                                      <label class="custom-control-label" for="gapyeong-gun">가평군</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="goyangsi">
					                                      <label class="custom-control-label" for="goyangsi">고양시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="gwacheonsi">
					                                      <label class="custom-control-label" for="gwacheonsi">과천시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="gwangmyeongsi">
					                                      <label class="custom-control-label" for="gwangmyeongsi">광명시</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="gwangjusi">
					                                      <label class="custom-control-label" for="gwangjusi">광주시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="gulisi">
					                                      <label class="custom-control-label" for="gulisi">구리시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="gunposi">
					                                      <label class="custom-control-label" for="gunposi">군포시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="gimposi">
					                                      <label class="custom-control-label" for="gimposi">김포시</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="namyangjusi">
					                                      <label class="custom-control-label" for="namyangjusi">남양주시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="dongducheonsi">
					                                      <label class="custom-control-label" for="dongducheonsi">동두천시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="bucheonsi">
					                                      <label class="custom-control-label" for="bucheonsi">부천시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="seongnamsi">
					                                      <label class="custom-control-label" for="seongnamsi">성남시</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="suwonsi">
					                                      <label class="custom-control-label" for="suwonsi">수원시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="siheungsi">
					                                      <label class="custom-control-label" for="siheungsi">시흥시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="ansansi">
					                                      <label class="custom-control-label" for="ansansi">안산시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="anseongsi">
					                                      <label class="custom-control-label" for="anseongsi">안성시</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="anyangsi">
					                                      <label class="custom-control-label" for="anyangsi">안양시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="yangjusi">
					                                      <label class="custom-control-label" for="yangjusi">양주시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="yangpyeonggun">
					                                      <label class="custom-control-label" for="yangpyeonggun">양평군</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="yeojusi">
					                                      <label class="custom-control-label" for="yeojusi">여주시</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="yeoncheongun">
					                                      <label class="custom-control-label" for="yeoncheongun">연천군</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="osansi">
					                                      <label class="custom-control-label" for="osansi">오산시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="yonginsi">
					                                      <label class="custom-control-label" for="yonginsi">용인시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="uiwangsi">
					                                      <label class="custom-control-label" for="uiwangsi">의왕시</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="uijeongbusi">
					                                      <label class="custom-control-label" for="uijeongbusi">의정부시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="icheonsi">
					                                      <label class="custom-control-label" for="icheonsi">이천시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="pajusi">
					                                      <label class="custom-control-label" for="pajusi">파주시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="pyeongtaegsi">
					                                      <label class="custom-control-label" for="pyeongtaegsi">평택시</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="pocheonsi">
					                                      <label class="custom-control-label" for="pocheonsi">포천시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hanamsi">
					                                      <label class="custom-control-label" for="hanamsi">하남시</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hwaseongsi">
					                                      <label class="custom-control-label" for="hwaseongsi">화성시</label>
					                                  </th>
					                              </tr>
					                          </tbody>
					                      </table>
					                      <hr>
					                  </div>
					
					
					
					
					                  <div class="tab-pane fade custom-control custom-checkbox px-0 py-2" id="busan" role="tabpanel" aria-labelledby="busan-tab">
					                      <table class="w-100">
					                          <tbody>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-gangseogu">
					                                      <label class="custom-control-label" for="busan-gangseogu">강서구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-geumjeonggu">
					                                      <label class="custom-control-label" for="busan-geumjeonggu">금정구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-gijanggun">
					                                      <label class="custom-control-label" for="busan-gijanggun">기장군</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-namgu">
					                                      <label class="custom-control-label" for="busan-namgu">남구</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-donggu">
					                                      <label class="custom-control-label" for="busan-donggu">동구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-donglaegu">
					                                      <label class="custom-control-label" for="busan-donglaegu">동래구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-jingu">
					                                      <label class="custom-control-label" for="busan-jingu">진구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-buggu">
					                                      <label class="custom-control-label" for="busan-buggu">북구</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-sasanggu">
					                                      <label class="custom-control-label" for="busan-sasanggu">사상구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-sahagu">
					                                      <label class="custom-control-label" for="busan-sahagu">사하구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-seogu">
					                                      <label class="custom-control-label" for="busan-seogu">서구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-suyeonggu">
					                                      <label class="custom-control-label" for="busan-suyeonggu">수영구</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-yeonjegu">
					                                      <label class="custom-control-label" for="busan-yeonjegu">연제구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-yeongdogu">
					                                      <label class="custom-control-label" for="busan-yeongdogu">영도구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-junggu">
					                                      <label class="custom-control-label" for="busan-junggu">중구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="busan-haeundaegu">
					                                      <label class="custom-control-label" for="busan-haeundaegu">해운대구</label>
					                                  </th>
					                              </tr>
					                          </tbody>
					                      </table>
					                      <hr>
					                  </div>
					
					                  <div class="tab-pane fade custom-control custom-checkbox px-0 py-2" id="jeju" role="tabpanel" aria-labelledby="jeju-tab">
					                      <table class="w-100">
					                          <tbody>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="jeju-moseulpo-hwasun">
					                                      <label class="custom-control-label" for="jeju-moseulpo-hwasun">모슬포/화순</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="jeju-seogwipo">
					                                      <label class="custom-control-label" for="jeju-seogwipo">서귀포</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="jeju-seongsan-udo">
					                                      <label class="custom-control-label" for="jeju-seongsan-udo">성산/우도</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="jeju-jeju">
					                                      <label class="custom-control-label" for="jeju-jeju">제주</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="jeju-jungmundanji">
					                                      <label class="custom-control-label" for="jeju-jungmundanji">중문단지</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="jeju-pyoseon-seongeub">
					                                      <label class="custom-control-label" for="jeju-pyoseon-seongeub">표선/성읍</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="jeju-hanlim-aewol">
					                                      <label class="custom-control-label" for="jeju-hanlim-aewol">한림/애월</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="jeju-hamdeog-gimnyeong">
					                                      <label class="custom-control-label" for="jeju-hamdeog-gimnyeong">함덕/김녕</label>
					                                  </th>
					                              </tr>
					                          </tbody>
					                      </table>
					                      <hr>
					                  </div>
					
					
					                  <!-- <div class="tab-pane fade" id="more" role="tabpanel" aria-labelledby="more-tab">Etsy mixtape
					                      wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack
					                      lo-fi farm-to-table readymade. Messenger bag gen</div> -->
					
					                  <div class="pt-1">
					                          <div class="pb-2">
					                              <b style="font-size:18px;">음식 종류</b>
					                          </div>
					                      
					                          <div class="tab-pane fade show active custom-control custom-checkbox px-0 py-2" id="seoul-b" role="tabpanel" aria-labelledby="seoul-b-tab">
					                                  <table class="w-100">
					                                      <tbody>
					                                          <tr style="height: 40px;">
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="korean-food">
					                                                  <label class="custom-control-label" for="korean-food">한식</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="western-food">
					                                                  <label class="custom-control-label" for="western-food">양식</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="chinese-food">
					                                                  <label class="custom-control-label" for="chinese-food">중식</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="japanese-food">
					                                                  <label class="custom-control-label" for="japanese-food">일식</label>
					                                              </th>
					                                          </tr>
					                                          <tr style="height: 40px;">
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="flour-food">
					                                                  <label class="custom-control-label" for="flour-food">분식</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="cafe">
					                                                  <label class="custom-control-label" for="cafe">카페</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="chicken">
					                                                  <label class="custom-control-label" for="chicken">치킨</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="pizza">
					                                                  <label class="custom-control-label" for="pizza">피자</label>
					                                              </th>
					                                          </tr>
					                                          <tr style="height: 40px;">
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="chinese-house">
					                                                  <label class="custom-control-label" for="chinese-house">중국집</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="pig-food">
					                                                  <label class="custom-control-label" for="pig-food">족발·보쌈</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="lunch">
					                                                  <label class="custom-control-label" for="lunch">도시락</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="fastfood">
					                                                  <label class="custom-control-label" for="fastfood">패스트푸드</label>
					                                              </th>
					                                          </tr>
					                                          <tr style="height: 40px;">
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="franchise">
					                                                  <label class="custom-control-label" for="franchise">프랜차이즈</label>
					                                              </th>
					                                              <th class="w-25 pl-4">
					                                                  <input type="checkbox" class="custom-control-input" id="buffet">
					                                                  <label class="custom-control-label" for="buffet">뷔페</label>
					                                              </th>
					                                          </tr>
					                                      </tbody>
					                                  </table>
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
					                  <input type="radio" class="custom-control-input" id="defaultGroupExample3" name="hospital_group" checked>
					                  <label class="custom-control-label" for="defaultGroupExample3">평점순</label>
					              </b>
					              <b>
					                  <input type="radio" class="custom-control-input" id="defaultGroupExample4" name="hospital_group">
					                  <label class="custom-control-label" for="defaultGroupExample4">인기순</label>
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
					                  <a class="nav-link active text-dark" style="font-weight: bold;" id="hospital-seoul-b-tab" data-toggle="tab" href="#hospital-seoul-b" role="tab" aria-controls="hospital-seoul-b"
					                  aria-selected="true">서울-강남</a>
					              </li>
					              <li class="nav-item">
					                  <a class="nav-link text-dark" style="font-weight: bold;" id="hospital-seoul-t-tab" data-toggle="tab" href="#hospital-seoul-t" role="tab" aria-controls="hospital-seoul-t"
					                  aria-selected="false">서울-강북</a>
					              </li>
					              <li class="nav-item">
					                  <a class="nav-link text-dark" style="font-weight: bold;" id="hospital-gyeonggi-do-tab" data-toggle="tab" href="#hospital-gyeonggi-do" role="tab" aria-controls="hospital-gyeonggi-do"
					                  aria-selected="false">경기도</a>
					              </li>
					              <li class="nav-item">
					                  <a class="nav-link text-dark" style="font-weight: bold;" id="hospital-busan-tab" data-toggle="tab" href="#hospital-busan" role="tab" aria-controls="hospital-busan"
					                  aria-selected="false">부산</a>
					              </li>
					              <li class="nav-item">
					                  <a class="nav-link text-dark" style="font-weight: bold;" id="hospital-jeju-tab" data-toggle="tab" href="#hospital-jeju" role="tab" aria-controls="hospital-jeju"
					                  aria-selected="false">제주</a>
					              </li>
					              <!-- <li class="nav-item">
					                  <a class="nav-link text-primary" style="font-weight: bold;" id="more-tab" data-toggle="tab" href="#more" role="tab" aria-controls="more"
					                  aria-selected="false">더보기</a>
					              </li> -->
					          </ul>
					                <div class="tab-content" id="myTabContent">
					                  <div class="tab-pane fade show active custom-control custom-checkbox px-0 py-2" id="hospital-seoul-b" role="tabpanel" aria-labelledby="hospital-seoul-b-tab">
					                      <table class="w-100">
					                          <tbody>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-garosu">
					                                      <label class="custom-control-label" for="hospital-garosu">가로수</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-gangnam">
					                                      <label class="custom-control-label" for="hospital-gangnam">강남</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-gangdong-gu">
					                                      <label class="custom-control-label" for="hospital-gangdong-gu">강동구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-gaebong-suseo-il-won">
					                                      <label class="custom-control-label" for="hospital-gaebong-suseo-il-won">개포/수서/일원</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-gwanak">
					                                      <label class="custom-control-label" for="hospital-gwanak">관악구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-gyodae-seocho">
					                                      <label class="custom-control-label" for="hospital-gyodae-seocho">교대/서초</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-gulogu">
					                                      <label class="custom-control-label" for="hospital-gulogu">구로구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-geumcheongu">
					                                      <label class="custom-control-label" for="hospital-geumcheongu">금천구</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-nonhyeondong">
					                                      <label class="custom-control-label" for="hospital-nonhyeondong">논현동</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-daechidong">
					                                      <label class="custom-control-label" for="hospital-daechidong">대치동</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-dogokdong">
					                                      <label class="custom-control-label" for="hospital-dogokdong">도곡동</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-dongjag-sadang">
					                                      <label class="custom-control-label" for="hospital-dongjag-sadang">동작/사당</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-deungchon-gangseo">
					                                      <label class="custom-control-label" for="hospital-deungchon-gangseo">등촌/강서</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-mogdong-yangcheon">
					                                      <label class="custom-control-label" for="hospital-mogdong-yangcheon">목동/양천</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-bangbae-banpo-jam-won">
					                                      <label class="custom-control-label" for="hospital-bangbae-banpo-jam-won">방배/반포/잠원</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-bang-idong">
					                                      <label class="custom-control-label" for="hospital-bang-idong">방이동</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-samseongdong">
					                                      <label class="custom-control-label" for="hospital-samseongdong">삼성동</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-seolaema-eul">
					                                      <label class="custom-control-label" for="hospital-seolaema-eul">서래마을</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-songpa-galag">
					                                      <label class="custom-control-label" for="hospital-songpa-galag">송파/가락</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-sinsa-abgujeong">
					                                      <label class="custom-control-label" for="hospital-sinsa-abgujeong">신사/압구정</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-sincheon-jamsil">
					                                      <label class="custom-control-label" for="hospital-sincheon-jamsil">신천/잠실</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-yangjaedong">
					                                      <label class="custom-control-label" for="hospital-yangjaedong">양재동</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-yeouido">
					                                      <label class="custom-control-label" for="hospital-yeouido">여의도</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-yeogsam-seonleung">
					                                      <label class="custom-control-label" for="hospital-yeogsam-seonleung">역삼/선릉</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-yeongdeungpogu">
					                                      <label class="custom-control-label" for="hospital-yeongdeungpogu">영등포구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-cheongdamdong">
					                                      <label class="custom-control-label" for="hospital-cheongdamdong">청담동</label>
					                                  </th>
					                              </tr>
					                          </tbody>
					                      </table>
					                      <hr>
					                      
					              </div>
					
					
					
					
					                  <div class="tab-pane fade custom-control custom-checkbox px-0 py-2" id="hospital-seoul-t" role="tabpanel" aria-labelledby="hospital-seoul-t-tab">
					                      <table class="w-100">
					                          <tbody>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-geondae-gunja-gwangjin">
					                                      <label class="custom-control-label" for="hospital-geondae-gunja-gwangjin">건대/군자/광진</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-gwanghwamun">
					                                      <label class="custom-control-label" for="hospital-gwanghwamun">광화문</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-nowongu">
					                                      <label class="custom-control-label" for="hospital-nowongu">노원구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-daehaglo-hyehwa">
					                                      <label class="custom-control-label" for="hospital-daehaglo-hyehwa">대학로/혜화</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-dongdaemungu">
					                                      <label class="custom-control-label" for="hospital-dongdaemungu">동대문구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-dongbu-ichondong">
					                                      <label class="custom-control-label" for="hospital-dongbu-ichondong">동부이촌동</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-mapo-gongdeog">
					                                      <label class="custom-control-label" for="hospital-mapo-gongdeog">마포/공덕</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-myeongdong-namsan">
					                                      <label class="custom-control-label" for="hospital-myeongdong-namsan">명동/남산</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-samcheong-insa">
					                                      <label class="custom-control-label" for="hospital-samcheong-insa">삼청/인사</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-sangam-seongsan">
					                                      <label class="custom-control-label" for="hospital-sangam-seongsan">상암/성산</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-seodaemungu">
					                                      <label class="custom-control-label" for="hospital-seodaemungu">서대문구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-seongbuggu">
					                                      <label class="custom-control-label" for="hospital-seongbuggu">성북구</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-suyu-dobong-gangbug">
					                                      <label class="custom-control-label" for="hospital-suyu-dobong-gangbug">수유/도봉/강북</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-sicheong-namdaemun">
					                                      <label class="custom-control-label" for="hospital-sicheong-namdaemun">시청/남대문</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-sinchon-idae">
					                                      <label class="custom-control-label" for="hospital-sinchon-idae">신촌/이대</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-yeonnamdong">
					                                      <label class="custom-control-label" for="hospital-yeonnamdong">연남동</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-wangsibli-seongdong">
					                                      <label class="custom-control-label" for="hospital-wangsibli-seongdong">왕십리/성동</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-yongsan-sugdae">
					                                      <label class="custom-control-label" for="hospital-yongsan-sugdae">용산/숙대</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-eunpyeonggu">
					                                      <label class="custom-control-label" for="hospital-eunpyeonggu">은평구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-itaewon-hannamdong">
					                                      <label class="custom-control-label" for="hospital-itaewon-hannamdong">이태원/한남동</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-jonglo">
					                                      <label class="custom-control-label" for="hospital-jonglo">종로</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-junggu">
					                                      <label class="custom-control-label" for="hospital-junggu">중구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-junglanggu">
					                                      <label class="custom-control-label" for="hospital-junglanggu">중랑구</label>
					                                  </th>
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-habjeong-mangwon">
					                                      <label class="custom-control-label" for="hospital-habjeong-mangwon">합정/망원</label>
					                                  </th>
					                              </tr>
					                              <tr style="height: 40px;">
					                                  <th class="w-25 pl-4">
					                                      <input type="checkbox" class="custom-control-input" id="hospital-hongdae">
					                                      <label class="custom-control-label" for="hospital-hongdae">홍대</label>
					                                  </th>
					                              </tr>
					                          </tbody>
					                      </table>
					                      <hr>
					              </div>
					
					
					
					
					              <div class="tab-pane fade custom-control custom-checkbox px-0 py-2" id="hospital-gyeonggi-do" role="tabpanel" aria-labelledby="hospital-gyeonggi-do-tab">
					                  <table class="w-100">
					                      <tbody>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-gapyeong-gun">
					                                  <label class="custom-control-label" for="hospital-gapyeong-gun">가평군</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-goyangsi">
					                                  <label class="custom-control-label" for="hospital-goyangsi">고양시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-gwacheonsi">
					                                  <label class="custom-control-label" for="hospital-gwacheonsi">과천시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-gwangmyeongsi">
					                                  <label class="custom-control-label" for="hospital-gwangmyeongsi">광명시</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-gwangjusi">
					                                  <label class="custom-control-label" for="hospital-gwangjusi">광주시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-gulisi">
					                                  <label class="custom-control-label" for="hospital-gulisi">구리시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-gunposi">
					                                  <label class="custom-control-label" for="hospital-gunposi">군포시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-gimposi">
					                                  <label class="custom-control-label" for="hospital-gimposi">김포시</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-namyangjusi">
					                                  <label class="custom-control-label" for="hospital-namyangjusi">남양주시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-dongducheonsi">
					                                  <label class="custom-control-label" for="hospital-dongducheonsi">동두천시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-bucheonsi">
					                                  <label class="custom-control-label" for="hospital-bucheonsi">부천시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-seongnamsi">
					                                  <label class="custom-control-label" for="hospital-seongnamsi">성남시</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-suwonsi">
					                                  <label class="custom-control-label" for="hospital-suwonsi">수원시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-siheungsi">
					                                  <label class="custom-control-label" for="hospital-siheungsi">시흥시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-ansansi">
					                                  <label class="custom-control-label" for="hospital-ansansi">안산시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-anseongsi">
					                                  <label class="custom-control-label" for="hospital-anseongsi">안성시</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-anyangsi">
					                                  <label class="custom-control-label" for="hospital-anyangsi">안양시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-yangjusi">
					                                  <label class="custom-control-label" for="hospital-yangjusi">양주시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-yangpyeonggun">
					                                  <label class="custom-control-label" for="hospital-yangpyeonggun">양평군</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-yeojusi">
					                                  <label class="custom-control-label" for="hospital-yeojusi">여주시</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-yeoncheongun">
					                                  <label class="custom-control-label" for="hospital-yeoncheongun">연천군</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-osansi">
					                                  <label class="custom-control-label" for="hospital-osansi">오산시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-yonginsi">
					                                  <label class="custom-control-label" for="hospital-yonginsi">용인시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-uiwangsi">
					                                  <label class="custom-control-label" for="hospital-uiwangsi">의왕시</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-uijeongbusi">
					                                  <label class="custom-control-label" for="hospital-uijeongbusi">의정부시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-icheonsi">
					                                  <label class="custom-control-label" for="hospital-icheonsi">이천시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-pajusi">
					                                  <label class="custom-control-label" for="hospital-pajusi">파주시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-pyeongtaegsi">
					                                  <label class="custom-control-label" for="hospital-pyeongtaegsi">평택시</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-pocheonsi">
					                                  <label class="custom-control-label" for="hospital-pocheonsi">포천시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-hanamsi">
					                                  <label class="custom-control-label" for="hospital-hanamsi">하남시</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-hwaseongsi">
					                                  <label class="custom-control-label" for="hospital-hwaseongsi">화성시</label>
					                              </th>
					                          </tr>
					                      </tbody>
					                  </table>
					                  <hr>
					              </div>
					
					              <div class="tab-pane fade custom-control custom-checkbox px-0 py-2" id="hospital-busan" role="tabpanel" aria-labelledby="hospital-busan-tab">
					                  <table class="w-100">
					                      <tbody>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-gangseogu">
					                                  <label class="custom-control-label" for="hospital-busan-gangseogu">강서구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-geumjeonggu">
					                                  <label class="custom-control-label" for="hospital-busan-geumjeonggu">금정구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-gijanggun">
					                                  <label class="custom-control-label" for="hospital-busan-gijanggun">기장군</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-namgu">
					                                  <label class="custom-control-label" for="hospital-busan-namgu">남구</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-donggu">
					                                  <label class="custom-control-label" for="hospital-busan-donggu">동구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-donglaegu">
					                                  <label class="custom-control-label" for="hospital-busan-donglaegu">동래구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-jingu">
					                                  <label class="custom-control-label" for="hospital-busan-jingu">진구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-buggu">
					                                  <label class="custom-control-label" for="hospital-busan-buggu">북구</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-sasanggu">
					                                  <label class="custom-control-label" for="hospital-busan-sasanggu">사상구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-sahagu">
					                                  <label class="custom-control-label" for="hospital-busan-sahagu">사하구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-seogu">
					                                  <label class="custom-control-label" for="hospital-busan-seogu">서구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-suyeonggu">
					                                  <label class="custom-control-label" for="hospital-busan-suyeonggu">수영구</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-yeonjegu">
					                                  <label class="custom-control-label" for="hospital-busan-yeonjegu">연제구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-yeongdogu">
					                                  <label class="custom-control-label" for="hospital-busan-yeongdogu">영도구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-junggu">
					                                  <label class="custom-control-label" for="hospital-busan-junggu">중구</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-busan-haeundaegu">
					                                  <label class="custom-control-label" for="hospital-busan-haeundaegu">해운대구</label>
					                              </th>
					                          </tr>
					                      </tbody>
					                  </table>
					                  <hr>
					              </div>
					
					              <div class="tab-pane fade custom-control custom-checkbox px-0 py-2" id="hospital-jeju" role="tabpanel" aria-labelledby="hospital-jeju-tab">
					                  <table class="w-100">
					                      <tbody>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-jeju-moseulpo-hwasun">
					                                  <label class="custom-control-label" for="hospital-jeju-moseulpo-hwasun">모슬포/화순</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-jeju-seogwipo">
					                                  <label class="custom-control-label" for="hospital-jeju-seogwipo">서귀포</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-jeju-seongsan-udo">
					                                  <label class="custom-control-label" for="hospital-jeju-seongsan-udo">성산/우도</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-jeju-jeju">
					                                  <label class="custom-control-label" for="hospital-jeju-jeju">제주</label>
					                              </th>
					                          </tr>
					                          <tr style="height: 40px;">
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-jeju-jungmundanji">
					                                  <label class="custom-control-label" for="hospital-jeju-jungmundanji">중문단지</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-jeju-pyoseon-seongeub">
					                                  <label class="custom-control-label" for="hospital-jeju-pyoseon-seongeub">표선/성읍</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-jeju-hanlim-aewol">
					                                  <label class="custom-control-label" for="hospital-jeju-hanlim-aewol">한림/애월</label>
					                              </th>
					                              <th class="w-25 pl-4">
					                                  <input type="checkbox" class="custom-control-input" id="hospital-jeju-hamdeog-gimnyeong">
					                                  <label class="custom-control-label" for="hospital-jeju-hamdeog-gimnyeong">함덕/김녕</label>
					                              </th>
					                          </tr>
					                      </tbody>
					                  </table>
					                  <hr>
					              </div>
					
					
					              <!-- <div class="tab-pane fade" id="more" role="tabpanel" aria-labelledby="more-tab">Etsy mixtape
					                  wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack
					                  lo-fi farm-to-table readymade. Messenger bag gen</div> -->
					
					              <div class="pt-1">
					                      <div class="pb-2">
					                          <b style="font-size:18px;">진료 과목</b>
					                      </div>
					                  
					                      <div class="tab-pane fade show active custom-control custom-checkbox px-0 py-2" id="hospital-seoul-b" role="tabpanel" aria-labelledby="hospital-seoul-b-tab">
					                              <table class="w-100">
					                                  <tbody>
					                                      <tr style="height: 40px;">
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="pediatrics">
					                                              <label class="custom-control-label" for="pediatrics">소아청소년과</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="medicine">
					                                              <label class="custom-control-label" for="medicine">내과</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="otorhinolaryngology">
					                                              <label class="custom-control-label" for="otorhinolaryngology">이비인후과</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="dermatology">
					                                              <label class="custom-control-label" for="dermatology">피부과</label>
					                                          </th>
					                                      </tr>
					                                      <tr style="height: 40px;">
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="orthopedics">
					                                              <label class="custom-control-label" for="orthopedics">정형외과</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="dentist">
					                                              <label class="custom-control-label" for="dentist">치과</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="ophthalmology">
					                                              <label class="custom-control-label" for="ophthalmology">안과</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="oriental">
					                                              <label class="custom-control-label" for="oriental">한의원</label>
					                                          </th>
					                                      </tr>
					                                      <tr style="height: 40px;">
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="maternity">
					                                              <label class="custom-control-label" for="maternity">산부인과</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="general-hospital">
					                                              <label class="custom-control-label" for="general-hospital">종합병원</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="urology">
					                                              <label class="custom-control-label" for="urology">비뇨기과</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="anal-surgery">
					                                              <label class="custom-control-label" for="anal-surgery">항문외과</label>
					                                          </th>
					                                      </tr>
					                                      <tr style="height: 40px;">
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="surgery">
					                                              <label class="custom-control-label" for="surgery">외과</label>
					                                          </th>
					                                          <th class="w-25 pl-4">
					                                              <input type="checkbox" class="custom-control-input" id="neurology">
					                                              <label class="custom-control-label" for="neurology">신경과</label>
					                                          </th>
					                                      </tr>
					                                  </tbody>
					                              </table>
					                              <hr>
					                      </div>
					                  </div>
					          </div>
					  </div>
					  </div>
						<div class="tab-pane fade" id="contact" role="tabpanel" aria-labelledby="contact-tab">
							<div class="pt-3">
								<b style="font-size:18px;">검색 필터</b>
								<div class="custom-control custom-radio d-flex justify-content-around py-2">
								    <b>
								        <input type="radio" class="custom-control-input" id="defaultGroupExample5" name="groupOfDefaultRadios">
								        <label class="custom-control-label" for="defaultGroupExample5">평점순</label>
								    </b>
								    <b>
								        <input type="radio" class="custom-control-input" id="defaultGroupExample6" name="groupOfDefaultRadios">
								        <label class="custom-control-label" for="defaultGroupExample6">인기순</label>
								    </b>
								</div>
								<hr>
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