<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TeachMe입시학원 | Study and Changes Life</title>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <c:set var="root" value="<%=request.getContextPath() %>"/>
    <script src="${pageContext.request.contextPath}/resources/javascript/qna.js"></script>
    <link rel="stylesheet" type="text/css" href="${root}/css/qna.css">
</head>

<body>
<h1 class="qnaTitle">
    TeachMe 지원
</h1>

<div class="container">
    <div class="askBox">
        <button type="button" onclick="location.href='qnaList?'" class="askBoxAll">전체글보기</button>&nbsp;
        <%-- 로그인이 되어 있을 경우에만 나의문의보기 활성화 코드 --%>
        <c:if test="${sessionScope.loginok!=null}">
            <button type="button" onclick="location.href='qnaList?usernum=${sessionScope.usernum}'" class="myAsk">
                나의문의보기
            </button>
        </c:if>
    </div>
    <br>
    <div class="qnaList">
        <h3 class="totalList">총 ${totalCount} 개의 글이 있습니다</h3>
    </div>
    <table class="table table-bordered">
        <tr>
            <th style="width: 30px; text-align:center; ">번호</th>
            <th style="width: 150px;text-align:center; ">제목</th>
            <th style="width: 50px;text-align:center; ">작성자</th>
            <th style="width: 20px;text-align:center; ">작성일</th>
        </tr>
        <%--        --%>
        <c:if test="${totalCount==0 }">
            <tr>
                <td colspan="6" align="center">
                    <h5 style="padding-top: 5px;"> 등록된 문의글이 없습니다 </h5>
                </td>
            </tr>
        </c:if>
        <c:if test="${totalCount>0 }">
            <c:forEach var="dto" items="${list}">
                <tr style="background-color: ${dto.gongzitype==0?'white':'white'}">
                    <td align="center">
                        <c:if test="${dto.gongzitype==0}">
                            <span class="gongzi"><b>공지</b></span>
                        </c:if>

                        <c:if test="${dto.gongzitype==1}">
                            ${no}
                        </c:if>

                    </td>
                    <c:set var="no" value="${no-1}"/>
                    <td>
                        <c:if test="${sessionScope.loginok==null}">
                            회원전용
                        </c:if>
                        <!-- 답글일경우 level 1당 2칸 띄우기  -->
                        <c:forEach begin="1" end="${dto.relevel}">
                            &nbsp;&nbsp;
                        </c:forEach>
                        <!-- 답글일 경우 답글 이미지 넣기 -->
                        <c:if test="${dto.relevel>0}">


                            <c:if test="${sessionScope.loginok!=null}">
                                <a href="qnaDetail?qnanum=${dto.qnanum}&currentPage=${currentPage}"
                                   class="subject-tm"></a>
                                <img src="../image/reply.jpg" width="10px;"
                                     style="background-color: white; margin-bottom: 5px;">
                                <img src="../image/ans.jpg" width="20px;" style="background-color: white">
                                <img src="../image/lock2.png" width="10px;" style="background-color: white">
                            </c:if>

                        </c:if>



                        <c:if test="${sessionScope.loginok!=null || sessionScope.email=='admin@gmail.com'}">
                        <a href="qnaDetail?qnanum=${dto.qnanum}&currentPage=${currentPage}" class="subject-tm">
                            </c:if>
                            <c:if test="${sessionScope.loginok!=null and dto.relevel==0 and dto.qnatype!='공지사항' and sessionScope.usernum!=dto.usernum and sessionScope.usernum!=12}">
                                <img src="../image/lockimg.jpg" width="10px;" style="background-color: white">
                            </c:if>
                            <c:if test="${sessionScope.loginok!=null}">
                            </c:if>
                                ${dto.subject}&nbsp;&nbsp;
                            <c:if test="${sessionScope.loginok!=null and dto.qnatype=='공지사항'}">
                                <span style="color: red; text-decoration-style: solid;"><b style="margin-left: 37%;">티치미&nbsp;${dto.qnatype}</b></span>
                            </c:if>
                            <c:if test="${sessionScope.loginok!=null and dto.qnatype!='공지사항'}">
                                ${dto.qnatype}
                            </c:if>
                            <c:if test="${dto.photo!='no' and sessionScope.loginok!=null}">
                                <i class="fa fa-picture-o"></i>
                            </c:if>
                            <c:if test="${dto.relevel>0 and sessionScope.loginok!=null}">
                                <b style="color: orange; text-decoration: none;">답변완료</b>
                            </c:if>

                        </a>
                    </td>
                    <c:set var="username" value="${resultInfo.dto.username}"/>
                    <c:set var="totalLength" value="${fn:length(dto.username)}"/>
                    <c:set var="first" value="${fn:substring(dto.username, 0, 1)}"/>
                    <c:set var="last" value="${fn:substring(dto.username, 3, totalLength)}"/>

                    <td align="center">
                        <c:if test="${!empty dto.username and dto.username!='티치미' and sessionScope.usernum!=dto.usernum}">
                            <c:out value="${first}**${last}"/>
                        </c:if>
                        <c:if test="${dto.username=='티치미' || sessionScope.usernum==dto.usernum}">
                            <c:out value="${dto.username}"/>
                        </c:if>


                    <td align="center">
                        <fmt:formatDate value="${dto.writeday}" pattern="yyyy-MM-dd"/>
                    </td>
                </tr>
            </c:forEach>
        </c:if>
    </table>
</div>
<br>
<!-- 글쓰기 버튼은 로그인을 해야만 보인다 -->
<c:if test="${sessionScope.loginok!=null}">
    <c:choose>
        <c:when test="${sessionScope.email=='admin@gmail.com'}">
            <button type="button" class="btn btn-outline"
                    onclick="location.href='qnaForm'" id="writecolor" style="text-align: center;">공지등록
            </button>
        </c:when>
        <c:otherwise>
            <button type="button" class="btn btn-outline"
                    onclick="location.href='qnaForm'" id="writecolor" style="text-align: center;">문의등록
            </button>
        </c:otherwise>
    </c:choose>

    <br><br>

</c:if>


<div class="container" style="width: 100%;">
    <div class="paging">
        <ul class="pagination" style="margin-bottom: 60px; ">
            <c:if test="${usernum!=0}">
                <c:if test="${startPage>1}">
                    <li class="page-item"><a href="qnaList?usernum=${sessionScope.usernum}&currentPage=${startPage-1}"
                                             class="page-link" id="page-button-tm4" style="width: 70px;">이전</a></li>
                </c:if>
                <!-- 페이지 번호 -->
                <c:forEach var="pp" begin="${startPage}" end="${endPage}">
                    <c:if test="${pp==currentPage}">
                        <li class="page-item active"><a class="page-link" id="page-button-tm"
                                                        href="qnaList?usernum=${sessionScope.usernum}&currentPage=${pp}">${pp}</a>
                        </li>
                    </c:if>

                    <c:if test="${pp!=currentPage}">
                        <li class="page-item"><a class="page-link" id="page-button-tm2"
                                                 href="qnaList?usernum=${sessionScope.usernum}&currentPage=${pp}">${pp}</a>
                        </li>
                    </c:if>

                </c:forEach>
                <c:if test="${endPage<totalPage}">
                    <li class="page-item"><a href="qnaList?usernum=${sessionScope.usernum}&currentPage=${endPage+1}"
                                             class="page-link" id="page-button-tm7" style="width: 70px;">다음</a></li>
                </c:if>
            </c:if>


            <c:if test="${usernum==0}">
                <c:if test="${startPage>1}">
                    <li class="page-item"><a href="qnaList?currentPage=${startPage-1}" class="page-link"
                                             id="page-button-tm5" style="width: 70px;">이전</a></li>
                </c:if>
                <!-- 페이지 번호 -->
                <c:forEach var="pp" begin="${startPage}" end="${endPage}">
                    <c:if test="${pp==currentPage}">
                        <li class="page-item active"><a class="page-link" id="page-button-tm6"
                                                        href="qnaList?currentPage=${pp}">${pp}</a></li>
                    </c:if>

                    <c:if test="${pp!=currentPage}">
                        <li class="page-item"><a class="page-link" id="page-button-tm8"
                                                 href="qnaList?currentPage=${pp}">${pp}</a></li>
                    </c:if>

                </c:forEach>
                <c:if test="${endPage<totalPage}">
                    <li class="page-item"><a href="qnaList?currentPage=${endPage+1}" class="page-link"
                                             id="page-button-tm3" style="width: 70px;">다음</a></li>
                </c:if>
            </c:if>


        </ul>
    </div>
</div>
</div>

<%-- 퀵 메뉴 삽입 --%>
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

</body>
</html>
