<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<title>支付单页面</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>

<body>
	<div>
		<div class="tag">
			<img id="img-1" src="images/1.png" alt=""><a href="">宜信官网</a> <img
				id="img-2" src="images/2.png" alt=""><span class="tag-1">xxx-xxx-xx</span><span
				class="tag-2">欢迎您，${user.getUsername()}<a href="home-page">&nbsp;
					&nbsp;退出</a></span>
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
	</div>
	<div class="right">
		<form onsubmit=" return myFunction()" method="post" action="payment">
			<div class="user">
				<label>请&nbsp;&nbsp;输&nbsp;&nbsp;入&nbsp;&nbsp;账&nbsp;&nbsp;号:</label>
				<input id="name" type="text" name="user.username" placeholder="请输入对方账号！">
			</div>
			<hr>
			<div class="user">
				<label>转&nbsp;&nbsp;&nbsp;&nbsp;账&nbsp;&nbsp;&nbsp;&nbsp;金&nbsp;&nbsp;&nbsp;&nbsp;额:</label>
				<input id="money" type="text" name="user.paymentMoney" placeholder="请输入转账金额！">
			</div>
			<hr>
			<div class="user">
				<label>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：</label>
				<input id="password" type="password" name="user.password" placeholder="请输入支付密码！">
			</div>
			<hr>
			<div class="user">
				<label>付&nbsp;&nbsp;&nbsp;款&nbsp;&nbsp;&nbsp;日&nbsp;&nbsp;&nbsp;期：</label>
				<input id="date" type="text" name="user.date">
			</div>
			<hr>
			<div class="user">
				<label>备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注:&nbsp;&nbsp;</label>
				<input id="remark" type="text" name="user.remark" placeholder="描述账单信息">
			</div>
			<hr>
			<div class="user">
		         <input type="submit" name="" value="提交" class="user_button"> 
		         <input type="reset" name="" value="重置" class="user_button">
			</div>
		</form>
	</div>
</body>
<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>
<script type="text/javascript">
	function myFunction() {
		// 获取name的值
		var name = $("#name").val();
		var money = $("#money").val();
		var password = $("#password").val();
		var date = $("#date").val();
		var remark = $("#remark").val();

		if (name === "") {
			alert("该用户不存在！");
			return false;
		} else if (money === "") {
			alert("转账金额不能为空！");
		} else if ((money < 1000) || (money >5000 )) {
			alert("转账金额为1千到5千之间！请重新输入！")
		} else if (password === "") {
			alert("密码不正确！");
		} else if (date == "") {
			alert("支付日期不能为空！");
		} else if (remark === "") {
			alert("备注不能为空！")
		} else {
			alert("支付成功！");
		}
	}
</script>

</html>