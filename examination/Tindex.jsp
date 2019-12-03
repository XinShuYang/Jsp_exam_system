<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
 <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
 <%
  String tid=request.getParameter("id");/*接收的teacherid*/
  
  response.setHeader("Pragma","No-cache"); 
  response.setHeader("Cache-Control","No-cache"); 
  response.setDateHeader("Expires", -1); 
  response.setHeader("Cache-Control", "No-store"); 
  
  db_reader r=new db_reader();
  ArrayList<String> subjects=new  ArrayList<String>();
  subjects=r.gettcourseinfo(tid);
  int num=subjects.size();
 %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>The online examination system</title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
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
      <li>Shuyang Xin Teacher</li>
      <li><a href="Exit.jsp"><u>Exit</u></a></li>
    </ul>
  </div>
</div>
<div id="content">
  <div class="left_menu">
        <ul id="nav_dot">

        
        <li>
          <h4 class="M2"><span></span>Subjects</h4>
          <div class="list-item none">
          
          <% 
          for(int i=0;i<num;i++)
          {
          %>
          <a href=Tmanage_subject.jsp?course=<%=subjects.get(i) %> ><%=subjects.get(i) %></a>
          <%
          }
          %>
           </div>
        </li>

        
        <li>
          <h4 class="M4"><span></span>Edit personal info</h4>
          <div class="list-item none">
            <a href="Tinfo.jsp">personal information</a>
            <a href="STmodify_information.jsp">modify password</a>
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
                
            </ul>
      </div>
      <div class="main">
      This is the prototype test page!
        <!--main content-->
      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright© 2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
    