<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<%String sid=(String)(session.getAttribute("ID"));/*接收的studentsid*/ %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>manage system</title>
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
      <li>Shuyang Xin student</li>
      <li><a href="Exit.jsp"><u>Exit</u></a></li>
    </ul>
  </div>
</div>
<div id="content">
  <div class="left_menu">
        <ul id="nav_dot">

        <li>
          <h4 class="M1"><span></span>Examination rules</h4>
          <div class="list-item none">
            <a href='indexT.html'>Notice</a>  
           </div>
        </li>
        <li>
          <h4 class="M2"><span></span>Examinations</h4>
          <div class="list-item none">
            <a href='indexT.html'>Math</a>
            <a href=''>XML</a>
            <a href=''>3Ds max</a>        
           </div>
        </li>

        <li>
          <h4 class="M3"><span></span>Transcript</h4>
          <div class="list-item none">
          <a href='indexT.html'>Math</a>
          <a href=''>XML</a>
          <a href=''>3Ds max</a>
          <a href=''>Total</a>
          </div>
        </li>
        <li>
          <h4 class="M4"><span></span>Edit personal info</h4>
          <div class="list-item none">
            <a href=''>edit information</a>
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
                <li><a href="#">indexS</a></li>
                <li>-></li>
                <li><a href="#">Paper</a></li>
                
            </ul>
      </div>
      <div class="main">
     
        <table  class="gridtable">
        <caption>test paper basic information</caption>
        <tr>
        <th>Examination Name</th><td>XML</td>
        <tr>
        <tr>
        <th>Examination Time</th><td>90 minutes</td>
        <tr>
        <tr>
        <th>Examination Point</th><td>100</td>
        <tr>
        </table>

        


      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2019 all right reserved by Xin</p></div>
<script>navList(12);</script>
</body>
</html>
