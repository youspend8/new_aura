<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <!-- 추천 밑 끝 -->
  <!-- Footer -->
  <footer class="page-footer font-small stylish-color-dark pt-6">

    <!-- Footer Links -->
    <div class="container text-center text-md-left">

      <!-- Grid row -->
      <div class="row">

        <!-- Grid column -->
        <div class="col-md-4 mx-auto">

          <!-- Content -->
  
          <img src="/img/logo/whitelogo.png" style="width:150px; ">
          <p></p>
          <p></p>
<!--           <hr style ="border-bottom : solid 0.5px #7f8c8d"> -->
<!--           <p style="color:#7f8c8d">모든 것을 리뷰하는 날까지 All Review는 계속 됩니다.!!</p> -->

        </div>
        <!-- Grid column -->

        <hr class="clearfix w-40 d-md-none">

        <!-- Grid column -->
        <div class="col-md-2 mx-auto">

          <!-- Links -->
          <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color:#7f8c8d">정보</h5>

              <p><a href="#!" style="color:#7f8c8d">회사 소개</a></p>
              
              <p><a href="#!" style="color:#7f8c8d">투자 정보</a></p>
               
              <p><a href="#!" style="color:#7f8c8d">광고 문의</a></p>
 
              <p><a href="#!" style="color:#7f8c8d">All Review 전문리뷰단</a></p>
              
      
        </div>
        <!-- Grid column -->

        <hr class="clearfix w-110 d-md-none">

        <!-- Grid column -->
        <div class="col-md-2 mx-auto">

          <!-- Links -->
          <h5 class="font-weight-bold text-uppercase mt-3 mb-4" style="color:#7f8c8d">주목</h5>

              <p><a href="#!" style="color:#7f8c8d">공지 사항</a></p>
              <p><a href="#!" style="color:#7f8c8d">이용 약관</a></p>
              <p><a href="#!" style="color:#7f8c8d">개인정보처리방침</a></p>
              <p><a href="#!" style="color:#7f8c8d">문의하기</a></p>
       
        </div>
        <!-- Grid column -->

        <hr class="clearfix w-100 d-md-none">

        <!-- Grid column -->
        <div class="col-md-2 mx-3">

    <!-- Social buttons -->
    <ul class="list-unstyled list-inline text-center">
      <li class="list-inline-item">
        <a class="btn-floating btn-fb mx-3">
          <i class="fab fa-facebook-f"> </i>
        </a>
      </li>
      <li class="list-inline-item">
        <a class="btn-floating btn-tw mx-3">
          <i class="fab fa-twitter"> </i>
        </a>
      </li>
    
    </ul>
    <!-- Social buttons -->

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row -->

    </div>
    <!-- Footer Links -->





    <!-- Copyright -->
    <div class="footer-copyright text-center py-3 mt-5">© 2019 Copyright 
      <a href="https://mdbootstrap.com/education/bootstrap/"> All Review.com</a>
    </div>
    <!-- Copyright -->

  </footer>
  <!-- Footer -->

  <script>
    $('.card-jisung').hover(function () {
      $(this).children(".cardcontent").css({
        "height": "80%",
        "opacity": "1",
        "padding-top": "5%",
        "padding-bottom": "5%"
      });
    },
      function () {
        $(this).children(".cardcontent").css({
          "height": "0",
          "opacity": "0",
          "padding-top": "0",
          "padding-bottom": "0"
        });
      });
  </script>
</body>
</html>