<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>资金流水</title>
<meta charset="utf-8">
<style type="text/css">
head, body {
	width: 100%;
	height: 100%;
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
	border-radius: 15px;
	float: left;
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
	color: white;
}

.infor a {
	margin-top: 50px;
	color: #767676;
}

.infor div:hover {
	background: #0098e0;
	color: white;
}

.right-info {
	margin-top: 30px;
	margin-left: 600px;
	border-radius: 15px;
	height: 700px;
	width: 1233px;
	border: 2px solid #eee;
}

.right-info th {
	width: 80px;
	text-align: center;
}

.right-info tr {
	width: 200px;
	height: 50px;
}

.right-info td {
	height: 40px;
	text-align: center;
}

.colm {
	background: #eef;
}

.right-info p {
	margin-left: 35px;
	width: 100%;
}

.table {
	margin-left: 35px;
}
</style>
</head>

<body>
	<div>
		<div class="tag">
			<img id="img-1" src="images/1.png" alt=""><a href="">宜信官网</a> <img
				id="img-2" src="images/2.png" alt=""><span class="tag-1">xxx-xxx-xx</span><span
				class="tag-2">欢迎您，${user.getUsername()}  <a href="home-page">&nbsp; &nbsp;退出</a></span>
		</div>
		<div class="header">
			<img src="images/logo.png"> 宜人贷理财账户管理系统
		</div>
		<div class="home">
			<a href="home-page">返回我的账户首页</a>
		</div>
		<div class="left-menu">
			<div class="infor">
				<div class="menu">
					<a href="user-info">基本信息</a>
				</div>
				<div class="menu">
					<a href="rechargeAndWithdrow">借贷出借</a>
				</div>
				<div class="menu">
					<a href="payment">支付单</a>
				</div>
				<div class="menu">
					<a href="fund-flow">资金流水</a>
				</div>
				<div class="menu">
					<a href="risk-investment-analyse">投资风险等级测评</a>
				</div>
				<div class="menu">
					<a href="changePassword">修改密码</a>
				</div>
			</div>
		</div>
		<div class="right-info">
			<div class="table">
			<div>
			<a href="home-page">我的账户</a>>资金流水</div>
				<div>
					<p>当前余额：${user.getBalance()}元</p>
				</div><br> <br>
				<table width="60%" border="1" cellpadding="0" cellspacing="0">
					<tr class="to">
						<th>序号</th>
						<th>业务日期</th>
						<th>交易项目</th>
						<th>收入(元)</th>
						<th>支出(元)</th>
						<th>余额(元)</th>
					</tr>
					<c:forEach items="${lists}" var="temp">
						<tr>
							<td>${temp.id}</td>
							<td>${temp.createdate}</td>
							<td>${temp.project}</td>
							<td>${temp.income}</td>
							<td>${temp.outcome}</td>
							<td>${temp.allbalance}</td>
						</tr>
					</c:forEach>
				

				</table>
			</div>
		</div>
	</div>
</body>

</html>