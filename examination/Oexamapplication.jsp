<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
 <%

 db_reader r=new db_reader();
 ArrayList<String> id=new ArrayList<String>();
 id=r.getStatetoAllID(1);

 %>
 
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Course list application</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
<link href="css/sort.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="js/menu.js"></script>

</head>

<body>
<div class="top"></div>
<div id="header">
  <div class="logo">Examination system</div>
  <div class="navigation">
    <ul>
      <li>Welcome!</li>
      <li>Dean's office</li>
      <li><a href="Login.jsp"><u>Exit</u></a></li>
    </ul>
  </div>
</div>
<div id="content">
  <div class="left_menu">
        <ul id="nav_dot">

        
        <li>
          <h4 class="M2"><span></span>Exam Application</h4>
          <div class="list-item none">
          <a href="Oexamapplication.jsp">Release test</a>
           </div>
        </li>
       <li>
       
          <h4 class="M3"><span></span>Query results</h4>
          <div class="list-item none">
          <a href="Oqueryresult.jsp">All Course</a>
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
          <h4 class="M5"><span></span><a href="Login.jsp"><u>Exit</u></a></h4>  
        </li>
  </ul>
    </div>
    <div class="m-right">
      <div class="right-nav">
          <ul>
              <li><img src="images/home.png"></li>
                <li style="margin-left:25px;">Location:</li>
                <li><a href="office.jsp">Dean's Office</a></li>
                <li>-><li>
                <li><a href="Oexamapplication.jsp">Exam applications</a></li>
                
            </ul>
      </div>
      <div class="main">
      
      <table id="alltable" class="tablesorter">
        <caption>Exam Information</caption>
        <thead> 
        <tr>
        <th>Subject</th><th>Agreement</th>
        </tr>
        </thead>
        <tbody> 
        
        
        <% 
          for(int i=0;i<id.size();i++)
          {
        	  
          %>
          <tr>
        <td><%=id.get(i) %></td><td><a href="Oagree_application.jsp?course=<%=id.get(i) %>" >Agree</a></td>
        </tr>
          
         
          <%
          }
          %> 
        </tbody> 
        </table>
      
        <!--main content-->
      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
    