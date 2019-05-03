<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <div class="modal" id="modal1">
    	<div class="modal-dialog">
    		<div class="modal-content">
    			<div class="modal-body">
    			</div>
    		</div>
    	</div>
    </div>
    
<!-- Full Height Modal Right -->
<div class="modal fade right" id="fullHeightModalRight" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
  aria-hidden="true">

<!-- modal 오른쪽에 full-hegiht로 띄우기 -->
  <div class="modal-dialog modal-full-height modal-right" role="document">
    <div class="modal-content">
<!--  modal-header  -->
	 <div class="modal-header text-center">
		<!-- Classic tabs -->
  <div class="classic-tabs ">

  <ul class="nav tabs-orange" id="myClassicTabOrange" role="tablist">
   <li class="nav-item ml-3">
      <a class="nav-link waves-light text-center" id="follow-tab-classic-orange" data-toggle="tab" href="#follow-classic-orange"
        role="tab" aria-controls="follow-classic-orange" aria-selected="false"><i class="fas fa-heart fa-2x  pb-2 text-center"
          aria-hidden="true"></i><br>오늘 뭐 봤지</a>
    </li>
    <li class="nav-item">
      <a class="nav-link waves-light text-center" id="awesome-tab-classic-orange" data-toggle="tab" href="#awesome-classic-orange"
        role="tab" aria-controls="awesome-classic-orange" aria-selected="false"><i class="fas fa-star fa-2x pb-2"
          aria-hidden="true"></i><br>즐겨찾기</a>
    </li>
   
    <li class="nav-item">
      <a class="nav-link  waves-light active show text-center" id="profile-tab-classic-orange " data-toggle="tab" href="#profile-classic-orange"
        role="tab" aria-controls="profile-classic-orange" aria-selected="true"><i class="fas fa-user fa-2x pb-2" style="font-size : 10px"
          aria-hidden="true"></i><br>회원수정<br>페이지 이동</a>
    </li>
   </ul>
  </div>
</div>
	
<!-- modal Body -->
     <div class="modal-body">
        <div class="tab-content card" id="myClassicTabContentOrange">
        <div class="tab-pane fade" id="follow-classic-orange" role="tabpanel" aria-labelledby="follow-tab-classic-orange">
	      <p> 오늘 뭐보았지</p>
		</div>
		<div class="tab-pane fade" id="awesome-classic-orange" role="tabpanel" aria-labelledby="awesome-tab-classic-orange">
	         <p> 즐겨찾기 한내용 </p>
	    </div>  

		<div class="tab-pane fade" id="profile-tab-classic-orange" role="tabpanel" aria-labelledby="profile-tab-classic-orange">
	         <p> 즐겨찾기 한내용 </p>
	    </div>  
     </div> 
     </div>
<!-- Classic tabs -->   
<!-- footer 버튼 구성       -->
     <div class="modal-footer justify-content-center">      
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
     </div>
     </div>
    </div>
  </div>
<!-- Full Height Modal Right -->