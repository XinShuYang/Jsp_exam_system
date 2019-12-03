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
<title>在线考试系统</title>
<link href="css/manage.css" type="text/css" rel="stylesheet">
<link href="css/jquery.selectlist.css" type="text/css" rel="stylesheet">
<link rel="stylesheet" href="css/skel.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="stylesheet" href="css/style-xlarge.css" />
<link type="text/css" rel="stylesheet" href="css/time_css.css" />
 
<script src="js/jquery.min.js"></script>
<script src="js/exam.js"></script>
<script src="js/jquery.selectlist.js"></script>
<script src="js/skel.min.js"></script>

<script type="text/javascript" src="js/time_js.js"></script>
<script type="text/javascript" src="js/choose.js"></script>
<script type="text/javascript" src="js/display.js"></script>



</head>
<body> 


<header>
<div id="exam_top">
	
	<div class="center">
		<span class="exam_head" id="hole_time">考试限时：<%=1%>分钟</span>
		<span class="exam_head">剩余时间：<span class="green" id="time"></span>分钟</span>
	</div>
</div> 
</header>


<!-- Header -->
			<header id="header">
		
		
	
			
				<a href="#" class="image avatar"><img src="images/avatar.jpg" alt="" /></a>
				<h1><strong>Gavin</strong>,student<br />
				Software school of Yunnan University<br />
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
<script type="text/javascript">
countDown(<%=2016%>,<%=0%>,<%=6%>,<%=1%>,<%=1%>,<%=1%>);
</script>



</header>
  







<table border=0> 
<tr> 
<td ID="d1" onmouseover="show(this,ds1);" class="menux">鼠标移至此处显示题目导航</td> 

</tr> 
</table> 

<div class="main">
    
	<div ID="ds1" class="marklist" STYLE="display:none" onmouseleave="this.style.display='none'">
	<table id="test">
	 
	<tr><td>
		<ul class="single_mark_list">
		
			<div class="mark_title" id="single_mark">
				<a href="#single_title" class="mark"><ul>单项选择</ul></a>
			</div>	
		<%
			for(int i=1;i<=cn;i++){
		%>
			<li id="single_<%=i%>_mark">
				<a href="#single_<%=i%>" class="mark"><ul><%=i%></ul></a>
			</li>
		<%
			}
		
		%>
		</ul>
		</td>
		<td>
		<ul class="multi_mark_list">
		
		
		
			<div class="mark_title" id="multi_mark">
				<a href="#multi_title" class="mark"><ul>多项选择</ul></a>
			</div>	
		<%
			for(int i=1;i<=mc;i++){
		%>
			<li id="multi_<%=i%>_mark">
				<a href="#multi_<%=i%>" class="mark"><ul><%=i%></ul></a>
			</li>
		<%
			}
		
		%>
		</ul>
		</td></tr>
		<tr>
		<td>
		<ul class="judge_mark_list">
		<%
		if (0==0){
		%>
			<div class="mark_title" id="judge_mark">
				<a href="#judge_title" class="mark"><ul>判断正误</ul></a>
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
		</td>
		<td>
		<ul class="essay_mark_list">
			<%
		if (0==0){
		%>
			<div class="mark_title" id="essay_mark">
				<a href="#essay_title" class="mark"><ul>问答辨析</ul></a>
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
			<!-- <div class="submit_paper">
				<a href="#" class="mark" id="submit"><ul>submit试卷</ul></a>
			</div>
			-->
		</ul>
		</td>
		</tr>
		</table>
	</div>
	
	<form name="process" action="Handexam.jsp" method="post">
	
	
	<div class="blocker"></div>
	<div class="examright leftF">
		<div class="block" id="single_block">
		<%
		if (0==0){
		%>
			
			<div class="title" id="single_title">一、单项选择</div>
		<%
			for(int i=0;i<cn;i++){
				read.readquestionXml("math",allid.get(i));
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
		if (0==0){
		%>
			<div class="title" id="multi_title">二、多项选择</div>
	  	<%
			for(int i=0;i<mc;i++){
				read.readquestionXml("math",allid.get(i+cn));
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
		if (0==0){
		%>
			<div class="title" id="judge_title">三、判断正误</div>
		<%
			for(int i=0;i<jn;i++){
				read.readquestionXml("math",allid.get(i+cn+mc));
				String jtitle=read.getTitle();
				
		%>
			<div class="content_box" id="judge_<%=i%>">
				<select class="judge_choice" name="judge_<%=i%>">
					<option value="0">请选择正确答案</option>
					<option value="T">T</option>
					<option value="F">F</option>
				</select>
				<div class="content" id="judge_<%=i%>_title"><%=i%>.<%=jtitle%></div>
			</div>
		<%
			}
		}
		%>
		</div>
		<div class="block" id="essay_block">
		<%
		if (0==0){
		%>
			<div class="title" id="essay_title">四、简答辨析</div>
		<%
			for(int i=0;i<sn;i++){
				read.readquestionXml("math",allid.get(i+cn+mc+jn));
				String shtitle=read.getTitle();
				
		%>
			<div class="content_box" id="essay_<%=i%>">
				<div class="content" id="essay_<%=i%>_title"><%=i%>.<%=shtitle%></div>
				<textarea type="text" class="exam_many_lines" name="essay_<%=i%>"></textarea>
			</div>
		<%
			}
		}
		%>
		</div>
	</div>
		<input type="submit" value="submit"
		style="background-color: orange; padding: 15px 30px;">
				</form>
</div> 

<div class="clear"></div>
<div class="exam_foot">
	<span>Copyright © xsy,lxf,hrb</span>
</div>
 
  <div class="alert_screen">
	<div class="alert_block">
		<div class="alert_msg">注意：考试过程中请不要退出全屏，更不能切换，否则按作弊处理！</div>
		<button class="alert_btn submit_button">开始考试!</button>
		<a href="../index.jsp"><button class="quit_btn submit_button">退出考试</button></a>
	</div>
</div>



</body>
</html>