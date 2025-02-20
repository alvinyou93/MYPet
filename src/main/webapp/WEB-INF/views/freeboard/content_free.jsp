<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>     
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>main</title>
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
  <script src="js/jquery-3.6.0.js"></script>
  <!-- Slick -->
  <script src="js/slick.js"></script>
  <!-- Slick CSS -->
  <link rel="stylesheet" href="css/slick.css">
  <link rel="stylesheet" href="css/slick-theme.css" />


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
            <div class="container justify-content-center">
                <h1 class="sub-title">상세페이지</h1>

            </div>
            <!-- 제목 종료 -->
            <hr>
            <!-- 검색창 시작 -->
            <form action="" method="get"></form>

        </div>
        <!-- 검색창 종료-->

        <!-- 수정 삭제 목록 -->
        <div
            class="col-11 d-flex justify-content-end align-items-center flex-wrap gap-2">
            
            <c:if test="${ ! empty sessionScope.id }">

				<c:if test="${sessionScope.id eq boardDTO.name}">
            <button
                type="button"
                class="btn btn-outline-primary "
                onclick="location.href='${pageContext.request.contextPath }/freeboard/listUpdate_free?num=${boardDTO.num}'">수정</button>
            <button
                type="button"
                class="btn btn-outline-primary "
                onclick="location.href='${pageContext.request.contextPath }/freeboard/listdelete_free?num=${boardDTO.num}'">삭제</button>
                </c:if>
	
			</c:if>
            <button
                type="button"
                class="btn btn-outline-primary "
                onclick="location.href='${pageContext.request.contextPath }/freeboard/list_free'">목록</button>
        </div>
        <!-- 수정삭제 목록 버튼 끝 -->

        <!-- SNS버튼 시작 -->
        <div
            class="col-11d-flex justify-content-end align-items-center flex-wrap gap-2"
            style="width: 100%; text-align: right; margin-bottom: 2px;">
            <!-- 페이스북 공유 버튼 -->
            <a
                href=""
                onclick="window.open(url_combine_fb, '', 'scrollbars=no, width=600, height=600');">
                <img
                    src="../img/face.png"
                    title="페이스북으로 공유하기"
                    class="sharebtn_custom"
                    style="width: 32px;"></a>

            <!-- 트위터 공유 버튼 -->
            <a
                href=""
                onclick="window.open(url_combine_tw, '', 'scrollbars=no, width=600, height=600'); ">
                <img
                    src="../img/twit.png"
                    title="트위터로 공유하기"
                    class="sharebtn_custom"
                    style="width: 32px;"></a>

            <!-- 카카오 스토리 공유 버튼 -->
            <a
                href=""
                onclick="window.open(url_combine_ks, '', 'scrollbars=no, width=600, height=600'); "><img
                src="../img/kakaop.jpg"
                title="카카오스토리로 공유하기"
                class="sharebtn_custom"
                style="width: 32px;"></a>
        </div>
        <!-- SNS버튼 끝 -->
        <br>

        <!-- 이미지 슬라이드 시작 -->
        <div >
            <!-- <div
                id="carouselExampleIndicators"
                class="carousel slide"
                data-bs-ride="carousel"
                style="width: 1500px; "
                > -->
            <div
                id="carouselExampleIndicators"
                class="carousel slide"
                data-bs-ride="carousel"
                >
                <div class="carousel-indicators">
                    <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="0"
                        class="active"
                        aria-current="true"
                        aria-label="Slide 1"></button>
                    <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="1"
                        aria-label="Slide 2"></button>
                    <button
                        type="button"
                        data-bs-target="#carouselExampleIndicators"
                        data-bs-slide-to="2"
                        aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img
                            src="img/dog1.jpg"
                            class="d-block w-50  img-responsive center-block"
                            style=" margin: 0 auto; height: auto;"
                            alt="...">
                    </div>
                    <div class="carousel-item">
                        <img
                            src="img/dog2.jpg"
                            class="d-block w-50 img-responsive center-block"
                            style=" margin: 0 auto; height: auto;"
                            alt="...">
                    </div>
                    <div class="carousel-item">
                        <img
                            src="img/dog3.jpg"
                            class="d-block w-50 img-responsive center-block"
                            style=" margin: 0 auto; height: auto;"
                            alt="...">
                    </div>
                </div>

                <button
                    class="carousel-control-prev carousel-dark"
                    type="button"
                    data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button
                    class="carousel-control-next carousel-dark"
                    type="button"
                    data-bs-target="#carouselExampleIndicators"
                    data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>

            </div>
        </div>
        <!-- 슬라이드 쇼 끝 -->
        <!-- 글 -->
        <br>
        <div class="row text-center justify-content-center">
            <div class="col-md-10 col-xl-8 col-12 " style="margin-top: 10px;">
                <table id="notice">
				<tr><td>글번호</td><td>${boardDTO.num}</td>
				     <td>글쓴날짜</td><td>${boardDTO.date}</td></tr>
				<tr><td>글쓴이</td><td>${boardDTO.name}</td>
				    <td>조회수</td><td>${boardDTO.readcount}</td></tr>
				<tr><td>글제목</td><td colspan="3">${boardDTO.subject}</td></tr>
				<tr><td>파일</td><td colspan="3">
				<a href="${pageContext.request.contextPath }/resources/upload/${boardDTO.file}" download>
				${boardDTO.file}</a></td></tr>
				<tr><td>글내용</td><td colspan="3">${boardDTO.content}</td></tr>
				</table>
            </div>
        </div>
        <!-- 글끝 -->

        <!-- 제보 버튼 -->
        <div style="text-align: center; margin-bottom: 10px">
            <span
                class="btn btn-primary"
                role="button"
                style="color: white"
                 data-toggle="modal"
                 data-target="#exampleModal"
                onclick="report()">제보하기</span>
            <p class="arrow_box">연락수단 확인하고 글쓴이에게 제보하기!</p>
        </div>
        <!-- 제보버튼 끝 -->
        <!-- Modal -->
		<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLongTitle">Modal title</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        ...
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary">Save changes</button>
		      </div>
		    </div>
		  </div>
		</div>

        <!-- <div class="row">-->
        <!-- <div class="col-md-12 col-xl-8">-->
        <!-- <img class="img-fluid rounded" src="/sample/img/dog2.jpg" alt="">-->
        <!-- <h5></h5>-->
        <!-- </div>-->
        <!-- <div class="col-md-12 col-xl-4">-->

        <!-- </div>-->
        <!-- </div>-->
        <!-- <div class="row">-->
        <!-- <div class="col-md-12 col-xl-8">-->
        <!-- <h5></h5>-->
        <!-- </div>-->
        <!-- <div class="col-md-12 col-xl-4">-->

        <!-- </div>-->
        <!-- </div>-->
        <!-- <div class="row">-->
        <!-- <div class="col-md-12 col-xl-8">-->
        <!-- <img class="img-fluid rounded" src="/sample/img/dog4.jpg" alt="">-->
        <!-- <h5></h5>-->
        <!-- </div>-->
        <!-- <div class="col-md-12 col-xl-4">-->

        <!-- </div>-->
        <!-- </div>-->
        <!-- <div class="row">-->
        <!-- <div class="col-md-12 col-xl-8">-->
        <!-- <img class="img-fluid rounded" src="/sample/img/dog5.jpg" alt="">-->
        <!-- <h5></h5>-->
        <!-- </div>-->
        <!-- <div class="col-md-12 col-xl-4">-->

        <!-- </div>-->
        <!-- </div>-->
        <!-- -->
        <!-- </div>-->
        <!-- </div>-->
    </div>
    <!-- <div id="form-commentInfo-kj">-->
    <!-- <div id="comment-count-kj">댓글 <span id="count-kj">0</span></div>-->
    <!-- <input id="comment-input-kj" placeholder="댓글을 입력해 주세요.">-->
    <!-- <button id="submit-kj">등록</button>-->
    <!-- </div>-->
    <!-- <div id=comments-kj></div>-->

    <section class="container mb-7 text-center">
        <div class="card bg-light" style="margin-top: 30px">
            <div class="card-body">
                <!-- Comment form-->
                <!-- <form class="mb-4"><textarea class="form-control" rows="3"-->
                <!-- placeholder="댓글을 입력해 주세요!"></textarea>-->
                <!-- </form>-->
                <!-- 댓글수, 조회수 아이콘 -->
                <i class="bi bi-star-fill"></i>
                1
                <i class="bi bi-chat-dots"></i>
                0
                <i class="bi bi-eye-fill"></i>
                1
                <div class="in-line-kj">

                    <input type="text" id="name-kj" placeholder="댓글을 입력해 주세요!">&nbsp;
                    <button
                        type="button"
                        class="btn btn-outline-primary "
                        onclick="location.href=''">등록</button>
                </div>
                <!-- <div class="input-group mb-3"> <input type="text" class="form-control"
                placeholder="Recipient's username" aria-label="Recipient's username"
                aria-describedby="button-addon2"> <button class="btn btn-outline-secondary"
                type="button" id="button-addon2">Button</button> </div> -->
                <div class="justify-content-center container mx-5">
                    <div class="d-flex mb-4 ">
                        <div class="flex-shrink-0"><img
                            class="rounded-circle"
                            src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
                            alt="..."></div>
                        <div class="ms-3">
                            <div class="fw-bold">익명1<p style="font-size: x-small;">2022.03.30</p></div>
                            꼭 찾으셧으면 좋겟어요 ㅠㅠ

                            <div class="d-flex mt-4 ">
                                <div class="flex-shrink-0"><img
                                    class="rounded-circle"
                                    src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
                                    alt="..."></div>
                                <div class="ms-3">
                                    <div class="fw-bold">익명2</div><p style="font-size: x-small;">2022.03.30</p>
                                    그러게요 ㅠㅠ
                                </div>
                            </div>
                            <!-- Child comment 2-->
                            <div class="d-flex mt-4 mx-5">
                                <div class="flex-shrink-0"><img
                                    class="rounded-circle"
                                    src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
                                    alt="..."></div>
                                <div class="ms-3">
                                    <div class="fw-bold">익명3</div><p style="font-size: x-small;">2022.03.30</p>
                                    33
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Single comment-->
                    <div class="row-vh d-flex flex-row">
                        <div class="flex-shrink-0"><img
                            class="rounded-circle"
                            src="https://dummyimage.com/50x50/ced4da/6c757d.jpg"
                            alt="..."></div>
                        <div class="ms-3 row">
                            <div class="fw-bold">글작성자</div><p style="font-size: x-small;">2022.03.30</p>
                            찾았습니다!! 감사합니다!!
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- <div class="container mt-5">-->
    <!-- <div class="row">-->
    <!-- <div class="col-sm-4">-->
    <!-- <h2>About Me</h2>-->
    <!-- <h5>Photo of me:</h5>-->
    <!-- <div class="fakeimg">Fake Image</div>-->
    <!-- <p>Some text about me in culpa qui officia deserunt mollit anim..</p>-->
    <!-- <hr class="d-sm">-->

    <!-- <h3 class="mt-4">참고 링크</h3>-->

    <!-- <p>Lorem ipsum dolor sit ame.</p>-->
    <!-- <ul class="nav nav-pills flex-column">-->
    <!-- <li class="nav-item">-->
    <!-- <a class="nav-link" href="#">Link</a>-->
    <!-- </li>-->
    <!-- <li class="nav-item">-->
    <!-- <a class="nav-link" href="#">Link</a>-->
    <!-- </li>-->
    <!-- <li class="nav-item">-->
    <!-- <a class="nav-link" href="#">Link</a>-->
    <!-- </li>-->
    <!-- <li class="nav-item">-->
    <!-- <a class="nav-link" href="#">Link</a>-->
    <!-- </li>-->
    <!-- </ul>-->

    <!-- </div>-->
    <!-- <div class="col-sm-8">-->
    <!-- <h2>실종시 대처방법 </h2>-->
    <!-- <h5>Title description</h5>-->
    <!-- <p>Some text..</p>-->
    <!-- <p>Sunt in culpa qui officia deserunt mollit anim id est laborum
    consectetur adipiscing-->
    <!-- elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
    enim ad-->
    <!-- minim veniam, quis nostrud exercitation ullamco.</p>-->

    <!-- <h2 class="mt-5">구조시 대처방법</h2>-->
    <!-- <h5>Title description</h5>-->
    <!-- <p>Some text..</p>-->
    <!-- <p>Sunt in culpa qui officia deserunt mollit anim id est laborum
    consectetur adipiscing-->
    <!-- elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
    enim ad-->
    <!-- minim veniam, quis nostrud exercitation ullamco.</p>-->
    <!-- </div>-->
    <!-- </div>-->
    <!-- </div>-->




 <!-- 게시판 끝 -->
        
    <!-- ------------------------------- -->
    <!-- 본문 종료-->
    <!-- ------------------------------- -->

         <!-- footer 시작 -->
  	<jsp:include page="../inc/bottom.jsp"></jsp:include>
    <!-- footer 종료 -->
  

<script src="js/main.js"></script>
<!-- 부트스트랩 스크립트 적용 -->
<script
src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
crossorigin="anonymous"></script>

<!-- SNS 공유용 주소 연결 JS -->
<script type="text/javascript" async="async">
var url_default_ks = "https://story.kakao.com/share?url=";
var url_default_fb = "https://www.facebook.com/sharer/sharer.php?u=";
var url_default_tw_txt = "https://twitter.com/intent/tweet?text=";
var url_default_tw_url = "&url=";
var url_this_page = location.href;
var url_combine_ks = url_default_ks + url_this_page;
var url_combine_fb = url_default_fb + url_this_page;
var url_combine_tw = url_default_tw_txt + document.title +
        url_default_tw_url + url_this_page;
</script>

<script>
function report() {
    var result = confirm("동물신고전화 이외의 용도로 사용하지 않음을 동의하십니까?");
    if (result) {
        window.open(
            '',
            '상세사진',
            'width=430,height=500,location=no,status=no,scrollbars=yes'
        );
    } else {
        alert("동의 후 이용가능합니다. 불법개인정보 수집은 법적 처벌대상이 될수있습니다. ");
    }
}
</script>
</body>
</html>