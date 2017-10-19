<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>基本信息</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/user-info.css">
</head>

<body>

	<div>
		<div class="tag">
			<img id="img-1" src="images/1.png" alt=""><a href="">宜信官网</a> <img
				id="img-2" src="images/2.png" alt=""><span class="tag-1">xxx-xxx-xx</span><span
				class="tag-2">欢迎您，xxx <a href="">&nbsp; &nbsp;退出</a></span>
		</div>
		<div class="header">
			<img src="images/logo.png"> 宜人贷理财账户管理系统
		</div>
		<div class="home">
			<span><a href="index.html">返回我的账户首页</a></span>
		</div>
		<div class="left-menu">
			<div class="infor">
				<div class="menu">
					<a href="user-info.jsp">基本信息</a>
				</div>
				<div class="menu">
					<a href="rechargeAndWithdrow.jsp">充值提现</a>
				</div>
				<div class="menu">
					<a href="payment.jsp">支付单</a>
				</div>
				<div class="menu">
					<a href="fund-flow.jsp">资金流水</a>
				</div>
				<div class="menu">
					<a href="risk-investment-analyse.jsp">投资风险等级测评</a>
				</div>
				<div class="menu">
					<a href="changePassword.jsp">修改密码</a>
				</div>
			</div>
		</div>
	</div>
	<div class="infotitle">个人信息</div>

	<div class="info">

		<div class="info1">用户名:&nbsp;&nbsp;${user.getUsername()}</div>
		<div class="info1">性别:&nbsp;&nbsp; ${user.getSex()}</div>

		<div class="info1">联系电话:&nbsp;&nbsp;${user.getPhone()}</div>
		<div class="info1">电子邮箱:&nbsp;&nbsp;${user.getEmail()}</div>
		<div class="info1">地址:${user.getAddress()}</div>
		<div class="info1">余额:${user.getBalance()}</div>
		<div class="click">
			<a href="update">修改信息</a>
		</div>
	</div>

	<div class="ewm">
		<img src="images/ewm.png">
	</div>
	<div class="foot">Copyright&copy;蚂蚁小分队版权所有</div>
	=======
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
			<a href="home-page">返回我的账户首页</a></span>
		</div>
		<div class="left-menu">
			<div class="infor">
				<div class="menu">
					<a href="user-info">基本信息</a>
				</div>
				<div class="menu">
					<a href="rechargeAndWithdrow">充值提现</a>
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
	</div>
	<div class="infotitle">个人信息</div>
	<div class="info">
		<div class="info1">账号:&nbsp;&nbsp;${user.getUsername()}</div>
		<div class="info1">姓名:&nbsp;&nbsp;${user.getUsername()}</div>
		<div class="info1">性别:&nbsp;&nbsp;--------------------------------修改</div>
		<div class="info1">年龄:&nbsp;&nbsp;--------------------------------修改</div>
		<div class="info1">联系电话:&nbsp;&nbsp;----------------------------修改</div>
		<div class="info1">电子邮箱:&nbsp;&nbsp;----------------------------修改</div>
		<div class="info1">地址:</div>
		<div class="info1">余额:${user.getBalance()}</div>

	</div>
	<div class="ewm">
		<img src="images/ewm.png">
	</div>
	<div class="foot">Copyright&copy;蚂蚁小分队版权所有</div>
	>>>>>>> 4d79943edc58291a8cb350de0cbfe65dd13af8f4
</body>

</html>