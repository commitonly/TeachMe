<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--
  Created by IntelliJ IDEA.
  User: taemin
  Date: 2022/10/08
  Time: 5:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" type="text/css" href="${root}/css/qna.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<html>
<head>
    <title>Title</title>
</head>

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
        width: 50px;
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







    #allbs{
        text-align: center;
        display: block;
        display: flex;
        margin-bottom: 30px;
        margin-top: 20px;
    }
</style>
<body>


<div style="border: 1px solid black; width: 500px; height: 300px; margin: 0 auto; margin-bottom: 50px; margin-top: 50px; text-align: center; border-radius: 15px; ">
    <h2 style="text-align: center; margin-top: 70px; margin-bottom: 45px;" >비밀번호 확인</h2>

    <form action="qnaDetail" name="frm" method="get" style="text-align: center;">
        <input type="hidden" name="qnanum" value="${dto.qnanum}">
        <input type="hidden" name="currentPage" value="${currentPage}">


            <div id="allbs">

                <table style="text-align: center; align-items: center; display: block; margin: 0 auto;" >
              <tr>
                  <th style="text-align: center; display: block; align-items: center; margin-right: 10px;" > 비밀번호 </th>
                  <td>
                      <c:choose>
                      <c:when test="${dto.restep==0}">
                          <input type="password" name="pass" size="20" maxlength="4" placeholder="비밀번호 4자리 입력" pattern="[0-9]+" style="text-align: center;" id="pass1" required="required">
                      </c:when>
                        <c:otherwise>
                          <input type="password" name="pass" size="14" maxlength="4" placeholder="숫자 4자리 입력" pattern="[0-9]+" style="text-align: center;" id="pass1" required="required">
                        </c:otherwise>
                      </c:choose>
                  </td>
              </tr>
          </table>

            </div>

       <div style="padding-top: 20px;">
        <button type="button" onclick="printName()" style="width: 50px; margin-bottom: 20px; background-color: white; border-radius: 15px; border: 1px solid grey;" id="checkpass">확인</button>
        <button type="button" onclick="location.href='qnaList' " style="width: 50px; margin-bottom: 20px; background-color: white; border-radius: 15px; border: 1px solid grey; margin-left: 5px;">취소</button>
       </div>

    </form>
</div>

<script>
    function printName() {
        const pass1=
            document.getElementById('pass1').value;
        if (pass1==${dto.pass}){
            location.href="secretQna?qnanum=${dto.qnanum}&currentPage=${currentPage}";
            }
        else
        {
            alert("비밀번호가 맞지 않습니다");
            location.reload();
        }

    }

    $(document).ready(function dos() {
        $('#main_menu > li > a').click(function () {
            $(this).next($('.snd_menu sub_menu')).slideToggle('fast');
        })
    })


</script>

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
