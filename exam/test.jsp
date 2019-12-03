<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>

<%
String examID = request.getParameter("examid");
String examName = request.getParameter("examname");
String studentID = request.getParameter("studentid");
String studentName = request.getParameter("studentname");

%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
<title>在线考试系统</title>
<link href="css/manage.css" type="text/css" rel="stylesheet">
<link href="css/jquery.selectlist.css" type="text/css" rel="stylesheet">
<script src="js/jquery.min.js"></script>
<script src="js/jquery.selectlist.js"></script>
<script src="js/exam.js"></script>
</head>
<body> 
<header>
<input type="hidden" id="examid" value="<%=examID%>">

<div id="exam_top">
	<div class="leftF">
		<span class="exam_head"><%=examName%></span>
	</div>
	<div class="rightF">
		<span class="exam_head">学号：<%=studentID%></span>
		<span class="exam_head">姓名：<%=studentName%></span>
	</div>
	<div class="center">
	
		</div>
	</div>
</div>
<div class="clear"></div>
<div class="exam_foot">
	<span>Copyright © Jackeriss, Franky Shy</span>
</div>
<div class="alert_screen">
	<div class="alert_block">
		<div class="alert_msg">注意：考试过程中请不要退出全屏，更不能切换，否则按作弊处理！</div>
		<button class="alert_btn submit_button">开始考试</button>
		<a href="../index.jsp"><button class="quit_btn submit_button">退出考试</button></a>
	</div>
</div>
</body>
</html>