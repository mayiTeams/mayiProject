<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>宜人贷登录</title>
<link rel="stylesheet" type="text/css" href="">
<style type="text/css">
body {
	margin: 0;
	width: 100%;
	overflow-x: auto;
}

a {
	text-decoration: none;
}

.xd-hand {
	background: #f7f7f7;
	height: 25px;
}

.hand-1 {
	margin-left: 20%;
	float: left;
}

.hand-2 {
	margin-left: 60%;
}

.hand-2 a {
	color: gray;
	font-size: 13px;
}

.xd-two {
	margin-top: 20px;
	height: 90px;
}

.two-1 {
	margin-left: 400px;
	position: absolute;
}

.two-2 {
	font-size: 20px;
	line-height: 90px;
	margin-left: 720px;
}

.two-2 a {
	color: gray;
	line-height: 90px;
	float: left;
}

.all {
	background: #f4f4f4;
	height: 500px;
}

.xd-three {
	width: 58%;
	height: 450px;
	position: absolute;
	margin-top: 20px;
	margin-left: 23%;
	text-align: center;
	border: 1px solid #dfdfdf;
	background: #ffffff;
}

.three-left {
	padding: 2px;
	height: 440px;
	width: 55%;
	border: 1px solid blue;
	float: left;
}

.xd-three input {
	height: 20px;
	width: 250px;
}

.password {
	margin-top: 20px;
}

.btn1 button {
	margin-top: 30px;
	height: 35px;
	width: 250px;
	margin-left: 20px;
	background: #0079d2;
	border: 2px solid #fff;
	color: #fff;
	border-radius: 5px;
	font-size: 20px;
}

.btn2 {
	margin-top: 20px;
}

.xd-four {
	margin-top: 30px;
	margin-left: -250px;
}

.three-right {
	width: 45%;
	height: 440px;
	position: absolute;
	margin-left: 600px;
}

.botton {
	position: fixed;
	width: 100%;
	height: 180px;
	bottom: 0px;
	background: #ffffff;
	opacity: 0.9;
}

.botton-1 {
	padding: 60px;
	margin-left: 100px;
	font-size: 20px;
	float: left;
	position: absolute;
}

.botton-1 b {
	color: #fa7d23;
	font-size: 50px;
}

.botton-2 {
	width: 15%;
	height: 65px;
	background: #53aef3;
	border-radius: 8px;
	line-height: 65px;
	margin-left: 800px;
	position: absolute;
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
		<div class="hand-1">
			<img src="img/zz-1.png">
		</div>
		<div class="hand-2">
			<a href="gologin">欢迎来到宜人贷！登录 |</a> <a href="goRegister"
				style="color: red;"> 快速注册</a><a href="#">| 新手引导</a><a href="#">|
				帮助中心</a>
		</div>
	</div>
	<div class="xd-two">
		<div class="two-1">
			<img src="img/zz-2.png">
		</div>
		<div class="two-2">
			<a href="#">首页 &nbsp;&nbsp;&nbsp;</a> <a href="#">我要出借
				&nbsp;&nbsp;&nbsp;</a> <a href="#">我要借款 &nbsp;&nbsp;&nbsp;</a> <a
				href="#">安全保障 &nbsp;&nbsp;&nbsp;</a> <a href="#">信息披露
				&nbsp;&nbsp;&nbsp;</a> <a href="#">手机客户端 &nbsp;&nbsp;&nbsp;</a> <a
				href="#">宜人问答 &nbsp;&nbsp;&nbsp;</a> <a href="#">INVESTORS
				&nbsp;&nbsp;&nbsp;</a>
		</div>

	</div>
	<div class="all">
		<div class="xd-three">
			<div class="three-left">
				<p style="font-size: 20px; color: gray; margin-left: -400px;">登录宜人贷</p>
				<p>
					<img src="img/zz-4.png">
				</p>
				<form name="loginFrom" method="post" action="login.action">

					<div class="name">
						账户: <input type="text" name="user.username" id="user"
							placeholder="请输入您的用户名！">
					</div>
					<div class="password">
						密码: <input type="password" name="user.password" id="password"
							placeholder="请输入您的密码！">
					</div>
					<div class="btn1">
						<button onclick="login()">立即登陆</button>
					</div>
					<div class="btn2">
						没有账号？ <a href="goRegister" style="color: red;"> 立即注册 </a>

					</div>
					<div class="xd-four">
						借款人可选择第三方登录 :<a
							href="https://graph.qq.com/oauth/show?which=Login&display=pc&response_type=code&client_id=101325517&redirect_uri=https%3A%2F%2Flogin.yirendai.com%2Fqqlogin%2FcallBack&state=bea269d68e3c4e419b80d847e20d6ca2"><img
							style="position: absolute;" src="img/zz-5.png"></a>
					</div>
				</form>

			</div>
			<div class="three-right">
				<img src="img/zz-6.png">
			</div>
		</div>
	</div>
	<div class="xd-five">
		<img src="img/zz-7.png">
	</div>
	<div class="botton">
		<div class="botton-1">
			宜人贷借款平台已累计房贷超过:<b>&nbsp;300亿</b>
		</div>
		<div class="botton-2">
			<a href="#">测测你能借多少</a>
		</div>
	</div>
</body>

</html>