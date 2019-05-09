<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

  <!-- 추천 밑 끝 -->
  <!-- Footer -->
  <footer class="page-footer font-small stylish-color-dark pt-5">

    <!-- Footer Links -->
    <div class="container text-center text-md-left">

      <!-- Grid row -->
      <div class="row">

        <!-- Grid column -->
        <div class="col-md-4 mx-auto">

          <!-- Content -->
           <img src="/img/logo/noback.jpg" style= "width:200px">
          <h5 class="font-weight-bold text-uppercase mt-3 mb-4">회사 주소</h5>
          <p>비트캠프 서초점 All Review</p>
            

        </div>
        <!-- Grid column -->

        <hr class="clearfix w-100 d-md-none">

        <!-- Grid column -->
        <div class="col-md-2 mx-auto">

          <!-- Links -->
          <h5 class="font-weight-bold text-uppercase mt-3 mb-4">정보</h5>

          <ul class="list-unstyled">
            <li>
              <a href="#!">회사 소개</a>
            </li>
            <li>
              <a href="#!">투자 정보</a>
            </li>
            <li>
              <a href="#!">광고 문의</a>
            </li>
            <li>
              <a href="#!">All Review 전문리뷰단 채용</a>
            </li>
          </ul>

        </div>
        <!-- Grid column -->

        <hr class="clearfix w-100 d-md-none">

        <!-- Grid column -->
        <div class="col-md-2 mx-auto">

          <!-- Links -->
          <h5 class="font-weight-bold text-uppercase mt-3 mb-4">주목</h5>

          <ul class="list-unstyled">
            <li>
              <a href="#!">공지 사항</a>
            </li>
            <li>
              <a href="#!">이용 약관</a>
            </li>
            <li>
              <a href="#!">개인정보처리방침</a>
            </li>
            <li>
              <a href="#!">위치기반 서비스 이용약관</a>
            </li>
              <li>
              <a href="#!">문의하기</a>
            </li>
          </ul>

        </div>
        <!-- Grid column -->

        <hr class="clearfix w-100 d-md-none">

        <!-- Grid column -->
        <div class="col-md-2 mx-auto">

          <!-- Links -->
<!--           <h5 class="font-weight-bold text-uppercase mt-3 mb-4">Links</h5> -->

<!--           <ul class="list-unstyled"> -->
<!--             <li> -->
<!--               <a href="#!">Link 1</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Link 2</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Link 3</a> -->
<!--             </li> -->
<!--             <li> -->
<!--               <a href="#!">Link 4</a> -->
<!--             </li> -->
<!--           </ul> -->

        </div>
        <!-- Grid column -->

      </div>
      <!-- Grid row -->

    </div>
    <!-- Footer Links -->

    <hr>

    <!-- Call to action -->
    <ul class="list-unstyled list-inline text-center py-2">
      <li class="list-inline-item">
        <h5 class="mb-1">Register for free</h5>
      </li>
      <li class="list-inline-item">
        <a href="#!" class="btn btn-danger btn-rounded">Sign up!</a>
      </li>
    </ul>
    <!-- Call to action -->

    <hr>

    <!-- Social buttons -->
    <ul class="list-unstyled list-inline text-center">
      <li class="list-inline-item">
        <a class="btn-floating btn-fb mx-1">
          <i class="fab fa-facebook-f"> </i>
        </a>
      </li>
      <li class="list-inline-item">
        <a class="btn-floating btn-tw mx-1">
          <i class="fab fa-twitter"> </i>
        </a>
      </li>
      <li class="list-inline-item">
        <a class="btn-floating btn-gplus mx-1">
          <i class="fab fa-google-plus-g"> </i>
        </a>
      </li>
      <li class="list-inline-item">
        <a class="btn-floating btn-li mx-1">
          <i class="fab fa-linkedin-in"> </i>
        </a>
      </li>
      <li class="list-inline-item">
        <a class="btn-floating btn-dribbble mx-1">
          <i class="fab fa-dribbble"> </i>
        </a>
      </li>
    </ul>
    <!-- Social buttons -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3">© 2018 Copyright:
      <a href="https://mdbootstrap.com/education/bootstrap/"> MDBootstrap.com</a>
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