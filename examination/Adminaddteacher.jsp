<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<%String sid=(String)(session.getAttribute("ID"));/*接收的studentsid*/ %>
<html>
 <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
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
      <li><a href="Login.jsp"><u>Exit</u></a></li>
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
                <li>Add new teacher</li>
                
            </ul>
      </div>

      <div class="main">
     
        <form class="f1" action="Admin_sumbit_addt.jsp" method="post" > 
<fieldset > 
<legend>Add new teacher</legend> 
<table class="upform"> 
<tbody> 

<tr><td class="left"><label for="Tname">Tname</label></td>
<td class="right"><input type="text" name="tname" required="required" width=100% /></td>  
</tr> 

<tr><td class="left"><label for="Tpassword">Password</label></td>
<td class="right"><input type="text" name="tpassword" required="required" width=100% /></td>  
</tr> 

<tr><td class="left"><label for="Sex">Sex</label></td> 
<td><select id="selc" name="sex"> 
<option value="M">M</option>
<option value="S">S</option> 
</select> 
</td> 
</tr> 

<tr><td class="left"><label for="age">Age</label></td>
<td class="right"><input type="number" name="age" required="required" width=100% /></td>  
</tr>


<tr><td class="left"><label for="school">School</label></td>
<td class="right"><input type="text" name="school" required="required" width=100% /></td>  
</tr>

<tr><td class=“left” width=40% align="right" rowspan=2> 
<input id="Submit1" type="submit" value="submit" /> 
</td> 
<td> <input id="Reset1" type="reset" value="reset" /> 
</td> 
</tr> 
</tbody> 
</table> 
</fieldset> 
</form> 
     

      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
