<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
<%
String course=request.getParameter("course");
String sid=request.getParameter("sid");

xml_reader read=new xml_reader();
read.readruleXml("math");
int cn=read.getChoosenum();
int mc=read.getmChoosenum();
int jn=read.getJudgenum();
int sn=read.getShortnum();
ArrayList<String> allid = new ArrayList<String>();

xml_writer w=new xml_writer();
w.CreatePaperXMLFile(sid, course);

allid=read.getAllid(course,sid);

String[] Choose_an=new String[cn];
String[] MChoose_an=new String[mc];
String[] Judge_an=new String[jn];
String[] Short_an=new String[sn];


%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	
<title>Online Exam System</title>
<link href="css/manage.css" type="text/css" rel="stylesheet">
<link href="css/jquery.selectlist.css" type="text/css" rel="stylesheet">

<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-xlarge.css" />
<link type="text/css" rel="stylesheet" href="css/time_css.css" />

<script src="js/jquery.min.js"></script>
<script src="js/jquery.selectlist.js"></script>
<script src="js/exam.js"></script>

<script src="js/skel.min.js"></script>
<script type="text/javascript" src="js/time_js.js"></script>
<script type="text/javascript" src="js/choose.js"></script>
<script type="text/javascript" src="js/display.js"></script>
</head>
<body> 

 <header id="header">
		
		
	
			<span class="exam_head" id="hole_time">Time Limit：<%=1%>minute</span>
		<span class="exam_head">Time Left：<span class="green" id="time"></span>minute</span>
		
				<a href="#" class="image avatar"><img src="images/avatar.jpg" alt="" /></a>
				<h1><strong>Gavin</strong>,student<br />
				The George Washington University<br />
				XSY</h1>
				
				
				
	<div class="game_time">

	<div class="hold">
		<div class="pie pie1"></div>
	</div>

	<div class="hold">
		<div class="pie pie2"></div>
	</div>

	<div class="bg"> </div>
	
	<div class="time"></div>
	
</div>
<%
read.readruleXml(course);
int n=read.getTime();
%>
<script type="text/javascript">
countDown(<%=n%>);
</script>

</header>

<table border=0> 
<tr> 
<td ID="d1" onmouseover="show(this,ds1);" class="menux">Show Project Navigation</td> 

</tr> 
</table> 


<div class="main">
<div ID="ds1" class="marklist" STYLE="display:none" onmouseleave="this.style.display='none'">

<table id="test">
	<div class="marklist rightF">
		<ul class="single_mark_list">
		<%
		{
		%>
			<div class="mark_title" id="single_mark">
				<a href="#single_title" class="mark"><ul>Multiple Choice(single selection)</ul></a>
			</div>	
		<%
			for(int i=1;i<=cn;i++){
		%>
			<li id="single_<%=i%>_mark">
				<a href="#single_<%=i%>" class="mark"><ul><%=i%></ul></a>
			</li>
		<%
			}
		}
		%>
		</ul>
		<ul class="multi_mark_list">
		<%
		{
		%>
			<div class="mark_title" id="multi_mark">
				<a href="#multi_title" class="mark"><ul>Multiple Choices(multiple selection)</ul></a>
			</div>	
		<%
			for(int i=1;i<=mc;i++){
		%>
			<li id="multi_<%=i%>_mark">
				<a href="#multi_<%=i%>" class="mark"><ul><%=i%></ul></a>
			</li>
		<%
			}
		}
		%>
		</ul>
		<ul class="judge_mark_list">
		<%
		{
		%>
			<div class="mark_title" id="judge_mark">
				<a href="#judge_title" class="mark"><ul>Ture or False</ul></a>
			</div>	
		<%
			for(int i=1;i<=jn;i++){
		%>
			<li id="judge_<%=i%>_mark">
				<a href="#judge_<%=i%>" class="mark"><ul><%=i%></ul></a>
			</li>
		<%
			}
		}
		%>
		</ul>
		<ul class="essay_mark_list">
			<%
		{
		%>
			<div class="mark_title" id="essay_mark">
				<a href="#essay_title" class="mark"><ul>Short Answer</ul></a>
			</div>	
		<%
			for(int i=1;i<=sn;i++){
		%>
			<li id="essay_<%=i%>_mark">
				<a href="#essay_<%=i%>" class="mark"><ul><%=i%></ul></a>
			</li>
		<%
			}
		}
		%>
			
		</ul>
	</div>
	</table>
	</div>
	
	<form name="process" action="Handexam.jsp" method="post">
	<div class="blocker"></div>
	<div class="examright leftF">
		<div class="block" id="single_block">
		<%
		{
		%>
			<div class="title" id="single_title">I.Multiple Choice(single selection)</div>
		<%
		
			for(int i=1;i<=cn;i++){
				
				read.readquestionXml("math",allid.get(i-1));
				String ctitle=read.getTitle();
				String Apan=read.getA();
				String Bpan=read.getB();
				String Cpan=read.getC();
				String Dpan=read.getD();
		%>
			<div class="content_box" id="single_<%=i%>"> 
			
				<div class="content" ><%=i %>.<%=ctitle %></div>
				<div class="choice_box" id="single_<%=i%>">
					<div class="content">
						<input type="radio" class="check" name="choose_<%=i%>" value="0" >A.<%=Apan %></input>
						
					</div>
					<div class="content">
						<input type="radio" class="check"  name="choose_<%=i%>" value="1" >B.<%=Bpan %></input>
					</div>
					<div class="content">
						<input type="radio" class="check" name="choose_<%=i%>" value="2" >C.<%=Cpan %></input>
					</div>
					<div class="content">
						<input type="radio" class="check" name="choose_<%=i%>" value="3">D.<%=Dpan %></input>
					</div>
				</div>
			</div>
		<%
			}
		}
		%>
		</div>
		<div class="block" id="multi_block">
		<%
		{
		%>
			<div class="title" id="multi_title">II.Multiple Choices(multiple selection)</div>
		<%
			for(int i=1;i<=mc;i++){
				read.readquestionXml("math",allid.get(i+cn-1));
				String mtitle=read.getTitle();
				String Apanm=read.getA();
				String Bpanm=read.getB();
				String Cpanm=read.getC();
				String Dpanm=read.getD();
		%>
			<div class="content_box" id="multi_<%=i%>">
				<div class="content" ><%=i %>.<%=mtitle %></div>
				<div class="choice_box">
					<div class="content">
						<input type="checkbox" class="asd" name="mchoose_<%=i %>" value="0" >A.<%=Apanm %></input>
					</div>
					<div class="content">
						<input type="checkbox" class="asd" name="mchoose_<%=i %>" value="1" >B.<%=Bpanm %></input>
					</div>
					<div class="content">
						<input type="checkbox" class="asd" name="mchoose_<%=i %>" value="2">C.<%=Cpanm %></input>
					</div>
					<div class="content">
						<input type="checkbox" class="asd" name="mchoose_<%=i %>" value="3">D.<%=Dpanm %></input>
					</div>
				</div>
			</div>
		<%
			}
		}
		%>	
		</div>
		<div class="block" id="judge_block">
		<%
		{
		%>
			<div class="title" id="judge_title">III.True or False</div>
		<%
			for(int i=1;i<=jn;i++){
				read.readquestionXml("math",allid.get(i+cn+mc-1));
				String jtitle=read.getTitle();
		%>
			<div class="content_box" id="judge_<%=i%>">
				<select class="judge_choice rightF" id="judge_<%=i%>_choice" name="judge_<%=i%>">
					<option value="0">Please Answer this question:</option>
					<option value="T">T</option>
					<option value="F">F</option>
				</select>
				<div class="content" id="judge_<%=i%>_title"><%=i%>.<%=jtitle%><%=jn %></div>
			</div>
		<%
			}
		}
		%>
		</div>
		<div class="block" id="essay_block">
		<%
		{
		%>
			<div class="title" id="essay_title">IV.Short Answer</div>
		<%
			for(int i=1;i<=sn;i++){
				read.readquestionXml("math",allid.get(i+cn+mc+jn-1));
				String shtitle=read.getTitle();
		%>
			<div class="content_box" id="essay_<%=i%>">
				<div class="content" id="essay_<%=i%>_title"><%=i%>.<%=shtitle%></div>
				<textarea type="text" class="exam_many_lines" id="essay_<%=i%>_answer" name="essay_<%=i%>"></textarea>
			</div>
		<%
			}
		}
		%>
		</div>
	</div>
	
	<input type="submit" value="submit"
									style="background-color: orange; padding: 15px 40px;">
									</form>
	
</div>
<div class="clear"></div>
<div class="exam_foot">
	<span>Copyright © Shuyang Xin</span>
</div>


<div class="alert_screen"> 
	<div class="alert_block">
		<div class="alert_msg">The examination process, please do not exit full screen, but can not switch, or else the process of cheating!</div>
		<button class="alert_btn submit_button">Start</button>
		<a href="../examination/Login.jsp"><button class="quit_btn submit_button">Exit!</button></a>
	</div>
</div>
</body>
</html>