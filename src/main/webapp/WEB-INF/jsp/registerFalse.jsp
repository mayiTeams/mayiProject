<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<title>注册页面</title>
<link rel="stylesheet" type="text/css" href="css/register.css">
<script type="text/javascript" src="js/register.js"></script>
</head>

<body>
	<form onsubmit="return judge()" name="registerFrom" method="post"
		action="register">
		>
		<div class="main">
			<div class="center"></div>
			<div class="logo"></div>
			<div class="head">

				<h1>用户注册</h1>
			</div>
			<div class="name">
				用&nbsp;户&nbsp;名&nbsp;称&nbsp;:&nbsp; <input type="text"
					name="user.username" id="name" placeholder="请输入您的用户名！">
			</div>
			<div class="password">
				登&nbsp;陆&nbsp;密&nbsp;码&nbsp;:&nbsp; <input type="password"
					name="user.password" id="password" placeholder="请输入您的密码！">
			</div>
			<div>
				<h1>你输入的用户名已经存在，请重新输入！</h1>
			</div>

			<div class="btn1">
				<button type="submit">注册</button>
			</div>
			<div class="btn2">
				<button>重置</button>
			</div>
			<div class="foot">Copyright&copy;2017-蚂蚁小分队版权所有</div>
		</div>
	</form>
</body>

</html>