<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<html>
 <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
<%
String sid=(String)(session.getAttribute("ID"));/*接收的studentsid*/
String sname = request.getParameter("sname"); 
String spassword = request.getParameter("spassword"); 
String sex =request.getParameter("sex");
String age =request.getParameter("age");
String year =request.getParameter("year");
String school =request.getParameter("school");
db_writer w = new db_writer();
w.setSname(sname);
w.setSpassword(spassword);
w.setSex(sex);
w.setAge(Integer.valueOf(age));
w.setYear(year);
w.setSchool(school);
db_reader r = new db_reader();
int stuid = r.getUsernum();
w.writeStudent(stuid);
%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Administrator</title>
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
      <li>Administrator</li>
      <li><a href="Login.jsp"><u> Exit</u></a></li>
    </ul>
  </div>
</div>
<div id="content">
  <div class="left_menu">
        <ul id="nav_dot">

        

          <li>
          <h4 class="M4"><span></span>Manage Students</h4>
          <div class="list-item none">
            <a href="Adminaddstudent.jsp">Add new student</a>
            <a href="#">Delete student</a>
          </div>
        </li>
        
        <li>
          <h4 class="M4"><span></span>Manage Teachers</h4>
          <div class="list-item none">
            <a href="Adminaddteacher.jsp">Add new teacher</a>
            <a href="#">Delete teacher</a>
          </div>
        </li>

         
        <li>
          <h4 class="M5"><span></span><a href="Login.jsp"><u>Exit</u></a></h4>
          
        </li>
        
  </ul>
    </div>
    <div class="m-right">
      <div class="right-nav">
          <ul>
              <li><img src="images/home.png"></li>
                <li style="margin-left:25px;">Location:</li>
                <li><a href="Admin.jsp">Administrator</a></li>
                <li>-></li>
                <li>Add new student <%=sname%></li>
                
            </ul>
      </div>

      <div class="main">
     
        Add new student <%=sname%> successfully!!!
     

      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
