<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

    <title>write_find</title>
    <!-- css스타일 적용 -->
    <link rel="stylesheet" href="css/style.css" />
    <link rel="stylesheet" href="css/main.css" />
    <!-- 부트스트랩 적용 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <!-- 부트스트랩 아이콘 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
 

</head>
  <body  class="bg-light">
            <!-- header 시작-->
            <header class="fixed-top bg-white">
                <!-- 로고 + 로그인/회원가입 버튼 -->
                <div class="row py-3 mx-3">
                    <div class="col-4"></div>
                    <div class="col-4 d-flex justify-content-center align-items-center">
                        <h1>
                           <a href="main.html"><i class="bi bi-emoji-smile" style="color: #3f51b5;">Logo</i></a> 
                        </h1>
                    </div>
                    <div class="col-4 d-flex justify-content-end align-items-center flex-wrap gap-2">
                        <a class="p-1 btn" style="color: #3f51b5;" href="#">LOGIN</a>
                        <a class="p-1 btn" style="color: #3f51b5;" href="#">SIGN UP</a>
                    </div>
                </div>
                <!-- 네이게이션바 -->
                    <nav class="navbar navbar-expand-lg navbar-light justify-content-center">
                        <div class="container-fluid">
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse" id="navbarNav">
                                <!-- <ul class="navbar-nav">
                                    <li class="nav-item">
                                        <a class="nav-link text-dark" aria-current="page" href="#">실종공고</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-dark" href="#">자유게시판</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-dark" href="#">공동구매</a>
                                    </li>   
                                    <li class="nav-item">
                                        <a class="nav-link text-dark" href="#">이벤트</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-dark" href="#">ABOUT US</a>
                                    </li>
                                </ul> -->
                                <div class="navbar-nav px-5">
                                    <a class="nav-link" href="find_borad.html">실종공고</a>
                                    <a class="nav-link" href="#">자유게시판</a>
                                    <a class="nav-link" href="#">공동구매</a>
                                    <a class="nav-link" href="#">이벤트</a>
                                    <a class="nav-link" href="#">ABOUT US</a>
                                </div>
                            </div>
                        </div>
                    </nav>                
            </header> 
            <!-- header 종료 -->
            <!-- ------------------------------- -->
            <!-- 본문 시작-->
            <!-- ------------------------------- -->
            
            <div class="container p-5">
                    <h1 class="title text-center p-3"><b>실종공고</b></h1>
                    <!-- <h6 class="text-center">실종 동물의 정보를 입력해 주세요</h6> -->
                </div>
            <div class="container p-2">
                <!--파일첨부 포함된 form 태그이므로 enctype=multipart/form-data -->
                <form action="" method="post" enctype="multipart/form-data">

                    <!--작성자 닉네임 가져오기.....필요한가?-->
                    <input type="hidden" value="" name="nickname">
                    <!--작성 date 가져오기 timestamp-->
                    <input type="hidden" value="date">

                    <div class="row g-5">
                        <!--파일 미리보기 img-->
                        <!-- <hr>
                        <div class="col-sm-12 col-md-12 col-lg-6 order-lg-last p-5">
                            <h6 class="text-center p-3"><i>*반려동물의 사진을 첨부해주세요</i></h6> -->
                            <!--첨부 파일 이미지 미리보기. 업로드 전 no image 보여주기-->
                            <!-- <img src="img/dog1.jpg" class="img-thumbnail mb-3" alt="파일미리보기"> -->
                            <!--다중 파일 첨부-->
                            <!-- <div class="mb-3">
                                <label for="multipleFile_eh">*파일첨부는 최대 xx장까지 가능합니다.</label>
                                <input type="file" class="form-control mb-3" id="multipleFile_eh" multiple>
                            </div> -->
                        </div>
                        <div class="col-sm-12 col-md-12 col-lg-6 p-5">
                            <!--해결,미해결 토글버튼 (클릭시 글자도 바뀌어야 함)-->
                            <div class="row">
                                <div class="col form-check form-switch mb-3" id="switch_eh">
                                    <input class="form-check-input" type="checkbox" role="switch" id="swtich_eh">
                                    <label class="form-check-label" for="switch_eh">미해결</label>
                                </div>
                            <!--사례금 유무-->
                                <div class="col input-group mb-3">
                                    <label class="input-group-text">사례금</label>
                                    <input type="text" class="form-control" placeholder="만원">
                                </div>
                            </div>
                            <!--동물 종류 select -->
                            <div class="input-group mb-3">
                                <label class="input-group-text" for="animal_sort_eh">동물 종류</label>
                                    <select class="form-select" id="animal_sort_eh" name="animal_category">
                                        <option selected>선택해주세요</option>
                                        <option name="dog" value="0">개</option>
                                        <option name="cat" value="1">고양이</option>                
                                        <option name="etc" value="2">기타</option>                
                                    </select>
                            </div>
                            <!--동물 이름, 동물 나이 text-->  
                            <div class="input-group mb-3">
                                <label class="input-group-text"> 동물 이름 </label>
                                <input type="text" class="form-control" placeholder="이름">
                            </div>
                            <div class="input-group mb-3">
                                <label class="input-group-text"> 동물 나이 </label>
                                <input type="text" class="form-control" placeholder="숫자만 입력">
                                <select class="form-select">
                                    <option>개월</option>
                                    <option>년(세)</option>
                                </select>
                            </div>
                            <!--동물 성별 체크 radio-->
                            <div class="input-group mb-3"> 
                                <div class="input-group-text">동물 성별</div>
                                <div class="form-control">
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="sex" id="ra1_eh" value="0">
                                        <label class="form-check-label" for="ra1_eh">암컷</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="sex" id="ra2_eh" value="1">
                                        <label class="form-check-label" for="ra2_eh">수컷</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input" type="radio" name="sex" id="ra3_eh" value="2">
                                        <label class="form-check-label" for="ra3_eh">모름</label>
                                    </div>
                                </div>
                            </div>
                            <!--실종날짜-->
                            <div class="input-group mb-3">
                                <label class="input-group-text">실종 날짜</label>
                                <input type="date" class="form-control">
                            </div>
                            <!--실종지역 select (JQuery or API 적용 예정)-->
                            <div class="input-group">
                                <label class="input-group-text">실종 지역</label>
                                    <select class="form-select">
                                        <option selected>시</option>
                                        <option value="">부산광역시</option>
                                        <option value="">서울특별시</option>
                                        <option value="">광주광역시</option>
                                    </select>
                                    <select class="form-select">
                                        <option selected>구</option>
                                        <option>수영구</option>
                                        <option>부산진구</option>
                                    </select>
                                    <select class="form-select">
                                        <option selected>동</option>
                                        <option>광안동</option>
                                        <option>망미동</option>
                                    </select>
                            </div>
                            <!--실종지역 상세 위치-->
                            <div class="input-group mb-3">
                                <label class="input-group-text">상세 위치</label>
                                <input type="text" class="form-control" placeholder="OO초등학교 인근">
                            </div>
                            <!--기타 특징-->
                            <div class="input-group mb-3">
                                <label class="input-group-text" for="ta_eh">기타 특징</label>
                                <textarea rows="4" class="form-control" aria-label="With textarea" id="ta_eh"
                                placeholder="중성화 유무, 자주가는 산책길, 좋아하는 음식 등 동물에 대한 상세정보"></textarea>
                            </div>
                            <!--연락가능 수단-->
                            <div class="input-group mb-3">
                                <label class="input-group-text">연락 가능 수단</label>
                                <input type="text" class="form-control" placeholder="전화번호, 이메일, 카카오톡 아이디 등">
                            </div>
                            <!--file 드래그앤드롭-->
                            <div class="dropzone mb-5" id="dropZone">
                                <div id="uploadDiv" class="dz-default dz-message db">
                                    파일을 끌어 올려 업로드 해주세요.<br> 
                                </div>
                                <div id="imgDiv" class="dn"></div>
                                <small style="color: gray; font-size: 13px;">업로드 가능 이미지 확장자 ( gif, jpeg, jpg, png, bmp )</small>
                            </div>
                          
                        
                            <!--submit 버튼-->
                            <div class="text-center p-2">
                                <input type="submit" id="btn_eh" name="submit"> 
                                <input type="button" id="btn_eh" name="cancel" value="cancel"> <!--클릭시 메인으로-->
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            
            <!-- ------------------------------- -->
            <!-- 본문 종료-->
            <!-- ------------------------------- -->
            <!-- footer 시작 -->

	         <!-- footer 종료 -->
       

        <!--스크립트 적용 -->
        <script src="js/main.js"></script>
        <!-- 부트스트랩 스크립트 적용 -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>


</body>
</html>