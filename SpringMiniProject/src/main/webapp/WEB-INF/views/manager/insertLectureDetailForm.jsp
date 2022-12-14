<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
    <link rel="stylesheet" href="resources/css/manager/insertLectureDetailForm.css">
    <style type="text/css">
        .select-room {
            width: 150px;
            height: 32px;
            border: 1px solid lightgray;
            border-radius: 2px;
        }

        .container {
            margin-top: 50px;
            height: 81vh;
        }

        .margin-box {
            margin-bottom: 20px;
        }

        label {
            margin-bottom: 10px;
        }

        .body-check {
            line-height: 30px;
        }

        .title-box {
            margin-bottom: 30px;
        }

        .button-box {
            display: flex;
            justify-content: end;
        }

        .data-box {
            padding: 90px 90px 30px 90px;
        }
    </style>
</head>
<body class="body-check">
<c:set var="root" value="<%=request.getContextPath()%>"></c:set>
<div class="container">
    <form action="insertLectureDetail" method="post">
        <input hidden="hidden" name="lecnum" value="${dto.lecnum}">
        <input hidden="hidden" name="lecname" value="${dto.lecname}">
        <div class="row gutters">
            <div class="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                <div class="card h-100">
                    <div class="card-body">
                        <div class="account-settings">
                            <div class="user-profile">
                                <br>
                                <br>
                                <br>
                                <div class="user-avatar">
                                    <c:if test="${dto.lecphoto!=null}">
                                        <img src="upload/lecture/${dto.lecphoto}" class="img-full">
                                    </c:if>
                                    <c:if test="${dto.lecphoto==null}">
                                        <img src="resources/image/noimage2.png" class="img-full">
                                    </c:if>
                                </div>
                                <br>
                                <h4 class="user-name">${dto.lecname}</h4>
                                <h6 class="user-email">[${dto.lectypea}]-${dto.lectypeb}</h6>
                            </div>
                            <div class="about">
                                <h5 style="color: black">${dto.teaname}</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12 ">
                <div class="card h-100">
                    <div class="card-body data-box">
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12 title-box">
                                <h3 class="mb-2 text-dark">?????? ??????</h3>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 margin-box">
                                <div class="form-group">
                                    <label for="fullName" id="room-label" name="roomnum">?????????</label>
                                    <br>
                                    <select class="select-room" id="fullName" style="font-size: 13px" name="roomnum" required="required">
                                        <option class="room-option" value="101">101</option>
                                        <option class="room-option" value="102">102</option>
                                        <option class="room-option" value="201">201</option>
                                        <option class="room-option" value="202">202</option>
                                        <option class="room-option" value="301">301</option>
                                        <option class="room-option" value="302">302</option>
                                        <option class="room-option" value="401">401</option>
                                        <option class="room-option" value="402">402</option>
                                        <option class="room-option" value="501">501</option>
                                        <option class="room-option" value="502">502</option>
                                        <option class="room-option" value="601">601</option>
                                        <option class="room-option" value="602">602</option>
                                        <option class="room-option" value="701">701</option>
                                        <option class="room-option" value="702">702</option>
                                        <option class="room-option" value="801">801</option>
                                        <option class="room-option" value="802">802</option>
                                        <option class="room-option" value="901">901</option>
                                        <option class="room-option" value="902">902</option>
                                        <option class="room-option" value="1001">1001</option>
                                        <option class="room-option" value="1002">1002</option>
                                        <option class="room-option" value="1101">1101</option>
                                        <option class="room-option" value="1102">1102</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label>?????????</label>
                                    <input type="text" class="form-control lec-price" oninput="numberOnly(this)" name="price"
                                           placeholder="????????? ??????" required="required">
                                </div>
                                <br>
                                <br>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 margin-box">
                                <div class="form-group">
                                    <label>?????????</label>
                                    <br>
                                    <label><input type="checkbox" class="lecday" name="lecday" value="1"> ?????????</label>
                                    <label><input type="checkbox" class="lecday" name="lecday" value="2"> ?????????</label>
                                    <label><input type="checkbox" class="lecday" name="lecday" value="3"> ?????????</label>
                                    <label><input type="checkbox" class="lecday" name="lecday" value="4"> ?????????</label>
                                    <label><input type="checkbox" class="lecday" name="lecday" value="5"> ?????????</label>
                                    <br>
                                    <label><input type="checkbox" class="lecday" name="lecday" value="6"> ?????????</label>
                                    <label><input type="checkbox" class="lecday" name="lecday" value="7"> ?????????</label>
                                </div>
                                <span name="showLecday"></span>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <div style="margin-bottom: 10px">?????? ??????</div>
                                    <span id="lec-time">
                                    </span>
                                </div>
                            </div>
                        </div>
                        <br>
                        <div class="row gutters">
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12 margin-box">
                                <div class="form-group">
                                    <label>?????????</label>
                                    <br>
                                    <select class="select-room lec-month" name="lecmonth" style="font-size: 13px" required="required">
                                    </select>
                                </div>
                            </div>
                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                <div class="form-group">
                                    <label for="lecture-year">?????? ??????</label>
                                    <input type="number" class="form-control" id="lecture-year" name="lecyear"
                                           oninput="numberOnly(this)" placeholder="?????? ??????" required="required">
                                </div>
                            </div>
                        </div>
                        <br>
                        <br>
                        <br>
                        <div class="row gutters">
                            <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                <div class="text-right button-box">
                                    <button type="submit" name="insertDetail" class="btn btn-outline-dark">????????????
                                    </button> &nbsp;
                                    <button type="button" id="detail-Back" class="btn btn-outline-secondary">????????????
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<script>
    // //?????? 1000 ????????? ?????? ?????????
    // const formatPrice = (target) => {
    //   // ????????? ?????? ??? ??????
    //   target.value = Number(target.value
    //           .replace(/[^0-9]/g, ''))
    //           // .toLocaleString();
    // }

    // //DB??? ?????? ??? ?????? ?????? ??????
    // const reg = /[^\w\s???-???]|[\_]/g;
    // // ??????????????? ?????????
    // const regReplace = (str) => {
    //   return str.replace(reg, ``);
    // }
    // // ???????????? ?????? ??? ?????????
    // const removeComma = (target) => {
    //   const value = target.value;
    //
    //   document.querySelector('.lec-price').innerHTML = regReplace(value);

    //?????? ?????? ???????????? ?????? ????????? ??????
    var date = new Date();
    var year = date.getFullYear();
    $("#lecture-year").attr("value", year);

    //?????? ??? ???????????? ???????????? ??????
    var month = date.getMonth() + 1;
    var html = '';
    for (var i = 1; i <= 12; i++) {
        html += "<option value = '" + i + "'>" + i + "???</option>";
    }
    $(".lec-month").append(html);
    $(".lec-month").val(month);

    $(".lec-month option").filter(function () {
        //may want to use $.trim in here
        return $(this).text() == month;
    }).attr('selected', true);

    //?????? ?????? ?????????
    var lecHtml = '';
    // $("#lecTime-button").click(function () {
    for (var i = 1; i <= 10; i++) {
        lecHtml += "<label><input type='checkbox' name='lectime' value = '" + i + "'> " + i + "??????</input></label>&nbsp;&nbsp;";
    }
    ;
    $("#lec-time").html(lecHtml);

    // var lecmonth = $(".lec-month").val();

    // var lecday = $('input:checkbox[name="lecday"]').val();

    <%--    function showLecday() {--%>
    <%--      const arr = [];--%>
    <%--      const lecday = document.getElementsByName("lecday");--%>
    <%--      for(var i=0; i<lecday.length; i++){--%>
    <%--        if(lecday[i].checked==true) {--%>
    <%--          arr.push(lecday[i].value);--%>
    <%--        }--%>
    <%--      }--%>
    <%--      document.getElementsByName("showLecday").textContent = arr;--%>
    <%--    }--%>

    <%--    console.log(lecday);--%>
    <%--    console.log(lecmonth);--%>

    <%--    //ajax??? ????????? ???????????? ????????? ?????? ????????? ????????????--%>
    <%--    $.ajax({--%>
    <%--        type : "get",--%>
    <%--        url : "${root}/lecTimeCheck",--%>
    <%--        dataType : "json",--%>
    <%--        data : {"lecnum" : ${dto.lecnum}},--%>
    <%--        success : function (res) {--%>
    <%--        },--%>
    <%--    });--%>
    <%--});--%>

    //????????? ????????? ????????????
    const numberOnly = (target) => {
        // ????????? ?????? ??? ??????
        target.value = Number(target.value
            .replace(/[^0-9]/g, ''))
    }

    //???????????? ?????? ????????? ????????????
    $("#detail-Back").click(function () {
        history.back();
    });
</script>
</body>
</html>