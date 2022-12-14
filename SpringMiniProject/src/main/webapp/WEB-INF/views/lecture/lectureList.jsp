<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Yeon+Sung&display=swap" rel="stylesheet">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<style>


    #main_menu {
            position: fixed;
            width: 70px;
            height: 210px;
            right: 60px;
            border-radius: 70px;
            top: 35%;
            text-align: center;

        }
.cuz {
    width: 100px;
}

ul {
    padding: 0;
}

li {
    list-style: none;
    line-height: 34px;
}

a {
    text-decoration: none;
    color: black;
    text-align: center;
}

.snd_menu {
    background: #efefef;
}

.sub_menu {
    display: none;
}

    img {
        vertical-align: top;
    }
    .banner_img, .banner_bg {
        display: inline-block;
        position: relative;
    }
    .banner_img:hover:after,
    .banner_img:hover > .hover_text,
    .banner_bg:hover:after,
    .banner_bg:hover > .hover_text {
        display: block;
    }

    .banner_img:after, .banner_bg:after, .hover_text {
        display: none;
    }

    .banner_img:after, .banner_bg:after {
        content: '';
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        background: rgba(0, 0, 0, 0.3);
        z-index: 10;
    }

    .banner_img {
        overflow: hidden;
    }

    .banner_img img {
        height: 340px;
    }

    .banner_img:hover img {
        transform: scale(1.5);
        transition: 1s;
    }

    .hover_text {
        position: absolute;
        top: 60px;
        left: 25px;
        color: #fff;
        z-index: 20;
        font-weight: 600;
       
    }

    #Accordion_wrap {
        position: absolute;
        
    	}

    h1 + p {
        font-weight: 300;
    }

    h1 + p a {
        color: #333;
    }

    h1 + p a:hover {
        text-decoration: none;
    }

    h2 {
        padding: 0;
        font-weight: 300;
    }

    h2 span {
        margin-left: 1em;
        color: #aaa;
        font-size: 85%;
    }

    .column {
        margin: 15px 15px 0;
        padding: 0;
    }

    .column:last-child {
        padding-bottom: 60px;
    }

    .column::after {
        content: '';
        clear: both;
        display: block;
    }

    .column div {
        position: relative;
        float: left;
        width: 300px;
        height: 200px;
        margin: 0 0 0 25px;
        padding: 0;
    }

    .column div:first-child {
        margin-left: 0;
    }

    .column div span {
        position: absolute;
        bottom: -20px;
        left: 0;
        z-index: -1;
        display: block;
        width: 300px;
        margin: 0;
        padding: 0;
        color: #444;
        font-size: 18px;
        text-decoration: none;
        text-align: center;
        -webkit-transition: .3s ease-in-out;
        transition: .3s ease-in-out;
        opacity: 0;
    }

    figure {
        width: 300px;
        height: 200px;
        margin: 0;
        padding: 0;
        background: #fff;
        overflow: hidden;
    }

    figure
        /* Opacity #1 */
    .hover11 figure img {
        opacity: 1;
        -webkit-transition: .3s ease-in-out;
        transition: .3s ease-in-out;
    }

    .hover11 figure:hover img {
        opacity: .5;
    }

    * {
        box-sizing: border-box;
    }

    .que:first-child {
        border-top: 1px solid black;
    }

    .que {
        position: relative;
        padding: 12px 0;
        cursor: pointer;
        font-size: 14px;
        border-bottom: 1px solid black;

    }

    .que::before {
        display: inline-block;
        /*content: ;*/
        font-size: 14px;
        margin: 0 5px;
    }

    .que.on > span {
        font-weight: bold;
    }

    .anw {
        display: none;
        overflow: hidden;
        font-size: 14px;
        text-align: center;
        border-bottom: 1px solid #e4e4e4;
        border-radius: 4px;
        font-size: 1rem;

    }

    #explain {
        opacity: 0;
        position: absolute;

    }

    .text_photo:hover #explain {
        opacity: 1;

    }

    .anw::before {
        display: inline-block;
        font-size: 14px;
        font-weight: bold;
        margin: 0 5px;
    }

    .arrow-wrap {
        position: absolute;
        top: 50%;
        right: 10px;
        transform: translate(0, -50%);
    }

    .que .arrow-top {
        display: none;
    }

    .que .arrow-bottom {
        display: block;
    }

    .que.on .arrow-bottom {
        display: none;
    }

    .que.on .arrow-top {
        display: block;
    }
     .fa-star{
	color:#ff8c00;
}
.rating .star2{
       width:0;
       overflow: hidden;
       
}
 .rating .star-wrap{
      width:18px; 
       display: inline-block;
         
}
</style>
</head>
<body >
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<div class="container" style=" display: flex; min-height: 700px;">
    <div id="Accordion_wrap" style="width: 150px; margin-top: 50px; text-align: center;">
        <div>

            <div class="que">
                <a href="lectureList"><i class='fas fa-list'></i>&nbsp;<b>????????????</b></a>
            </div>

            <div class="que">
                <span><i class='fas fa-book-open'></i>&nbsp;&nbsp;??????</span>
                <div class="arrow-wrap">
                    <span class="arrow-top"><i class='fas fa-angle-up'></i></span>
                    <span class="arrow-bottom"><i class='fas fa-angle-down'></i></span>
                </div>
            </div>
            <div class="anw">
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=????????????" style="color: black; text-decoration:none; margin-bottom: 5px;">????????????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????"
                       style="color: black; text-decoration:none; margin-bottom: 5px;">??????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????" style="color: black; text-decoration:none;">??????</a>
                </div>
            </div>


            <div class="que">
                <span><i class='fas fa-calculator'></i>&nbsp;&nbsp;??????</span>
                <div class="arrow-wrap">
                    <span class="arrow-top"><i class='fas fa-angle-up'></i></span>
                    <span class="arrow-bottom"><i class='fas fa-angle-down'></i></span>
                </div>
            </div>
            <div class="anw">
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=????????????"
                       style="color: black; text-decoration:none; margin-bottom: 5px;">????????????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=????????????"
                       style="color: black;text-decoration:none; margin-bottom: 1px;">????????????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=????????????" style="color: black;text-decoration:none;">????????????</a>
                </div>
            </div>


            <div class="que">
                <span><i class='fab fa-amilia'></i>&nbsp;&nbsp;??????</span>
                <div class="arrow-wrap">
                    <span class="arrow-top"><i class='fas fa-angle-up'></i></span>
                    <span class="arrow-bottom"><i class='fas fa-angle-down'></i></span>
                </div>
            </div>
            <div class="anw">
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????" style="color: black; text-decoration:none; margin-bottom: 5px;">??????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=????????????" style="color: black; text-decoration:none;">????????????</a>
                </div>
            </div>
            <div class="que">
                <span> <i class='fas fa-balance-scale'></i>&nbsp;&nbsp;??????</span>
                <div class="arrow-wrap">
                    <span class="arrow-top"><i class='fas fa-angle-up'></i></span>
                    <span class="arrow-bottom"><i class='fas fa-angle-down'></i></span>
                </div>
            </div>
            <div class="anw">
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????"
                       style="color: black; text-decoration:none; margin-bottom: 5px;">??????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????" style="color: black; text-decoration:none;">??????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????" style="color: black; text-decoration:none;">??????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????" style="color: black; text-decoration:none;">??????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=????????? ???" style="color: black; text-decoration:none;">????????????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????????????" style="color: black; text-decoration:none;">??????????????</a>
                </div>
            </div>


            <div class="que">
                <span><i class='fas fa-atom'></i>&nbsp;&nbsp;??????</span>
                <div class="arrow-wrap">
                    <span class="arrow-top"><i class='fas fa-angle-up'></i></span>
                    <span class="arrow-bottom"><i class='fas fa-angle-down'></i></span>
                </div>
            </div>
            <div class="anw">
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=????????????" style="color: black; text-decoration:none; margin-bottom: 5px;">????????????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=????????????" style="color: black; text-decoration:none;">????????????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????" style="color: black; text-decoration:none;">??????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????" style="color: black; text-decoration:none;">?????????</a>
                </div>
            </div>
            <div class="que">
                <span><i class='fas fa-language'></i>&nbsp;&nbsp;???2?????????</span>
                <div class="arrow-wrap">
                    <span class="arrow-top"><i class='fas fa-angle-up'></i></span>
                    <span class="arrow-bottom"><i class='fas fa-angle-down'></i></span>
                </div>
            </div>
            <div class="anw">
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=?????????" style="color: black; text-decoration:none;">?????????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????" style="color: black; text-decoration:none;">??????</a>
                </div>
                <div style="padding: 10px 0; border-bottom: 1px solid #dddddd;">
                    <a href="lectureList?lectypeb=??????" style="color: black; text-decoration:none;">??????</a>
                </div>
            </div>
        </div>
    </div>

    <div style="width:100%; height:100%; margin-top: 25px; margin-left: 150px; margin-bottom: 30px; ">
        <c:forEach var="lecdto" items="${list}">       
            <div style="float:left; padding: 30px;">
                <a class="banner_img" href="lectureDetail?lecdenum=${lecdto.lecdenum}">
                    <img src="../upload/lecture/${lecdto.lecphoto}"
                         style=" width:240px ;height:320px;" id="showimg">                
                <div class="review2 hover_text" style="margin-left: 50px; margin-top: 5px;">
                	<p style="padding: 0 auto;">${lecdto.teaname} ??????<br><br> ??????: ${lecdto.lecmonth}???<br><br>${lecdto.lectypea}>${lecdto.lectypeb}</p>            	
            		 <p style="font-size: 15px;">??????:  ${lecdto.avgstar}</p>            	   
            		<div class="rating" data-rate="${lecdto.avgstar}">
	            	<div class="star-wrap"><div class="star2"><i class="fas fa-star"></i></div></div>
	            	<div class="star-wrap"><div class="star2"><i class="fas fa-star"></i></div></div>
	            	<div class="star-wrap"><div class="star2"><i class="fas fa-star"></i></div></div>
	            	<div class="star-wrap"><div class="star2"><i class="fas fa-star"></i></div></div>
	            	<div class="star-wrap"><div class="star2"><i class="fas fa-star"></i></div></div>    
            	</div>           
            </div> 
            
                <p style="text-align: center; margin: 0 auto;">${lecdto.lecname}<br>???${lecdto.price}</p>             
                </a>
</div>
        </c:forEach>
    </div>
</div>

<nav class="cuz">
    <ul id="main_menu">
        <div class="btn_gotop"><a href="#"><img src="../image/tttt.png"  style="width: 70%; background-color:transparent; color: black;"></a>
        </div>
        <br>
        <br>
        <li><a href="javascript:dos()" style="color: black;"><img src="../image/pointt.png"
                                                                  style="width: 80%; background-color:transparent; color: black;"></a>
            <ul class="snd_menu sub_menu" style=" background-color:transparent;">
                <br>
                <li><a href="${root}/lecture/lectureList"><img src="../image/yu.png"
                                                               style="width: 100%; background-color:transparent; color: black;">??????</a>
                </li>
                <br>
                <li><a href="${root}/board/boardFree"><img src="../image/cccb.png"
                                                           style="width: 100%;padding-left:10px;  ">????????????</a></li>
                <br>
                <li><a href="${root}/qna/qnaList"><img src="../image/1ask.png" style="width:130%; padding-right: 25px;">????????????</a>
                </li>
            </ul>
        </li>
    </ul>
</nav>
<script type="text/javascript">

$(document).ready(function dos() {
    $('#main_menu > li > a').click(function () {
        $(this).next($('.snd_menu sub_menu')).slideToggle('fast');
        // $(this).show($('.snd_menu sub_menu')("slide",{direction:'left'},1000));
    })
    // e.stopPropagation();

})
    $(".que").click(function () {
        $(this).next(".anw").stop().slideToggle(300);
        $(this).toggleClass('on').siblings().removeClass('on');
        $(this).next(".anw").siblings(".anw").slideUp(300); // 1?????? ?????????
    });

    $(document).ready(function () {
        var currentPosition = parseInt($("#Accordion_wrap").css("top"));
        $(window).scroll(function () {
        	
        	var position = $(window).scrollTop();
            $("#Accordion_wrap").stop().animate({"top": position + currentPosition + "px"}, 300);
        });
        const rating =$('.rating');
        rating.each(function () {
       	const $this = $(this);
       	//????????? ????????? ??????
       	const targetScore =$this.attr('data-rate');		
       	const firstdigit =targetScore.split('.');
       	if(firstdigit.length > 1){
          		for(var i=0 ; i < firstdigit[0] ; i++){
       			$this.find('.star2').eq(i).css({width:'100%'}); 			     			
       		}	
          		$this.find('.star2').eq(firstdigit[0]).css({width:firstdigit[1]+'0%'});
       	}
       	else{
       		for(var i=0 ; i<  targetScore; i++){
       			$this.find('.star2').eq(i).css({width:'100%'}); 			     			
       		}	
       		
       	}
			
		});     
  
    });
  
</script>
</body>
</html>
