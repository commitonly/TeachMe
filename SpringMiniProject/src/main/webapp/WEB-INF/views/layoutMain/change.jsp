<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link rel="stylesheet" type="text/css" href="${root}/css/taeminfont.css">
<link rel="stylesheet" type="text/css" href="${root}/css/TeachMeStyle.css">
<link rel="stylesheet" type="text/css" href="${root}/css/change.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/javascript/change.js"></script>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap" rel="stylesheet">
<script type="text/javascript" src="/src"></script>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <script>
    </script>
</head>


<a href="#" class="btn_gotop">
  <span class="glyphicon glyphicon-chevron-up">
  </span>
</a>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<link rel="stylesheet" type="text/css" href="${root}/css/change.css">

<section class="section-1">
    <div class="jumbotron d-flex align-items-center">
        <div class="gradient"></div>
        <div class="container-fluid content" style="height: 150px; padding-bottom: 450px;">
            <h1 data-aos="fade-up" data-aos-delay="100"
                style="margin-bottom: 50px; color: white; font-family: 'BM Dohyeon';">국내 최다 합격률 <span
                    style="color:#3f86ed;" id="tctext">티치미</span> 입시학원</h1>
            <h2 data-aos="fade-up" data-aos-delay="300"
                style="margin-bottom: 100px; margin-top: 50px; color: lightgray;">국내 최고의 강사진과 함께하는 체계적인 커리큘럼</h2>
            <div class="wrap">
                <h4 data-aos="fade-up" data-aos-delay="500"
                    style="background-color: white; color: black; margin-top: 450px; border-radius: 15px;" id="tp"><b
                        id="dynamic" class="lg-text"></b></h4>
            </div>
            <p data-aos="fade-up" data-aos-delay="700"><a href="lecture/lectureList" class="btn btn-success" id="go"><b
                    id="count"></b></a></p>

        </div>
    </div>
</section>


<section class="section-18" style="padding-bottom: 20px; padding-top: 50px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-sm-8">

            </div>

        </div>
    </div>
    <h3 style="text-align: center; margin-bottom: 40px; margin-top: 0px; color: black;">Recommended Lectures</h3>
    <div class="container-fluid" style="height: 450px;">
        <div class="row" data-aos="fade-up" data-aos-delay="300">
            <a href="lecture/lectureDetail?lecdenum=70" target="_blank" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                <img src="image/mh.jpg" class="img-fluid">
                <div class="overlay">
                    <img src="${root}lecture/lectureDetail?lecdenum=70" alt="">
                    <div class="inner-text"><h4>본 강의<span>수강하기</span></h4></div>
                </div>
            </a>
            <a href="lecture/lectureDetail?lecdenum=83" target="_blank" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                <img src="image/engg.jpg" class="img-fluid">
                <div class="overlay">
                    <img src="" alt="">
                    <div class="inner-text"><h4>본 강의<span>수강하기</span></h4></div>
                </div>
            </a>
            <a href="lecture/lectureDetail?lecdenum=79" target="_blank" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                <img src="image/mattt.jpg" class="img-fluid">
                <div class="overlay">
                    <img src="" alt="">
                    <div class="inner-text"><h4>본 강의<span>수강하기</span></h4></div>
                </div>
            </a>
            <a href="lecture/lectureDetail?lecdenum=93" target="_blank" data-toggle="lightbox" data-gallery="example-gallery" class="col-sm-3 box">
                <img src="image/kok.jpg" class="img-fluid">
                <div class="overlay">
                    <img src="" alt="">
                    <div class="inner-text"><h4>본 강의<span>수강하기</span></h4></div>
                </div>
            </a>
        </div>
    </div>
</section>

<section class="section-2">
    <div class="container">
        <div class="row">
            <h2 style="text-align: center; margin-bottom: 80px; margin-top: 0px;">What is different?</h2>
            <div class="col-lg-4 col-sm-12 col-12 box-1">
                <div class="row box" data-aos="fade-left" data-aos-delay="300" style="background-color: grey; border-radius: 20px;">
                    <div class="col-lg-2 col-sm-12">
                        <i class="far fa-smile" aria-hidden="true" style="color: white; font-size: 30px;"></i>
                    </div>
                    <div class="col-lg-10 col-sm-12">
                        <h3><b style="color: white;">첫 번째</b></h3>
                        <p style="color: white;"><b>교육의 본질은 쌍방향의 소통입니다. 직업 윤리를 떠나 학생들을 가르침에 따라 모든 선생님들은 보람을 느끼고 힘을 얻습니다.
                            저희는 상호간의 이해와 관계의 공유에서 많은
                            변화를 만들어 낼 것 입니다. </b></p>
                        <p><a href="services.html"></a></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-12 col-12 box-2">
                <div class="row box" data-aos="fade-left" data-aos-delay="500" style="background-color: grey; border-radius: 20px;">
                    <div class="col-lg-2 col-sm-12">
                        <i class="far fa-smile" aria-hidden="true" style="color: white; font-size: 30px;"></i>
                    </div>
                    <div class="col-lg-10 col-sm-12">
                        <h3><b style="color: white;">두 번째</b></h3>
                        <p style="color: white;"><b>내신과 수능 모두를 겸비할 수 있는 학원이 되겠습니다. 한달의 한번씩 있는 학교 자체 모의고사를 통해 현재 자신의 위치와 전략을
                            만들어가면서 향후 미래에 좋은 입시
                            결과를 만들어 낼 것 입니다.</b></p>
                        <p><a href="services.html"></a></p>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-12 col-12 box-3">
                <div class="row box" data-aos="fade-left" data-aos-delay="700" style="background-color: grey; border-radius: 20px;">
                    <div class="col-lg-2 col-sm-12">
                        <i class="far fa-smile" aria-hidden="true" style="color: white; font-size: 30px;"></i>
                    </div>
                    <div class="col-lg-10 col-sm-12">
                        <h3><b style="color: white;">세 번째</b></h3>
                        <p style="color: white;"><b style="color: white">매 해 바뀌는 입시제도 하에서 학생 개개인에게 맞는 학습방법과 전략을 짜기 위해선 학생이 원하는 수강 목록과 선생님을 고르되
                            자신이 책임지고 수업에 임해야 한다는 점을
                            강조하며 만든 시스템입니다</b> </p>
                        <p><b></b></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<h2 style="text-align: center;">FIND LECTURE BY KEYWORD</h2>
<br>
<h5 style="text-align: center; color: grey;">키워드에 따라 원하는 강의를 발견해보세요</h5>
<div class="container" style="width: 100%;">
    <div class="askBox" style="margin-bottom: 5px;">

        <button type="button" onclick="location.href='lecture/lectureList?lectypeb=국어종합'" class="myAsk" style="width: 100px;">
            <b>국어강의</b>
        </button>

        <button type="button" onclick="location.href='lecture/lectureList?lectypea=역사'" class="myAsk" style="width: 100px;">
            <b>사회강의</b>
        </button>

        <button type="button" onclick="location.href='lecture/lectureList?lectypeb=생명과학'" class="myAsk" style="width: 100px;">
            <b>과학강의</b>
        </button>

        <button type="button" onclick="location.href='lecture/lectureList?lectypeb=아시아'" class="myAsk" style="width: 100px;">
            <b>제2외국어</b>
        </button>

        <button type="button" onclick="location.href='lecture/lectureList?lectypeb=영어'" class="myAsk" style="width: 100px;">
            <b>영어강의</b>
        </button>

        <button type="button" onclick="location.href='lecture/lectureList?lectypeb=수학종합'" class="myAsk" style="width: 100px;">
            <b>수학강의</b>
        </button>


        <button type="button" onclick="location.href='lecture/lectureList'" class="myAsk" style="width: 100px;">
            <b>전체강의</b>
        </button>

    </div>
</div>
<br><br><br><br><br><br>

<section class="section-3" style="border: 0; padding-bottom: 0;">
    <div class="container">
        <div class="row m-0">
            <div class="col-lg-5 col-md-12 p-0" data-aos="fade-right" data-aos-delay="300">
                <h2 style="color: black;">TeachMe 강의후기 TOP5</h2>
                <ul>
                    <c:forEach var="hotdto" items="${hotlectures}">
                        <li style="font-size: 18px;"><a href="lecture/lectureDetail?lecdenum=${hotdto.lecdenum}" id="chcol"><i class="fa fa-angle-right" aria-hidden="true"></i>${hotdto.lecname}&nbsp;<b style="color: gold">${hotdto.avgstar}점</b> ${hotdto.teaname} 강사</a></li>
                    </c:forEach>
                </ul>
            </div>
            <div class="col-lg-7 col-md-12 p-0" data-aos="fade-left" data-aos-delay="300">
                <div style="margin-top: 120px;">
                    <video class="inner-img" src="${root}/css/videos/wr.mp4" controls muted autoplay loop width="100%;"
                           style="border-radius: 20px; margin-left: 50px;" alt="services"></video>
                </div>
            </div>
        </div>
    </div>

</section>


<section class="section-5" style="padding-bottom: 20px; padding-top: 50px;">
    <div class="container">
        <div class="row">
            <div class="col-lg-7 col-sm-8">
                <h3 style="color: black;"><span
                        style="margin-left: 0; display: flex; position: center; padding-bottom: 10px;">Study and Changes Life</span>
                </h3>
            </div>

        </div>
    </div>
    <div class="container-fluid" style="height: 450px;">
        <div class="row" data-aos="fade-up" data-aos-delay="300">
            <a href="https://www.snu.ac.kr/" target="_blank" data-toggle="lightbox" data-gallery="example-gallery"
               class="col-sm-3 box">
                <img src="image/s1.jpg" class="img-fluid">
                <div class="overlay">
                    <img src="" alt="">
                    <div class="inner-text"><h4>2021년도<span>최종합격10명</span></h4></div>
                </div>
            </a>
            <a href="https://www.korea.ac.kr/mbshome/mbs/university/index.do" target="_blank" data-toggle="lightbox"
               data-gallery="example-gallery" class="col-sm-3 box">
                <img src="image/55.jpg" class="img-fluid">
                <div class="overlay">
                    <img src="" alt="">
                    <div class="inner-text"><h4>2021년도<span>최종합격15명</span></h4></div>
                </div>
            </a>
            <a href="https://www.yonsei.ac.kr/sc/" target="_blank" data-toggle="lightbox" data-gallery="example-gallery"
               class="col-sm-3 box">
                <img src="image/2323.png" class="img-fluid">
                <div class="overlay">
                    <img src="" alt="">
                    <div class="inner-text"><h4>2021년도<span>최종합격11명</span></h4></div>
                </div>
            </a>
            <a href="https://www.sogang.ac.kr/index.do" target="_blank" data-toggle="lightbox"
               data-gallery="example-gallery" class="col-sm-3 box">
                <img src="image/nm.jpg" class="img-fluid">
                <div class="overlay">
                    <img src="" alt="">
                    <div class="inner-text"><h4>2021년도<span>최종합격12명</span></h4></div>
                </div>
            </a>
        </div>
    </div>
</section>

</footer>
</section>

<nav class="cuz">
    <ul id="main_menu">
        <div class="btn_gotop"><a href="#"><img src="image/tttt.png"
                                                style="width: 70%; background-color:transparent; color: black;"></a>
        </div>
        <br>
        <br>
        <li><a href="javascript:dos()" style="color: black;"><img src="image/pointt.png"
                                                                  style="width: 80%; background-color:transparent; color: black;"></a>
            <ul class="snd_menu sub_menu" style=" background-color:transparent;">
                <br>
                <li><a href="${root}/lecture/lectureList"><img src="image/yu.png"
                                                               style="width: 100%; background-color:transparent; color: black;">강의</a>
                </li>
                <br>
                <li><a href="${root}/board/boardFree"><img src="image/cccb.png"
                                                           style="width: 100%;padding-left:10px;  ">커뮤니티</a></li>
                <br>
                <li><a href="${root}/qna/qnaList"><img src="image/1ask.png" style="width:130%; padding-right: 25px;">문의하기</a>
                </li>
            </ul>
        </li>
    </ul>
</nav>
</body>
<%--<script>--%>

<%--    $(document).ready(function dos() {--%>
<%--        $('#main_menu > li > a').click(function () {--%>
<%--            $(this).next($('.snd_menu sub_menu')).slideToggle('fast');--%>
<%--        })--%>

<%--    })--%>
<%--    //--%>
<%--    let target = document.querySelector("#dynamic");--%>


<%--    function randomString() {--%>
<%--        let stringArr = ["대한민국 입시 부동의 1위", "Study and Changes Life", "2021년도 합격률 98%",--%>
<%--            "학생 맞춤형 공부법", "최고의 강사 최고의 커리큘럼", "10년 연속 합격률 95% 달성"];--%>
<%--        let selectString = stringArr[Math.floor(Math.random() * stringArr.length)];--%>
<%--        let selectStringArr = selectString.split("");--%>

<%--        return selectStringArr;--%>
<%--    }--%>

<%--    function resetTyping() {--%>
<%--        target.textContent = "";--%>

<%--        dynamic(randomString());--%>
<%--    }--%>
<%--    function dynamic(randomArr) {--%>

<%--        if (randomArr.length > 0) {--%>
<%--            target.textContent += randomArr.shift();--%>
<%--            setTimeout(function () {--%>
<%--                dynamic(randomArr);--%>
<%--            }, 80);--%>
<%--        } else {--%>
<%--            setTimeout(resetTyping, 3000);--%>
<%--        }--%>

<%--    }--%>

<%--    dynamic(randomString());--%>


<%--    function blink() {--%>
<%--        target.classList.toggle("active");--%>

<%--    }--%>

<%--    setInterval(blink, 500);--%>


<%--    var dday = new Date("November 17, 2023, 0:00:00").getTime();--%>

<%--    setInterval(function () {--%>

<%--        var today = new Date().getTime();--%>
<%--        var gap = dday - today;--%>
<%--        var day = Math.ceil(gap / (1000 * 60 * 60 * 24));--%>
<%--        var hour = Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));--%>
<%--        var min = Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60));--%>
<%--        var sec = Math.ceil((gap % (1000 * 60)) / 1000);--%>
<%--        document.getElementById("count").innerHTML = "<b>2022년도 수능 D-DAY&nbsp;</b>  " + day + "일 " + hour + "시간 " + min + "분 " + sec + "초";--%>
<%--    }, 1000);--%>


<%--</script>--%>
</html>