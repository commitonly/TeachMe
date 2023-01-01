<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TeachMe입시학원 | Study and Changes Life</title>
    <link rel="stylesheet" type="text/css" href="${root}/css/taemin.css">
    <link rel="stylesheet" type="text/css" href="${root}/css/taeminfont.css">
    <link rel="stylesheet" type="text/css" href="${root}/css/TeachMeStyle.css">
    <link rel="stylesheet" type="text/css" href="${root}/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${root}/css/animate.css">
    <link rel="stylesheet" type="text/css" href="${root}/css/qna.css">
    <script src="${pageContext.request.contextPath}/resources/javascript/taemin.js"></script>
</head>
<body>

<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<link rel="stylesheet" type="text/css" href="${root}/resources/css/header.css">
<header id="headerfor">

    <div  id="rowrowfor">
        <div id="rowfor">
                <div>
                <h1 id="h1for"><a href="${root}" id="logos" data-aos="fade-right" data-aos-delay="100">TeachMe</a></h1>
            </div>
            <div >
                <a href="/mini/"><b style="color: #191919;  font-size: 40px" >
                </b></a>
            </div>
        </div>
    </div>
    <div style="float: right;" >
    <!-- login button -->
    <c:if test="${sessionScope.loginok==null }">
    <button type="button" id="btnloginMain" class="bt1" style=" margin-right: 110px; margin-top: 10px;"><b>SIGN</b></button>
    </c:if>
    <c:if test="${sessionScope.loginok!=null && sessionScope.usertype=='user'}">
    <b>${sessionScope.loginname}님</b>&nbsp;&nbsp;
    <a href="${root}/student/timeTable" class="bt1" ><button type="button" id="btnmypage" class="bt1" ><b> MYPAGE</b></button></a>&nbsp;
    <button type="button" id="btnlogoutMain" class="bt1" style=" margin-right: 110px; margin-left: 5px; margin-top: 10px;"><b>LOGOUT</b></button>
    </c:if>
    <c:if test="${sessionScope.loginok!=null && sessionScope.usertype=='manager'}">
    <b>${sessionScope.loginname}님</b>	            &nbsp;&nbsp;
        <a href="${root}/manager/main"><button type="button" id="btnmypage2" class="bt1" ><b>ADMIN</b></button></a>
    <button type="button" id="btnlogoutMain" class="bt1" style=" margin-right: 110px; margin-left: 5px; margin-top: 10px;" ><b>LOGOUT</b></button>
    </c:if>
    </div>
    <script>
        $("#btnloginMain").click(function () {
            location.href="${root}/loginF";
        });

        $("#btnlogoutMain").click(function () {
            $.ajax({
                type:"get",
                url:"${root}/logout",
                dataType:"text",
                success:function(res){
                    location.reload();
                },
            });
        });

    </script>
</header>
</body>
</html>