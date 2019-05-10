<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
   <li class="nav-item ml-3" id="todayDo" style="font-color:red">
      <a class="nav-link waves-light text-center" id="follow-tab-classic-orange" data-toggle="tab"  href="/reviewList/modal_review" style="color:#ee5253"
        role="tab" aria-controls="follow-classic-orange" aria-selected="false"><i class="fas fa-heart fa-2x  pb-2 text-center" 
          aria-hidden="true"></i><br>타임라인 </a>
                    
    </li>
    <li class="nav-item"  style="color:yellow">
      <a class="nav-link waves-light text-center" id="awesome-tab-classic-orange" data-toggle="tab" href="/reviewList/modal_review" style="color:#feca57"
        role="tab" aria-controls="awesome-classic-orange" aria-selected="false"><i class="fas fa-star fa-2x pb-2"
          aria-hidden="true"></i><br>즐겨찾기</a>
    </li>
   
   <c:choose>
   <c:when test = "${regLocation eq 1}" >
	    <li class="nav-item" id="modifyHidden" >
	      <a class="nav-link  waves-light active show text-center"  id="profile-tab-classic-orange" data-toggle="modal" data-target="#modalLoginForm" href="#profile-classic-orange"
	        role="tab" aria-controls="profile-classic-orange" aria-selected="true" style="color:#1dd1a1; ">
	        <i class="fas fa-user fa-2x pb-2" aria-hidden="true"></i><br>회원정보수정</a>
	          
	         <!--start-->
	          <div class="modal fade" id="modalLoginForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"aria-hidden="true">
				  <div class="modal-dialog" role="document">
				    <div class="modal-content">
				      <div class="modal-header text-center">
				        <h4 class="modal-title w-100 font-weight-bold">비밀 번호를 입력해주세요</h4>
				      </div>
				      <form method="POST" name="infoCheck" action="/user/modifyInfo"onsubmit="return InfoCheckDouble()">
					      <div class="modal-body mx-3">
	
						
					        <div class="md-form pr-5">
					        	<i class="fas fa-lock prefix grey-text"></i>
					          <input type="password" id="defaultForm-pass" class="form-control">
					        </div>
				     	 </div>
				      <div class="modal-footer d-flex justify-content-center">
				        <button type="submit" class="btn btn-primary btn-block" id="InfoCheck_Modify" >확 인</button>
				      </div>
			     	 </form>
				    </div>
				</div>
			</div>
	        <!--end-->
	    </li>
    </c:when>
    <c:otherwise>
  
    </c:otherwise>
    </c:choose>
    
   </ul>
  </div>
</div>
	
<!-- modal Body -->
     <div class="modal-body">
        <div class="tab-content card" id="myClassicTabContentOrange">
        <div class="tab-pane fade" id="follow-classic-orange" role="tabpanel" aria-labelledby="follow-tab-classic-orange">
		</div>
		<div class="tab-pane fade" id="awesome-classic-orange" role="tabpanel" aria-labelledby="awesome-tab-classic-orange">
	         <p> 즐겨찾기 한내용 </p>
	    </div>  

	
     </div> 
     </div>
<!-- Classic tabs -->   
<!-- footer 버튼 구성       -->
     <div class="modal-footer justify-content-center">      
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="location.href='/user/logout'">로그아웃</button>
     </div>

     </div>
    </div>
  </div>
<!-- Full Height Modal Right -->




<script>

$('#follow-tab-classic-orange').on('click', function(){
	$.ajax({
		url : "/reviewList/modal_review",
		type :"GET",	
		success : function(data){
			$('#myClassicTabContentOrange').empty();

			var span = $('<span>');
			var spanEnd = $('</span>');

			for(var i in data){

				var div = $('<div>');
				div.css({
					'text-align': 'center',
					'font-size': '13px',
					'height': '40px',
					'margin' : '10px auto',
				})
				
				var img = ((data[i].reviewType == 1) ? '<i class="fas fa-share-alt mx-2 green-text"> ': ((data[i].reviewType == 2) ? '<i class="fas fa-star mx-2 amber-text"> ' : '<i class="fas fa-thumbs-up mx-2 cyan-text">'));
				var str = '<b>'+data[i].title +'</b>을 <b>'+ ((data[i].reviewType == 1) ? '공유하기': ((data[i].reviewType == 2) ? '즐겨찾기 ' : '좋아요 '))+'</b>하셨습니다.<br> >> '+ data[i].date;
				div.append(img).append(str);
				$('#myClassicTabContentOrange').append(div);
			}
		},
		error : function(){
			alert("에러발생했습니다")
		}

	});
});
</script>

<script>
$('#awesome-tab-classic-orange').on('click', function(){
	$.ajax({
		url : "/reviewList/modal_review",
		type :"GET",	
		success : function(data){
			var span = $('<span>');
			var spanEnd = $('</span>');
			$('#myClassicTabContentOrange').empty();

			for(var i in data){
				var div = $('<div>');
				div.css({
					'text-align': 'center',
					'font-size': '13px',
					'height': '40px',
					'margin' : '10px auto' ,
				});
				
				if(data[i].reviewType == 2){
					var img =  '<i class="fas fa-star mx-2 amber-text"> ';
					var str = '<b>'+data[i].title +'</b>을 <b>즐겨찾기 </b>하셨습니다.<br> >> '+ data[i].date;
					div.append(img).append(str);
					$('#myClassicTabContentOrange').append(div);
				}else if(data[i].postNum == null){
					var str = '즐겨찾기한 목록이 없습니다.';
					div.append(str);
			    	$('#myClassicTabContentOrange').append(div);
				}			
			}
		},
		error : function(){
			alert("에러발생했습니다")
		}
	
		
	});
});
</script>

<script>
function InfoCheckDouble(){
	$.ajax({
		url : "/user/Infocheck",
		data : {
			password : $('#defaultForm-pass').val()
		},
		type : "POST",
		dataType : "text",
		
		success : function(data){
			if( data == "true"){
				console.log(6);
				checkdata = true;
				return true;	
			}else{
				console.log(7);
				checkdata = false;
				return false;
			}
		}
	})
}


	var checkdata = false;
	$('#defaultForm-pass').keyup(function(){
		InfoCheckDouble();
	})
	$('#InfoCheck_Modify').click(function(){
		if( checkdata == true){
			return true;
		}else{
			alert('틀렷습니다.');
			return false;
		}
	});

</script>



