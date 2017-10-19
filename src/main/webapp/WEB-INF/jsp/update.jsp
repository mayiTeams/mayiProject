<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<br/>
<form action="userAction!do_edit" method="post">
	<input name="user.id" type="hidden"  value="${user.id }" />
	<table>
		<tr>
			<td>姓名</td>
			<td>
				<input name="user.username" type="text" value="${user.username }"/>
			</td>
		</tr>
		<tr>
			<td>余额</td>
			<td>
				<input name="user.balance" type="text" value="${user.balance }"/>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<button onclick="javascript:history.go(-1)">返回</button>
				<input type="submit" value="保存"/>
			</td>
		</tr>
	</table>
</form>


</body>
</html>