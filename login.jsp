<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<title>UserLogin</title>
	</head>
	<body>
		<center>
		<h3>Please input the username and password</h3>
		This is not the correct Login page, please go to /exam1/examination/Login.jsp <br>
		If you didn't register, click this button<a href="regist.jsp">register</a>
		<s:actionerror/>
		<form name ="Form"    method ="post" action="login.action">
		<table>
			<tr>
			<td>username：</td>
			<td><input type="text" name="user" /></td>
			</tr>
			<tr>
			<td>password：</td>
			<td><input type="password" name="pass" /></td>
			</tr>
			<tr>
			<td>code:</td>
			<td><input type="text" name="vercode" /></td>
			</tr>
			<tr>
			<td><input type="submit" value="Login"/></td>
			</tr>
		</table></form>
		<img src="authImg" id="authImg" alt="click to update code" 
style="cursor : pointer;" onClick="this.src=this.src+'?'+Math.random();" />
		</center>
	</body>
</html>