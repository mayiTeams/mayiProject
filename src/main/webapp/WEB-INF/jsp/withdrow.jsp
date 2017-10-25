<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>出借</title>
<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="css/lrstyle.css">
</head>

<body>
	<div>
		<div class="tag">
			<img id="img-1" src="images/1.png" alt=""><a href="home-page">宜信官网</a> <img
				id="img-2" src="images/2.png" alt=""><span class="tag-1">xxx-xxx-xx</span><span
				class="tag-2">欢迎您，${user.getUsername()} <a href="home-page">&nbsp;
					&nbsp;退出</a></span>
		</div>
		<div class="header">
			<img src="images/logo.png"> 宜人贷理财账户管理系统
		</div>
		<div class="home">
			<a href="myAccount">返回我的账户首页</a></span>
		</div>
		<div class="main">
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
			<form
				action="withdrowMoney?user.id=${user.getId()}&user.username=${user.getUsername()}&user.password=${user.getPassword()}"
				method="post" onsubmit="return myFunction()">
				<div class="right-infor">
					<div class="inp">
						请输入出借金额： <input id="in" class="inputsize" name="user.balance"
							type="text"> 元
						<div style="margin-top: 20px">
							<input type="submit" value="提交">
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>
	<script
		src="http://lib.sinaapp.com/js/jquery/2.0.3/jquery-2.0.3.min.js"></script>
	<script type="text/javascript">
		function myFunction() {
			var infor = $('#in').val();
			var balance = ${user.getBalance()};
			if (infor > 0 && infor < balance) {
				alert("出借成功！");
				return true;
			} else {
				alert("余额不足！")
				return false;
			}
		}
	</script>
</body>

</html>