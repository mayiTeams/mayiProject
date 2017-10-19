<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<br/>
<form action="updateinfo?user.id=${user.getId()}&user.username=${user.getUsername()}&user.password=${user.getPassword()}"
				method="post">
	<input name="user.id" type="hidden"  value="${user.id }" />
	<table>
		<tr>
			<td>姓名</td>
			<td>
				<input name="user.username" type="text" value="${user.username }"/>
			</td>
		</tr>
		<tr>
			<td>电话</td>
			<td>
				<input name="user.phone" type="text" value="${user.phone }"/>
			</td>
		</tr>
		<tr>
			<td>邮箱</td>
			<td>
				<input name="user.email" type="text" value="${user.email }"/>
			</td>
		</tr>
		<tr>
			<td>地址</td>
			<td>
				<input name="user.address" type="text" value="${user.address }"/>
			</td>
		</tr>
		
		<tr>
			<td>余额</td>
			<td>
				<input name="user.balance" type="text"  readonly="readonly"  value="${user.balance }"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button onclick="javascript:history.back(-1)">返回</button>
				<input type="submit" value="保存" />
			</td>
		</tr>
	</table>
</form>


</body>
</html>