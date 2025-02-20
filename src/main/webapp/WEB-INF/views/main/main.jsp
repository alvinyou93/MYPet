<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0"/>
<title>Main</title>
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
<script type="text/javascript" defer src="${pageContext.request.contextPath }/resources/script/main.js"></script>
</head>
<body>
	<div>
    <!-- header 시작 -->
	<jsp:include page="../inc/top.jsp"></jsp:include>
    <!-- header 종료 -->

    <!-- ------------------------------- -->
    <!-- 본문 시작 -->
    <!-- ------------------------------- -->
    <!-- 이미지 슬라이드 시작 -->
    <section id="slider" class="carousel slide" data-bs-ride="carousel">
      <!-- 슬라이드 쇼 -->
      <div class="carousel-inner">
        <!-- 사진1 -->
        <div class="carousel-item active">
          <img src="${pageContext.request.contextPath }/resources/img/dog4.jpg" alt="first slide" class="d-block w-100" />
        </div>
        <!-- 사진2 -->
        <div class="carousel-item">
          <img src="${pageContext.request.contextPath }/resources/img/dog6.jpg" alt="second slide" class="d-block w-100" />
          <!-- 글삽입 -->
          <div class="carousel-caption">
            <p>설명글</p>
          </div>
        </div>
        <!-- 사진3 -->
        <div class="carousel-item">
          <img src="${pageContext.request.contextPath }/resources/img/dog5.jpg" alt="third slide" class="d-block w-100" />
          <!-- 버튼삽입 -->
          <div class="carousel-caption">
            <a class="btn btn-lg btn-primary" href="#">버튼</a>
          </div>
        </div>
      </div>
      <!-- 슬라이드 쇼 끝 -->

      <!-- 슬라이드 이동버튼 -->
      <button class="carousel-control-prev" type="button" data-bs-target="#slider" data-bs-slide="prev">
        <span class="carousel-control-prev-icon"></span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#slider" data-bs-slide="next">
        <span class="carousel-control-next-icon"></span>
      </button>

      <!-- 슬라이드 이동버튼 끝 -->
      
      <!-- 슬라이더 위치 표시 -->
      <!-- <div class="carousel-indicators"> <button type="button"
                data-bs-target="#slider" data-bs-slide-to="0" class="active" aria-current="true"
                aria-label="Slide 1"></button> <button type="button" data-bs-target="#slider"
                data-bs-slide-to="1" aria-label="Slide 2"></button> <button type="button"
                data-bs-target="#slider" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div> -->
      <!-- 슬라이더 위치 표시 끝-->
    </section>
    <!-- 이미지 슬라이드 종료-->

    <!-- 검색 창 -->
    <div class="search py-3">
      <div class="container p-2 bg-white">
        <form action="" method="get">
          <div class="d-flex justify-content-around">
            <div class="s-box1 p-2">
              <input type="text" class="search-box1" id="" placeholder="시/도" />
            </div>
            <div class="vr"></div>
            <div class="s-box2 p-2">
              <input type="text" class="search-box2" id="" placeholder="시/군/구" />
            </div>
            <div class="vr"></div>
            <div class="s-box3 p-2">
              <input type="text" class="search-box3" id="" placeholder="읍/면/동" />
            </div>
            <button type="submit" class="btn text-white" style="background-color: #3f51b5">
              <i class="bi bi-search"></i>
            </button>
          </div>
        </form>
      </div>
    </div>
    <!-- 검색 종료 -->

    <!-- 갤러리 -->
    <section class="container">
      <div>
        <h1 class="title text-center m-4 p-3" style="font-weight: bold;">최근 공고</h1>
        <div class="d-flex justify-content-end">
          <a href="find_borad.html">더보기</a> 
        </div>
        <hr>
        <div class="row row-cols-1 row-cols-md-2 row-cols-xl-4 g-3">
          <div class="col">
            <div class="card">
              <img src="${pageContext.request.contextPath }/resources/img/dog1.jpg" class="card-img-top" alt="..." />
              <!-- 북마크 아이콘 -->
              <i class="fa-solid fa-star fa-2x" style="position: absolute; top:10px; left: 10px; color: rgb(245, 211, 22);"></i>
              <div class="card-body">
                <h5 class="card-title">멍멍이 찾습니다.</h5>
                <p class="card-text">부산 전포동/프렌치불독</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                   <a href="#" class="btn text-white" style="background-color: #3f51b5">상세보기</a>
                  </div>
                  <div>
                    <!-- 댓글수, 조회수 아이콘 -->
                    <i class="bi bi-star-fill"></i>  1 
                    <i class="bi bi-chat-dots"></i> 0
                    <i class="bi bi-eye-fill"></i>  1 
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="https://cdn.pixabay.com/photo/2017/11/02/15/20/dog-2911444_960_720.jpg" class="card-img-top"
                alt="..." />
              <i class="fa-regular fa-star fa-2x" style="position: absolute; top:10px; left: 10px; color: rgba(245, 212, 22, 0.788);"></i>
              <div class="card-body">
                <h5 class="card-title">멍멍이 찾습니다.</h5>
                <p class="card-text">부산 광안동/견종모름</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div>
                   <a href="#" class="btn text-white" style="background-color: #3f51b5">상세보기</a>
                  </div>
                  <div>
                    <!-- 댓글수, 조회수 아이콘 -->
                    <i class="fa-regular fa-star"> 5 </i>
                    <i class="fa-regular fa-comment-dots"> 1 </i>
                    <i class="fa-regular fa-eye"> 12 </i>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="${pageContext.request.contextPath }/resources/img/dog6.jpg" class="card-img-top" alt="..." />
              <i class="fa-regular fa-star fa-2x" style="position: absolute; top:10px; left: 10px; color: rgba(245, 212, 22, 0.788);"></i>
              <div class="card-body">
                <h5 class="card-title">멍멍이 찾습니다.</h5>
                <p class="card-text">부산 전포동/요크셔테리안</p>
                <a href="#" class="btn text-white" style="background-color: #3f51b5">상세보기</a>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="${pageContext.request.contextPath }/resources/img/dog1.jpg" class="card-img-top" alt="..." />
              <i class="fa-regular fa-star fa-2x" style="position: absolute; top:10px; left: 10px; color: rgba(245, 212, 22, 0.788);"></i>
              <div class="card-body">
                <h5 class="card-title">멍멍이 찾습니다.</h5>
                <p class="card-text">부산 전포동/프렌치불독</p>
                <a href="#" class="btn text-white" style="background-color: #3f51b5">상세보기</a>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="https://cdn.pixabay.com/photo/2017/11/02/15/20/dog-2911444_960_720.jpg" class="card-img-top"
                alt="..." />
              <i class="fa-regular fa-star fa-2x" style="position: absolute; top:10px; left: 10px; color: rgba(245, 212, 22, 0.788);"></i>
              <div class="card-body">
                <h5 class="card-title">멍멍이 찾습니다.</h5>
                <p class="card-text">부산 광안동/견종모름</p>
                <a href="#" class="btn text-white" style="background-color: #3f51b5">상세보기</a>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="${pageContext.request.contextPath }/resources/img/dog6.jpg" class="card-img-top" alt="..." />
              <i class="fa-regular fa-star fa-2x" style="position: absolute; top:10px; left: 10px; color: rgba(245, 212, 22, 0.788);"></i>
              <div class="card-body">
                <h5 class="card-title">멍멍이 찾습니다.</h5>
                <p class="card-text">부산 전포동/요크셔테리안</p>
                <a href="#" class="btn text-white" style="background-color: #3f51b5">상세보기</a>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="${pageContext.request.contextPath }/resources/img/dog6.jpg" class="card-img-top" alt="..." />
              <i class="fa-regular fa-star fa-2x" style="position: absolute; top:10px; left: 10px; color: rgba(245, 212, 22, 0.788);"></i>
              <div class="card-body">
                <h5 class="card-title">멍멍이 찾습니다.</h5>
                <p class="card-text">부산 전포동/요크셔테리안</p>
                <a href="#" class="btn text-white" style="background-color: #3f51b5">상세보기</a>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="${pageContext.request.contextPath }/resources/img/dog1.jpg" class="card-img-top" alt="..." />
              <i class="fa-regular fa-star fa-2x" style="position: absolute; top:10px; left: 10px; color: rgba(245, 212, 22, 0.788);"></i>
              <div class="card-body">
                <h5 class="card-title">멍멍이 찾습니다.</h5>
                <p class="card-text">부산 전포동/프렌치불독</p>
                <a href="#" class="btn text-white" style="background-color: #3f51b5">상세보기</a>
              </div>
            </div>
          </div>
        </div>
        <div class="d-flex mt-1 justify-content-end">
          <a href="find_borad.html">더보기</a> 
        </div>
        <hr id="divider" />
      </div>
      
    </section>
    <!-- 갤러리 끝 -->

    <!-- 중간 캠페인 시작-->
    <section class="campaign" style="margin: 80px auto;">
      <p class="campaign-text">
        거리의 <br>
        동물들에게 <br>  
        관심을<br> 
        가져주세요
      </p>
    </section>
    <!-- 중간 캠페인 종료 -->

    <!-- 공동구매 소개 시작 -->
    <section class="container py-3">
      <h1 class="title text-start mt-3 p-3">진행중인 공동구매</h1>
      <hr class="my-5">
      <div class="row">
        <!-- 가로 12등분 -->
        <div class="col-sm-5">
          <!-- 가로크기 4/12 -->
          <img
            src="https://shop-phinf.pstatic.net/20201228_290/1609112167826pkx0d_JPEG/10247995466374241_827126827.jpg?type=m510"
            class="img-thumbnail" alt="강아지 사료" />
        </div>
        <div class="col-sm-7">
          <!-- 가로크기 8/12 -->
          <h3>강아지 사료</h3>
          <p>
            It is a long established fact that a reader will be distracted by the readable
            content of a page when looking at its layout. The point of using Lorem Ipsum is
            that it has a more-or-less normal distribution of letters
          </p>
          <div class="progress">
            <div class="progress-bar" style="width: 15%; background-color: #3f51b5;" > 20명</div>
            <div class="progress-bar progress-bar-striped progress-bar-animated .active bg-success" role="progressbar" style="width: 85%"></div>
          </div>
          <br>
          <button type="button" class="btn text-white" style="background-color: #3f51b5">
            구매하러가기
          </button>
        </div>
      </div>
    </section>
    <!-- 공동구매 소개 종료 -->

    <div class="">
      <p>광고</p>
    </div>

    <!-- ABOUT US -->
    <section class="container py-3" id="main-about-ksk">
      <h1 class="title text-end mt-3 p-3">ABOUT US</h1>
      <hr class="my-5">
      <div class="row">
        <div class="col-sm-8">
          <p>
            It is a long established fact that a reader will be distracted by the readable
            content of a page when looking at its layout. The point of using Lorem Ipsum is
            that it has a more-or-less normal distribution of letters
          </p>
        </div>
        <div class="col-sm-4">
          <img src="${pageContext.request.contextPath }/resources/img/dog2.jpg" class="img-fluid" alt="" />
        </div>
      </div>
      <p></p>
    </section>

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