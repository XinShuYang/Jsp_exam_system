<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<html>
<%
String course=request.getParameter("course");
course="math";
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
     
        <form class="f1" action="Tshortanswer_sumbit.jsp?course=<%=course %>" method="post" > 
<fieldset > 
<legend>Single Selective Question</legend> 
<table class="upform"> 
<tbody> 
<tr ><td class="left"><label for="question">Question</label></td>
<td class="right"><textarea name="question" cols="50" rows="5" required="required"></textarea></td> 
</tr> 

<tr ><td class="left"><label for="answer">Reference Answer</label></td>
<td class="right"><textarea name="answer" cols="50" rows="5" required="required"></textarea></td> 
</tr>
<tr><td class="left"><label for="Diff_value">Diff_value</label></td>
<td class="right"><input type="radio"  name="Diff_value" value="0" checked />easy<!-- name设置成一样的就行了--> 
<input type="radio"  name="Diff_value" value="1" />ordinary
<input type="radio"  name="Diff_value" value="2 " />hard 
</td> 
</tr>

<tr><td class=“left” width=40% align="center" rowspan=2> 
<input id="Submit1" type="submit" value="submit" /> 
</td> 
<td class="right" height=40% > <input id="Reset1" type="reset" value="reset" /> 
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
<div id="footer"><p>Copyright© 2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
