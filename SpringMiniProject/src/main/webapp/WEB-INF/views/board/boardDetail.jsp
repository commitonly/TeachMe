<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&family=Yeon+Sung&display=swap" rel="stylesheet">
<%--    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>--%>
    <%--     <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
       <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>--%>
    <%--    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>--%>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <style type="text/css">

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

        span.likes {
            cursor: pointer;
        }

        .likeusericon{
            cursor: pointer;
        }
        .redelete{
            cursor: pointer;
        }
        .report{
            cursor: pointer;
        }
        .boardbtn{
            width: 100px;
            height: 40px;
            border-radius: 15px;
            background-color: white;
            border: 1px solid black;
        }
        .boardbtn:hover {
            background-color: lightgrey;
        }
    </style>
    <script>

        $(function(){

            list();

            initlike();
            //????????? ?????? ????????? ????????? ?????? ?????????+????????? ????????? ??????
            $(".likeusericon").click(function(){
                var boardnum=${dto.boardnum};
                //console.log("boardnum="+boardnum);
                $.ajax({
                    type : "get",
                    url : "likesuser",
                    dataType : "json",
                    data : {"boardnum":boardnum},
                    success : function(res) {
                        var s="";
                        $.each(res,function(i,ids){

                            s+=ids+"<br><br>";
                            // if(i%2==1){
                            //     s+="<br><br>";
                            // }else{
                            //     s+="&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"
                            // }
                        });
                        if(res.length==0){
                            s="???????????? ????????? ????????????";
                        }
                        Swal.fire({

                            title: "???????????? ?????????: ${dto.likes}???<br>",

                            html:s,

                            confirmButtonText: "??????",

                        });

                    }
                });
            });
            $(document).on("click",".redelete", function (){
                var reboardnum=$(this).attr("reboardnum");
                var ans=confirm("????????? ?????????????????????????");
                if(ans){
                    $.ajax({
                        type:"get",
                        url:"../reboard/delete",
                        dataType:"text",
                        data:{"reboardnum":reboardnum},
                        success:function(res){
                            list();
                        }
                    });
                }
            });
            $(document).on("click",".report", function (){
                var boardnum=${dto.boardnum};
                // console.log("boardnum="+boardnum);
                var a='${sessionScope.loginok}';
                if(a==''){
                    alert("????????? ??? ??????????????????");
                    return;
                }
                var ans=confirm("?????? ???????????? ?????????????????????????");
                if(ans){
                    $.ajax({
                        type:"get",
                        url:"report",
                        dataType:"text",
                        data:{"boardnum":boardnum},
                        success:function(res){
                            // alert(res);
                            if(res==-1){
                                alert("?????? ???????????? ??????????????????");
                            }
                            else {
                                alert("????????? ?????????????????????");
                            }
                        }
                    });
                }
            });
        });

        function initlike(){ //???????????? ??? ???????????? ??????????????? ???????????? ??????????????? ????????? ????????????
            var boardnum=${dto.boardnum};
            var loginok='${sessionScope.loginok}';
            if(loginok=='')
                return;
            $.ajax({
                type : "get",
                url : "likesstate",
                dataType : "json",
                data : {"boardnum":boardnum},
                success : function(res) {
                    // alert(res);
                    if(res==1){

                      //  $(".fa fa-thumbs-o-up").attr("class","fa fa-thumbs-up").css("color","red");
                        $("span.likes i").attr("class","fa fa-thumbs-up").css("color","#4481eb");

                    }
                }
            });
        }
        function list(){
            var loginok = '${sessionScope.loginok}';
            var usernum = '${sessionScope.usernum}';
            var writeuser = '${dto.usernum}';
            var boardnum = ${dto.boardnum};

            var s = "";
            $.ajax({ //????????????????????????????????????
                type : "get",
                url : "../reboard/list",
                dataType : "json",
                data : {"boardnum":boardnum},
                success : function(res) {
                    $("b.banswer").text(res.length);
                    $.each(res, function (i, elt){
                        s+="<div>"
                        if(elt.nickname=='(????????????)') {
                            s+="<img src='../image/noprofilepicture.png' style='width: 30px; height: 30px;' class='rounded-circle' hspace='10'>";
                        }else{
                            if(elt.userphoto==null) { //???????????? ????????? ????????????
                                s+="<img src='../image/noprofilepicture.png' style='width: 30px; height: 30px;' class='rounded-circle' hspace='10'>";
                            }
                            if(elt.userphoto!=null) { //???????????? ????????? ????????????
                                s+="<img src='../upload/"+elt.userphoto+"' style='width: 30px; height: 30px;' class='rounded-circle' hspace='10'>";
                            }
                        }
                        s+="<b>"+elt.nickname+"</b>";
                        if (writeuser==elt.usernum){
                            s+="<span class='writer'>(?????????)</span><br>";
                        }
                        s+="<pre>&nbsp;&nbsp;<p style='font-size: 15px; font-family: Noto Sans KR!important;'>"+elt.recontent+"&nbsp;&nbsp;";
                        s+="</p><span class='day' style='color:gray; font-family: Noto Sans KR;!important;'>"+elt.writeday+"&nbsp;";
                        if(loginok=='yes' && usernum==elt.usernum){
                            s+='<i class="fa fa-close redelete" style="font-size:15px; color: black" reboardnum='+elt.reboardnum+'></i>';
                        }
                        s+="</span></pre></div><hr>"
                    });
                    $("div.alist").html(s);
                }
            });
        }
    </script>
</head>
<body>
<c:set var="root" value="<%=request.getContextPath() %>"/>
<div class="container" style="width: 1000px; padding: 100px; font-family: Noto Sans KR;">
    <table class="table table-bordered" style="width: 100%;">
        <tr>
            <td style="padding: 30px;">
                <h2><b>${dto.subject}</b></h2><br>
                <c:if test="${userphoto!='no'}"> <!--???????????? ??????-->
                    <img src="../upload/${userphoto}" width="40" height="40" class="rounded-circle"
                         onerror="this.src='../image/noprofilepicture.png'" hspace="10">
                </c:if>
                <c:if test="${userphoto=='no'}"> <!--???????????? ??????-->
                    <img src="../image/noprofilepicture.png" width="40" height="40" class="rounded-circle" hspace="10">
                </c:if>
                <b>${dto.nickname}</b>
                <span style="color: gray; font-size: 12px;">
					<fmt:formatDate value="${dto.writeday}" pattern="yyyy-MM-dd HH:mm"/>
					&nbsp;&nbsp;
					??????&nbsp; ${dto.readcount}
				</span>
            </td>
        </tr>
        <tr height="200">
            <td style="padding: 30px;">
                <pre style="margin: 15px;"><p style="font-size: 17px; font-family: Noto Sans KR;!important;">${dto.content}</p></pre> <!--????????? ??????-->
                <c:if test="${dto.photo!='no'}">    <!--????????? ????????????-->
                    <c:forTokens var="photo" items="${dto.photo}" delims=",">
                        <img src="../upload/${photo}" style="max-width: 400px;"
                             onerror="this.style.display='none'">
                    </c:forTokens>
                </c:if>
                <br><br>
                <span class="likes" style="margin: 10px;">
                <%--<i class='far fa-thumbs-up'></i>--%>
                    <i class="fa fa-thumbs-o-up" style="font-size:24px"><b style="font-size: 15px">
                &nbsp;?????????</b></i>
				</span>
                &nbsp;
                <span class="likeusericon" data-bs-toggle="modal" data-bs-target="#likeuserModal">
                <%--<i class='fas fa-user-alt' style='font-size:16px'></i>--%>
                    <i class="fa fa-user luser" style="font-size:24px">&nbsp;<b class="likesuser" style="font-size: 15px">
                    ${dto.likes}</b></i>
                </span>

                &nbsp;&nbsp;
                <i class="fa fa-commenting-o" style="font-size:24px">&nbsp;<b class="banswer" style="font-size: 15px">0</b></i>
                <i class="fa fa-warning report" style="font-size:24px; float: right; color: red"><b style="font-size: 15px; color: black;">&nbsp;????????????</b></i>
                <br><hr>
                <div class="alist"></div>
                <div class="aform">
                    <form id="aform">
                        <input type="hidden" name="boardnum" value="${dto.boardnum}">
                        <input type="hidden" name="usernum" value="${sessionScope.usernum}">
                        <div class="input-group">
                            <c:if test="${sessionScope.loginok!=null}">
                            <textarea name="recontent" id="recontent" style="width: 400px; height: 100px; box-shadow: none;" class="form-control" placeholder="????????? ??????????????????"></textarea>
                            <button type="button" class="btn btn-outline-dark" id="btnreboard" style="background-color: whitesmoke; color: black; box-shadow: none;">??????</button>
                            </c:if>
                            <c:if test="${sessionScope.loginok==null}">
                                <textarea name="recontent" id="recontent" style="width: 400px; height: 100px;" class="form-control" placeholder="????????? ??? ??????????????????"></textarea>
                            </c:if>
                        </div>
                    </form>
                </div>
                <div style="text-align: center; float: bottom;"><hr>

                <c:if test="${sessionScope.loginok!=null && sessionScope.usernum==dto.usernum}">
                <button type="button" class="boardbtn" onclick="location.href='boardUpdate?boardnum=${dto.boardnum}&currentPage=${currentPage}'">??????</button>
                <button type="button" class="boardbtn" onclick="if(confirm('???????????? ?????????????????????????')) location.href='delete?boardnum=${dto.boardnum}&currentPage=${currentPage}'">??????</button>
<%--                    <button class="boarddelete" type="button">??????</button>--%>
                </c:if>
                <button type="button" class="boardbtn" onclick="location.href='boardFree?boardtype=${dto.boardtype}&currentPage=${currentPage}'">??????</button>

                </div>
            </td>
        </tr>
    </table>
    <%--    <h1>${minboardnum},${dto.boardnum},${maxboardnum}</h1>--%>

    <c:if test="${dto.boardnum<maxboardnum}">
        <a href="nextboard?boardnum=${dto.boardnum}&currentPage=${currentPage}" style="color: black; text-decoration: none;">?????????&nbsp;
            <i class="fa fa-chevron-up" style="font-size:24px"></i>&nbsp;&nbsp;${nextboardsub}</a><hr>
    </c:if>




    <c:if test="${dto.boardnum>minboardnum}">
        <a href="prevboard?boardnum=${dto.boardnum}&currentPage=${currentPage}" style="color: black; text-decoration: none;">?????????&nbsp;
            <i class="fa fa-chevron-down" style="font-size:24px;cursor: pointer"></i>&nbsp;&nbsp;${prevboardsub}</a>
    </c:if>
    <script>
        $("span.likes").click(function() {
            var a='${sessionScope.loginok}';
            if(a==''){
                alert("????????? ??? ??????????????????");
                return;
            }
            var thumbs = $(this).find("i").attr("class");
            var likestate;
            if(thumbs=='fa fa-thumbs-o-up'){ //???????????????
                $(this).find("i").attr("class","fa fa-thumbs-up").css("color","#4481eb"); //?????????O
                likestate=1;
            } else { //???????????????
                $(this).find("i").attr("class","fa fa-thumbs-o-up").css("color","black"); //?????????X
                likestate=0;
            }

            var boardnum=${dto.boardnum}; //????????? ?????? ????????? ????????? ?????????
            //console.log(boardnum+","+likestate);
            $.ajax({
                type : "get",
                url : "likes",
                dataType : "json",
                data : {"boardnum":boardnum,"likestate":likestate},
                success : function(res) {
                    //  alert(res);
                    $("b.likesuser").text(res);
                }
            });
        });
        //????????????
        $("#btnreboard").click(function() {
            if ($("#recontent").val()=='') {
                alert("????????? ?????? ??? ??????????????????");
                return;
            }
            var fdata = $("#aform").serialize();
            $.ajax({
                type : "post",
                url : "../reboard/insert",
                dataType : "text",
                data : fdata,
                success : function(res) {
                    list();
                    $("#recontent").val("");
                }
            });
        });
    </script>
</div>
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
                                                               style="width: 100%; background-color:transparent; color: black;">??????</a>
                </li>
                <br>
                <li><a href="${root}/board/boardFree"><img src="../image/cccb.png"
                                                           style="width: 100%;padding-left:10px;">????????????</a></li>
                <br>
                <li><a href="${root}/qna/qnaList"><img src="../image/1ask.png" style="width:130%; padding-right: 25px;">????????????</a>
                </li>
            </ul>
        </li>
    </ul>
</nav>

<script>
    $(document).ready(function dos() {
        $('#main_menu > li > a').click(function () {
            $(this).next($('.snd_menu sub_menu')).slideToggle('fast');
            // $(this).show($('.snd_menu sub_menu')("slide",{direction:'left'},1000));
        })
        // e.stopPropagation();
    })
</script>
</body>
</html>