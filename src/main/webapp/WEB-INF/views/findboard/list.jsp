<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>       
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>실종공고</title>
<!-- css스타일 적용 -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/main.css" />
<!-- 부트스트랩 적용 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
  integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
<!-- 부트스트랩 아이콘 -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css" />
<!-- font awesome -->
<script src="https://kit.fontawesome.com/203a25fbbd.js" crossorigin="anonymous"></script>
<!-- JQuery -->
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/script/jquery-3.6.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/resources/script/main.js"></script>
<style>
#nav-fboard-ksk {
     font-weight: bold;
}
</style>
</head>

<body>
<div>
<!-- header 시작 -->
<jsp:include page="../inc/top.jsp"></jsp:include>
<!-- header 종료 -->

<!-- ------------------------------- -->
<!-- 본문 시작-->
<!-- ------------------------------- -->
<!-- 제목 시작 -->
<div class="container">
  <h1 class="sub-title">실종공고</h1>
  <hr>
</div>
<!-- 제목 종료 -->

<div class="container mt-5 p-2" id="find-board">
	<!-- 신고글쓰기버튼 -->
	<div class="row p-3">
	    <div class="col-12">
	        <a href="글작성주소" class="btn float-end" style="border-color: #3f51b5;">실종신고</a>
	    </div>
	</div>
	<!-- 메인 -->
    <div class="row">
       
       <!-- 지도 api가져올 자리 -->
       <div class="mb-3 col-md-12 col-lg-7" id="map-frame-ksk" style="z-index: 2;">
         <div class="sticky-lg-top" style="top: 9rem;">
           <iframe 
               src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3162.111677235935!2d126.97473421573828!3d37.575987879796195!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357ca2eaa19c763d%3A0xb28a32722d675764!2z6rSR7ZmU66y4KEd3YW5naHdhbXVuIEdhdGUp!5e0!3m2!1sko!2skr!4v1481946656451"
               id="map-ksk"
               allowfullscreen="allowfullscreen"
              ></iframe>
           <!-- <div id="map" style="width:500px;height:400px;"></div>                            -->
         </div>
       </div><!-- 지도 api가져올 자리 -->
       
       <div class="mb-3 col-md-12 col-lg-5" id="finder-photo">
       
	       <!-- 검색창 시작 ajax -->
	       <div class="pt-3 d-flex justify-content-center gap-3">
	           <div class="">
	               <input type="text" class="form-control" id="" value="" placeholder="내 주변 검색">
	           </div>
	           <div class="">
	               <button type="submit" class="btn text-white" style="background-color: #3f51b5;">
	                   <i class="bi bi-search"></i>
	               </button>
	           </div>
	       </div>
	       <div class="form-check d-flex justify-content-center p-3">
	           <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
	           <label class="form-check-label" for="flexCheckDefault">미해결 공고만 보기</label>
	       </div>
	       <!-- 검색창 종료-->
	       
	       <!-- 간략히보기 시작 5개씩 -->
	       <div class="row">
	           <div class="col-12 col-sm-7 position-relative">
	               <!-- 이미지 슬라이더로 교체? -->
	               <a href="#">
	                <img class="img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/dog1.jpg" alt="실종동물사진" id="petfider-img-ksk">
	               </a>
	               <i class="bi bi-star-fill" style="position: absolute; left: 20px; font-size: 2rem; color: rgb(245, 211, 22);"></i>
	           </div>
	           <div class="col-12 col-sm-5" id="find-info-ksk">
	               <div class="row p-2">
	                 <div class="col-6 col-sm-12">
	                   <h4>부산</h4>
	                 </div>
	                 <div class="col-6 col-sm-12">
	                   <h3>전포동</h3>
	                 </div>
	                 <div class="p-1 col-6 col-sm-12"><i class="bi bi-tags-fill"></i> 강아지/수컷/3살</div>
	                 <div class="p-1 col-6 col-sm-12"><i class="bi bi-calendar3"></i> 2022.03.16</div>
	                 <div class="p-1 col-6 col-sm-12"><i class="bi bi-geo-alt"></i> 전포초등학교 부근 </div>
	                 <div class="p-1 col-6 col-sm-12"><i class="bi bi-coin"></i> 사례금 : 20만원</div>
	               </div>
	           </div>
	       </div>
	       <hr style="z-index: 1;">
	
	       <div class="row">
	         <div class="col-12 col-sm-7 position-relative">
	             <a href="#">
	               <img class="img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/dog2.jpg" alt="실종동물사진" id="petfider-img-ksk">
	             </a>
	             <i class="bi bi-star" style="position: absolute; left: 20px; font-size: 2rem; color: rgb(245, 211, 22);"></i>
	         </div>
	         <div class="col-12 col-sm-5">
	             <h3>부산</h3>
	             <h3>전포동</h3>
	             <ul>
	                 <li>강아지/수컷/3살</li>
	                 <li>2022.03.16</li>
	                 <li>전포초등학교 부근</li>
	                 <li>사례금 : 20만원</li>
	             </ul>
	         </div>
	       </div>
	       <hr style="z-index: 1;">
	       <div class="row">
	         <div class="col-12 col-sm-7">
	             <!-- 이미지 슬라이더로 교체? -->
	             <img class="img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/dog3.jpg" alt="실종동물사진" id="petfider-img-ksk">
	             <h5></h5>
	         </div>
	         <div class="col-12 col-sm-5">
	             <h3>부산</h3>
	             <h3>전포동</h3>
	             <ul>
	                 <li>강아지/수컷/3살</li>
	                 <li>2022.03.16</li>
	                 <li>전포초등학교 부근</li>
	                 <li>사례금 : 20만원</li>
	             </ul>
	         </div>
	       </div>
	       <hr style="z-index: 1;">
	       <div class="row">
	         <div class="col-12 col-sm-7">
	             <!-- 이미지 슬라이더로 교체? -->
	             <img class="img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/dog4.jpg" alt="실종동물사진" id="petfider-img-ksk">
	             <h5></h5>
	         </div>
	         <div class="col-12 col-sm-5">
	             <h3>부산</h3>
	             <h3>전포동</h3>
	             <ul>
	                 <li>강아지/수컷/3살</li>
	                 <li>2022.03.16</li>
	                 <li>전포초등학교 부근</li>
	                 <li>사례금 : 20만원</li>
	             </ul>
	         </div>
	       </div>
	       <hr style="z-index: 1;">
	       <div class="row">
	         <div class="col-12 col-sm-7">
	             <!-- 이미지 슬라이더로 교체? -->
	             <img class="img-fluid rounded" src="${pageContext.request.contextPath }/resources/img/dog5.jpg" alt="실종동물사진" id="petfider-img-ksk">
	             <h5></h5>
	         </div>
	         <div class="col-12 col-sm-5">
	             <h3>부산</h3>
	             <h3>전포동</h3>
	             <ul>
	                 <li>강아지/수컷/3살</li>
	                 <li>2022.03.16</li>
	                 <li>전포초등학교 부근</li>
	                 <li>사례금 : 20만원</li>
	             </ul>
	         </div>
	       </div>
	       <hr style="z-index: 1;">
	       <!-- 페이징 -->
	       <div class="text-center">
             <nav aria-label="pagination">
               <ul class="pagination pagination-sm justify-content-center">
                 <li class="page-item">
                   <a class="page-link" href="#" aria-label="Previous">
                     <span aria-hidden="true">&laquo;</span>
                   </a>
                 </li>
                 <li class="page-item"><a class="page-link" href="#">1</a></li>
                 <li class="page-item"><a class="page-link" href="#">2</a></li>
                 <li class="page-item"><a class="page-link" href="#">3</a></li>
                 <li class="page-item"><a class="page-link" href="#">4</a></li>
                 <li class="page-item"><a class="page-link" href="#">5</a></li>
                 <li class="page-item">
                   <a class="page-link" href="#" aria-label="Next">
                     <span aria-hidden="true">&raquo;</span>
                   </a>
                 </li>
               </ul>
             </nav>
           </div>
       </div>
   </div>
</div>

<div class="container mt-5">
    <div class="row">
        <div class="col-sm-4">
            <h2>About Me</h2>
            <h5>Photo of me:</h5>
            <div class="fakeimg">Fake Image</div>
            <p>Some text about me in culpa qui officia deserunt mollit anim..</p>
            <hr class="d-sm">

            <h3 class="mt-4">참고 링크</h3>

            <p>Lorem ipsum dolor sit ame.</p>
            <ul class="nav nav-pills flex-column">
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
            </ul>

        </div>
        <div class="col-sm-8">
            <h2>실종시 대처방법
            </h2>
            <h5>Title description</h5>
            <p>Some text..</p>
            <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur
                adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>

            <h2 class="mt-5">구조시 대처방법</h2>
            <h5>Title description</h5>
            <p>Some text..</p>
            <p>Sunt in culpa qui officia deserunt mollit anim id est laborum consectetur
                adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna
                aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco.</p>
        </div>
    </div>
</div>

<!-- ------------------------------- -->
<!-- 본문 종료-->
<!-- ------------------------------- -->

<!-- footer 시작 -->
<jsp:include page="../inc/bottom.jsp"></jsp:include>
<!-- footer 종료 -->
</div>
<!-- 부트스트랩 스크립트 적용 -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
  integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
  crossorigin="anonymous">
</script>
</body>
</html>