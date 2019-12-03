<%@ page contentType="text/html; charset=utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
	<head>
		<title>用户注册</title>
		
	</head>
	<body>
		<center>
		<h3>请输入注册信息</h3>
		<s:actionerror/>
	    <form name ="Form"    method ="post" action="regist.action">
		<table>
			<tr>
			<td>用户名：</td>
			<td><input type="text" name="user" /></td>
			</tr>
			<tr>
			<td>密码：</td>
			<td><input type="password" name="pass" /></td>
			</tr>
				<tr>
			<td>邮箱：</td>
			<td><input type="text" name="email" /></td>
			</tr>
			<tr>
			<td>验证码:</td>
			<td><input type="text" name="vercode" /></td>
			</tr>
			<tr>
			<td><input type="submit" value="登陆"/></td>
			</tr>
		</table></form>
		<img src="authImg" id="authImg" alt="看不清?请点击刷新验证码" 
style="cursor : pointer;" onClick="this.src=this.src+'?'+Math.random();" />
		
		</center>
	</body>
</html>