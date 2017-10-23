<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>修改信息</title>
<meta charset="utf-8">
<style type="text/css">
html, body {
	margin: 0;
	padding: 0;
	overflow-x: hidden
}

div a {
	text-decoration: none;
}

.tag {
	width: 100%;
	height: 30px;
	background-color: #f7f7f7;
	line-height: 30px;
}

.header img {
	vertical-align: middle;
}

#img-1 {
	vertical-align: middle;
	margin-left: 200px;
}

#img-2 {
	vertical-align: middle;
	margin-left: 20px;
}

.menu {
	margin: 30px;
	color: yellow;
}

.header {
	width: 100%;
	height: 10%;
	margin-left: 200px;
	font-size: 30px;
}

.home {
	width: 100%;
	height: 40px;
	background: #0098e0;
	margin-top: 10px;
}

.left-menu {
	width: 15%;
	height: 800px;
	margin-left: 250px;
	background: #eee;
	color: #666;
	margin-top: 30px;
	position: absolute;
	border-radius: 15px;
}

.tag-1 {
	color: #0298E5;
	font-weight: bold;
	font-size: 20px;
}

.tag-2 {
	float: right;
	margin-right: 200px;
}

.home a {
	margin-left: 200px;
	line-height: 40px;
	color: #ffffff;
}

.infor a {
	margin-top: 50px;
	color: #767676;
}

.infor div:hover {
	background: #ffffff;
}

.update {
	margin-top: 100px;
	margin-left: 800px;
}

.update input {
	width: 350px;
	height: 33px;
}

.tb {
	font-size: 23px;
	font-weight: 700;
}

.save input {
	width: 42.67px;
	height: 23px;
}

.uptitle {
	margin-left: 850px;
	margin-top: 100px;
	color: #00CCFF;
}
</style>
</head>

<body>
	<div>
		<div class="tag">
			<img id="img-1" src="images/1.png" alt=""><a href="">宜信官网</a> <img
				id="img-2" src="images/2.png" alt=""><span class="tag-1">xxx-xxx-xx</span><span
				class="tag-2">欢迎您，xxx <a href="home-page">&nbsp; &nbsp;退出</a></span>
		</div>
		<div class="header">
			<img src="images/logo.png"> 宜人贷理财账户管理系统
		</div>
		<div class="home">
			<a href="myAccount">返回我的账户首页</a>

		</div>
		<div class="left-menu">
			<div class="infor">
				<div class="menu">
					<a href="">基本信息</a>
				</div>
				<div class="menu">
					<a href="rechargeAndWithdrow.html">充值提现</a>
				</div>
				<div class="menu">
					<a href="">支付单</a>
				</div>
				<div class="menu">
					<a href="">资金流水</a>
				</div>
				<div class="menu">
					<a href="">投资风险等级测评</a>
				</div>
				<div class="menu">
					<a href="">修改密码</a>
				</div>
			</div>
		</div>
	</div>
	<div class="uptitle">
		<h1>修改您的账户信息</h1>
	</div>
	<div class="update">
		<form action="updateinfo" method="post">
			<input name="user.id" type="hidden" value="${user.id }" />
			<table class="tb">
				<tr>
					<td>姓名:</td>
					<td><input name="user.username" type="text"
						value="${user.username }" /></td>
				</tr>
				<tr>
					<td>电话:</td>
					<td><input name="user.phone" type="text"
						value="${user.phone }" /></td>
				</tr>
				<tr>
					<td>邮箱:</td>
					<td><input name="user.email" type="text"
						value="${user.email }" /></td>
				</tr>
				<tr>
					<td>地址:</td>
					<td><input name="user.address" type="text"
						value="${user.address }" /></td>
				</tr>
				<tr>
					<td>余额:</td>
					<td><input name="user.balance" type="text" readonly="readonly"
						value="${user.balance }" placeholder="只能查看！！" /></td>
				</tr>
				<tr>
					<td colspan="2" class="save">
						<button onclick="javascript:history.back(-1)">返回</button> <input
						type="submit" value="保存" />
					</td>
				</tr>
			</table>
		</form>
	</div>
</body>

</html>