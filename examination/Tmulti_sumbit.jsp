<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<html>
 <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
<%
String course=request.getParameter("course");
course="math";
String question = request.getParameter("question"); 
String OptionA =request.getParameter("OptionA");
String OptionB =request.getParameter("OptionB");
String OptionC =request.getParameter("OptionC");
String OptionD =request.getParameter("OptionD");
//判断多选，为1即正确答案
String A =request.getParameter("A");
String B =request.getParameter("B");
String C =request.getParameter("C");
String D =request.getParameter("D");
if(A==null)
	A="0";
if(B==null)
	B="0";
if(C==null)
	C="0";
if(D==null)
	D="0";	
String value=request.getParameter("Diff_value");
System.out.println(course);
System.out.println(question);
System.out.println(OptionA);
System.out.println(OptionB);
System.out.println(OptionC);
System.out.println(OptionD);

System.out.println(A);
System.out.println(B);
System.out.println(C);
System.out.println(D);

System.out.println(value);
xml_reader r=new xml_reader();
//得到该课程题库多选题的数量
int allnum=r.getAllNumber(course, "m");
String id = Integer.toString(allnum);
%>


<jsp:useBean id="xml_writer" class="xml.xml_writer" />
<jsp:setProperty name="xml_writer" property="name" 
value="<%=id%>" />
<jsp:setProperty name="xml_writer" property="title" 
value="<%=question%>" />
<jsp:setProperty name="xml_writer" property="a" 
value="<%=OptionA%>" />
<jsp:setProperty name="xml_writer" property="b" 
	value="<%=OptionB%>" />
<jsp:setProperty name="xml_writer" property="c" 
	value="<%=OptionC%>" />
<jsp:setProperty name="xml_writer" property="d" 
	value="<%=OptionD%>" />
	
<jsp:setProperty name="xml_writer" property="ajudge" 
    value="<%=A%>" />
<jsp:setProperty name="xml_writer" property="bjudge" 
	value="<%=B%>" />
<jsp:setProperty name="xml_writer" property="cjudge" 
	value="<%=C%>" />
<jsp:setProperty name="xml_writer" property="djudge" 
	value="<%=D%>" />
	
<jsp:setProperty name="xml_writer" property="difficulty" 
value="<%=value%>" />

<%
xml_writer.CreateChooseXMLFile(r.getPath(course,"m"), "m");
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
          <a href='indexT.html'>Total</a>
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
     
        Submit the multiple selective question Successfully!!!
    

      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright© 2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
