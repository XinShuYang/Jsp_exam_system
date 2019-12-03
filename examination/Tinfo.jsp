<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
<!DOCTYPE>
<html>
<%
String course=request.getParameter("course");
course="math";
String sid=request.getParameter("sid");
db_reader r=new db_reader();
r.getteainfo("10");
String name = r.getName();
String gender = r.getGender();
int age = r.getAge();
String date = r.getAdmission();
String school = r.getSchool();

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
<script language=javascript> //input is only be num 
function onlyNum() 
{ 
if(!(event.keyCode==46)&&!(event.keyCode==8)&&!(event.keyCode==37)&&!(event.keyCode==39)) 
if(!((event.keyCode>=48&&event.keyCode<=57)||(event.keyCode>=96&&event.keyCode<=105))) 
event.returnValue=false; 
} 
</script>
<script type="text/javascript">
function onlyNumber(input, n) {
    input.value = input.value.replace(/[^\d\.]/ig, '');
    var dotIdx = input.value.indexOf('.'), dotLeft, dotRight, v;
    if (dotIdx === 0) {
      input.value = '0.';
      return;
    }
    if (dotIdx > 0 && input.value.length > 2) {
      dotLeft = input.value.substring(0, dotIdx);
      dotRight = input.value.substring(dotIdx + 1);
      dotLeft = parseInt(dotLeft);
      if (dotRight.length > n) {
        dotRight = dotRight.substring(0, n);
      }
      dotRight = parseFloat("0." + dotRight);
      v = dotLeft + dotRight;
      input.value = v + '';
    }
  }
</script>
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
      <li>Tom Bai Teacher</li>
      <li><a href=""><u>Exit</u></a></li>
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
          <h4 class="M5"><span></span><a href=""><u>Exit</u></a></h4>
          
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
                <li><a href="#">XML</a></li>
                <li>Marking</li>
                
            </ul>
      </div>

      <div class="main">
     
        
<form class="f1" action="Tsumbit_mark.jsp?course=<%=course%>&sid=<%=sid%>" method="post" > 
<fieldset > 
<legend>Personal information</legend> 
<table class="upform"> 
<tbody> 

         
          <tr ><td class="left"><label for="question">ID</label></td>
          <td class="right"><%=sid %></td> 
          </tr>
          <tr ><td class="left"><label for="question">Name</label></td>
          <td class="right"><%=name %></td> 
          </tr>
          <tr ><td class="left"><label for="answer">Gender</label></td>
          <td class="right"><%=gender %></td> 
          </tr>
          
          <tr ><td class="left"><label for="answer">Age</label></td>
          <td class="right"><%=age %></td> 
          </tr>

         
          



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
<div id="footer"><p>Copyright© 2019 all right reserved by Xin</p></div>
<script>navList(12);</script>
</body>
</html>
