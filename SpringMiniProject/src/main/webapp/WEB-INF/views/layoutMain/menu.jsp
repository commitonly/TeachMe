<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"></c:set>
<link rel="stylesheet" type="text/css" href="${root}/css/qnamenu.css">
  <span class="position-absolute trigger"><!-- hidden trigger to apply 'stuck' styles --></span>
    <nav class="navbar navbar-expand-sm sticky-top navbar-dark" style="border: 0">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbar1">
            <span class="navbar-toggler-icon"></span>
        </button>
            <div class="collapse navbar-collapse" id="navbar1" style="margin: 0 auto; display: flex;">
                <ul class="navbar-nav" style="">
                    <li class="nav-item" style="border: 0"></li>
                    <li class="nav-item active" style="border: 0">
                        <a class="nav-link" href="/mini/" style="margin-left: 20px; margin-right: 20px;" id="menucolor">Home</a>
                    </li>
                    <li class="nav-item active" style="border: 0">
                        <a class="nav-link" href="${root}/lecture/lectureList" style="margin-left: 20px; margin-right: 20px;" id="menucolor2">lecture</a>
                    </li>
                    <li class="nav-item active" style="border: 0">
                        <a class="nav-link" href="${root}/board/boardFree" style="margin-left: 20px; margin-right: 20px;" id="menucolor3">community</a>
                    </li>
                    <li class="nav-item active" style="border: 0">
                        <a class="nav-link" href="${root}/qna/qnaList" style="margin-left: 20px; margin-right: 20px;" id="menucolor4">Q & A</a>
                    </li>
                    <li class="nav-item"></li>
                </ul>
            </div>
        </div>
    </nav>

</body>
</html>
