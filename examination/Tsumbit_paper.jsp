<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<html>
 <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
<%
String course=request.getParameter("course");
course="math";
int totalpoints=Integer.parseInt(request.getParameter("points"));
int time=Integer.parseInt(request.getParameter("time"));
int difficulty=Integer.parseInt(request.getParameter("Diff_value"));
int ss=Integer.parseInt(request.getParameter("ss"));
int ssvalue=Integer.parseInt(request.getParameter("ssvalue"));
int ms=Integer.parseInt(request.getParameter("ms"));
int msvalue=Integer.parseInt(request.getParameter("msvalue"));
int judge=Integer.parseInt(request.getParameter("judge"));
int judgevalue=Integer.parseInt(request.getParameter("judgevalue"));
int shortanswer=Integer.parseInt(request.getParameter("short"));
int shortanswervalue=Integer.parseInt(request.getParameter("shortvalue"));
//Send it to the Dean's Office
db_modify m=new db_modify();
m.modifyState(1, course);
%>


<jsp:useBean id="xml_writer" class="xml.xml_writer" />
<jsp:setProperty name="xml_writer" property="totalpoints" 
value="<%=totalpoints%>" />
<jsp:setProperty name="xml_writer" property="time" 
value="<%=time%>" />
<jsp:setProperty name="xml_writer" property="totalDifficulty" 
value="<%=difficulty%>" />
<jsp:setProperty name="xml_writer" property="choosenum" 
	value="<%=ss%>" />
<jsp:setProperty name="xml_writer" property="ceverypoints" 
	value="<%=ssvalue%>" />
<jsp:setProperty name="xml_writer" property="mchoosenum" 
	value="<%=ms%>" />
<jsp:setProperty name="xml_writer" property="meverypoints" 
	value="<%=ssvalue%>" />
	<jsp:setProperty name="xml_writer" property="judgenum" 
	value="<%=judge%>" />
<jsp:setProperty name="xml_writer" property="jeverypoints" 
	value="<%=judgevalue%>" />
	<jsp:setProperty name="xml_writer" property="shortnum" 
	value="<%=shortanswer%>" />
<jsp:setProperty name="xml_writer" property="severypoints" 
	value="<%=shortanswervalue%>" />
<%
xml_writer.CreateRule(course);
%>


<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>manage system</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link type="text/css" rel="stylesheet" href="css/form.css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>
<script type="text/javascript" src="js/base64.js"></script>  
<script type="text/javascript" src="js/tableexport.js"></script>  
<!--tablesorter-->
<link href="css/sort.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery.tablesorter.js"></script>
<script type="text/javascript">
    $(document).ready(function(){
    $("#alltable").tablesorter();     
  }); 
</script>
</head>
<body>
<div class="top"></div>
<div id="header">
  <div class="logo">Examination system</div>
  <div class="navigation">
    <ul>
      <li>Welcome!</li>
      <li>Shuyang Xin Teacher</li>
      <li><a href="Exit.jsp"><u>Exit</u></a></li>
    </ul>
  </div>
</div>
<div id="content">
  <div class="left_menu">
        <ul id="nav_dot">

        
        <li>
          <h4 class="M2"><span></span>Add Problems</h4>
          <div class="list-item none">
            <a href="Tquestion_single.jsp?course=<%=course %>">Single Select</a>
            <a href="Tquestion_multi.jsp?course=<%=course %>">Multiple Select</a>
            <a href="Tquestion_judge.jsp?course=<%=course %>">Judge</a>
            <a href="Tquestion_shortanswer.jsp?course=<%=course %>">Short answer</a>         
           </div>
        </li>

         <li>
          <h4 class="M4"><span></span>Manage Problems</h4>
          <div class="list-item none">
            <a href=''>Manage</a>
          </div>
        </li>
        <li>
          <h4 class="M4"><span></span>Manage Paper</h4>
          <div class="list-item none">
            <a href=Tdesign_paper.jsp?course=<%=course %>>design paper</a>
            <a href=''>edit paper</a>
          </div>
        </li>

         <li>
          <h4 class="M4"><span></span>Give points<mark>12</mark></h4>
          <div class="list-item none">
            <a href="Tgive_scores.jsp?course=<%=course %>">Give paper</a>
          </div>
        </li>

        <li>
          <h4 class="M3"><span></span>Transcript</h4>
          <div class="list-item none">
          <a href="ttotal.jsp">Total</a>
          </div>
        </li>
        <li>
          <h4 class="M4"><span></span>Edit personal info</h4>
          <div class="list-item none">
            <a href=''>edit information</a>
            <a href=''>modify password</a>
          </div>
        </li>
        <li>
          <h4 class="M5"><span></span><a href="Exit.jsp"><u>Exit</u></a></h4>
          
        </li>
        
  </ul>
    </div>
    <div class="m-right">
      <div class="right-nav">
          <ul>
              <li><img src="images/home.png"></li>
                <li style="margin-left:25px;">Location:</li>
                <li><a href="#">indexT</a></li>
                <li>-></li>
                <li>XML</li>
                
            </ul>
      </div>

      <div class="main">
     
        Submit the sample paper Successfully!!!
    

      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright© 2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
