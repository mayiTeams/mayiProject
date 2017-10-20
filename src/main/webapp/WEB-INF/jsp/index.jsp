<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>ä¸»é¡µ</title>
    <style type="text/css">
    body {
        margin: 0;
        width: 100%;
    }

    a {
        text-decoration: none;
    }

    .xd-hand {
        height: 25px;
    }

    .hand-1 {
        margin-left: 15%;
        float: left;
    }

    .hand-2 {
        margin-left: 80%;
    }

    .hand-2 a {
        color: gray;
        font-size: 15px;
    }

    .xd-two {
        margin-top: 10px;
        height: 90px;
    }

    .two-1 {
        margin-left: 16%;
        float: left;
    }

    .two-2 {
        font-size: 25px;
        line-height: 90px;
        margin-left: 30%;
    }

    .two-2 a {
        color: gray;
        line-height: 90px;
        float: left;
    }

    .two-3 {
        margin-top: 8px;
        position: absolute;
        margin-left: 70%;
    }

    .xd-three {
        margin-top: 10px;
        height: 392px;
        background-image: url(img/11.png);
    }

    .three-1 {
        width: 20%;
        height: 320px;
        border: 1px solid #79bcef;
        float: right;
        margin-top: 35px;
        margin-right: 410px;
        text-align: center;
        opacity: 0.9;
    }

    .three-1 p {
        font-family: KaiTi;
        color: #fff;
    }

    .three-2 {
        width: 76%;
        height: 50px;
        margin-left: 40px;
        background: #f79131;
    }

    .three-2 a {
        color: #fff;
        font-size: 18px;
        line-height: 50px;
    }

    .three-3 {
        width: 100%;
        height: 62px;
        background: #53b5e4;
        font-family: KaiTi;
        color: #fff;
        font-size: 20px;
        line-height: 60px;
    }

    .xd-four {
        margin-top: 10px;
        text-align: center;
    }

    .xd-five {
        margin-top: -20px;
    }

    .xd-six {
        height: 700px;
        background-image: url(img/6.png);
    }

    .six-1 {
        height: 413px;
        width: 14%;
        margin-left: 18%;
        position: absolute;
        margin-top: 215px;
    }

    .six-2 {
        height: 413px;
        width: 13%;
        margin-left: 35%;
        position: absolute;
        margin-top: 215px;
    }

    .six-3 {
        height: 413px;
        width: 14%;
        margin-left: 51%;
        position: absolute;
        margin-top: 215px;
    }

    .six-4 {
        height: 413px;
        width: 14%;
        margin-left: 68%;
        position: absolute;
        margin-top: 215px;
    }

    .botton {
        position: fixed;
        width: 100%;
        height: 180px;
        bottom: 0px;
        background: #ffffff;
    }

    .botton-1 {
        padding: 60px;
        margin-left: 7%;
        font-size: 20px;
        float: left;
    }

    .botton-1 b {
        color: #fa7d23;
        font-size: 50px;
        position: absolute;
    }

    .botton-2 {
        width: 15%;
        height: 65px;
        background: #53aef3;
        border-radius: 8px;
        line-height: 65px;
        margin-left: 42%;
        margin-top: 50px;
        text-align: center;
    }

    .botton-2 a {
        color: #fff;
        font-size: 22px;
    }
    </style>
</head>

<body>
    <div class="xd-hand">
        <div class="hand-1"><img src="img/a1.png"></div>
        <div class="hand-2"><a href="login.jsp"> ç»å½ |</a> <a href="register.jsp" style="color: red;"> å¿«éæ³¨å </a><a href="#">| ç½è´·ç¥è¯æ®å</a></div>
    </div>
    <div class="xd-two">
        <div class="two-1"><img src="img/b2.png"></div>
        <div class="two-2">
            <a href="#" style="color:#0096e0; ">é¦é¡µ &nbsp;&nbsp;&nbsp;</a>
            <a href="#">æè¦åºå &nbsp;&nbsp;&nbsp;</a>
            <a href="#">æè¦åæ¬¾ &nbsp;&nbsp;&nbsp;</a>
            <a href="#">å®å¨ä¿é &nbsp;&nbsp;&nbsp;</a>
            <a href="#">åºåäººæè² &nbsp;&nbsp;&nbsp;</a>
            <a href="#">ä¿¡æ¯æ«é² &nbsp;&nbsp;&nbsp;</a>
        </div>
        <div class="two-3"><a href="#"><img src="img/4.png"></a></div>
    </div>
    <div class="xd-three">
        <div class="three-1">
            <p style="font-size: 30px; "><b>å®å¨&nbsp;  ä¸ä¸</b></p>
            <p style="font-size: 30px; ">å®ä¿¡åç &nbsp; åè´¨ä¿è¯</p>
            <div class="three-2"><a href="register.jsp">å¿«éæ³¨å</a></div>
            <p> å·²æè´¦å·ï¼<a href="login.jsp">ç«å³ç»å½</a></p>
            <div class="three-3">ç½è´·æé£é©ï¼åºåéè°¨æï¼</div>
        </div>
    </div>
    <div class="xd-four"><img src="img/3.png"></div>
    <div class="xd-five"><img src="img/5.png"></div>
    <div class="xd-six">
        <a href="#">
            <div class="six-1"></div>
        </a>
        <a href="#">
            <div class="six-2"></div>
        </a>
        <a href="#">
            <div class="six-3"></div>
        </a>
        <a href="#">
            <div class="six-4"></div>
        </a>
    </div>
    <div class="xd-seven"><img src="img/7.png"></div>
    <div class="botton">
        <div class="botton-1">å®äººè´·åæ¬¾å¹³å°å·²ç´¯è®¡æ¿è´·è¶è¿:<b>&nbsp;300äº¿</b></div>
        <div class="botton-2"><a href="#">æµæµä½ è½åå¤å°</a></div>
    </div>
</body>

</html>