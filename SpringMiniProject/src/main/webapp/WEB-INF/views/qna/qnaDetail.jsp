<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link
            href="https://fonts.googleapis.com/css2?family=Anton&family=Edu+VIC+WA+NT+Beginner:wght@600&family=Gamja+Flower&family=Single+Day&family=Jua&family=Nanum+Pen+Script&display=swap"
            rel="stylesheet">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>

</head>
<body>

<c:set var="root" value="<%=request.getContextPath() %>"/>
<link rel="stylesheet" type="text/css" href="${root}/css/qnadetail.css">
<nav class="cuz">
    <ul id="main_menu">
        <div class="btn_gotop"><a href="#"><img src="../image/tttt.png"
                                                style="width: 70%; background-color:transparent; color: black;"></a>
        </div>
        <br>
        <br>
        <li><a href="javascript:dos()" style="color: black;"><img src="../image/pointt.png"
                                                                  style="width: 80%; background-color:transparent; color: black;"></a>
            <ul class="snd_menu sub_menu" style=" background-color:transparent;">
                <br>
                <li><a href="${root}/lecture/lectureList"><img src="../image/yu.png"
                                                               style="width: 100%; background-color:transparent; color: black;">강의</a>
                </li>
                <br>
                <li><a href="${root}/board/boardFree"><img src="../image/cccb.png"
                                                           style="width: 100%;padding-left:10px;  ">커뮤니티</a></li>
                <br>
                <li><a href="${root}/qna/qnaList"><img src="../image/1ask.png" style="width:130%; padding-right: 25px;">문의하기</a>
                </li>
            </ul>
        </li>
    </ul>
</nav>


<div class="container" style="width: 100%;">
    <div style="margin: 50px;">
        <table class="table table-bordered" style="width: 600px" id="detailbox">
            <tr>
                <td>
                    <h2><b>${dto.subject}</b></h2>
                    <b>${dto.username}</b>
                    <span style="color: gray; font-size: 12px;">
               <fmt:formatDate value="${dto.writeday}" pattern="yyyy-MM-dd HH:mm"/>
            </span>
                    <b id="tpst">${dto.qnatype}</b>
                </td>
            </tr>
            <tr height="500">
                <td>
                    <p>${dto.content}</p>
                    <c:if test="${dto.photo!='no'}">
                        <c:forTokens var="photo" items="${dto.photo}" delims=",">
                            <img src="../upload/${photo}" width="150"
                                 onerror="this.style.display='none'">
                        </c:forTokens>
                    </c:if>
                    <div class="aform">
                        <form id="aform">
                            <input type="hidden" name="qnanum" value="${dto.qnanum}">
                            <input type="hidden" name="pass" value="${dto.pass}">
                            <input type="hidden" name="loginid" value="${sessionScope.loginid}">
                            <input type="hidden" name="username" value="${sessionScope.username}">
                        </form>
                    </div>
                    <tr>
            <td style="text-align: center; padding: 20px;" >
                    <c:if test="${sessionScope.loginok!=null && sessionScope.usernum==dto.usernum}">
                    <div id="buttonbox" style="width: 250px; margin-top:10px; margin-bottom: 10px;">
                        <button type="button" class="btn btn-outline" style="color: black; text-decoration: none; background-color: white; border: 1px solid black;" onclick="location.href='qnaUpdate?qnanum=${dto.qnanum}&currentPage=${currentPage}'">수정</button>
                        </c:if>
                        <c:if test="${sessionScope.loginok!=null && sessionScope.usernum==dto.usernum || sessionScope.email=='admin@gmail.com'}">
                        <button type="button" onclick="if(confirm('게시글을 삭제하시겠습니까?')) location.href='delete?qnanum=${dto.qnanum}&currentPage=${currentPage}'" class="btn btn-outline adel" style="color: black; text-decoration: none; background-color: white; border: 1px solid black;" >삭제</button>
                        </c:if>
                        <c:if test="${dto.restep==0 && sessionScope.email=='admin@gmail.com'}">
                            <button type="button" class="btn btn-outline"  style="color: black; text-decoration: none; background-color: white; border: 1px solid black;" onclick="location.href='qnaForm?qnanum=${dto.qnanum}&regroup=${dto.regroup}&restep=${dto.restep}&relevel=${dto.relevel}&currentPage=${currentPage}&pass=${dto.pass}'">답글</button>
                        </c:if>
                        <button type="button" class="btn btn-outline"  style="color: black; text-decoration: none; background-color: white; border: 1px solid black;" onclick="location.href='qnaList?currentPage=${currentPage}'">목록</button>
                    </div>
            </td>
                    </tr>

                </td>
            </tr>

        </table>
    </div>


</div>
</body>




<script>

    $(document).ready(function dos() {
        $('#main_menu > li > a').click(function () {
            $(this).next($('.snd_menu sub_menu')).slideToggle('fast');
        })

    })

</script>
</html>
