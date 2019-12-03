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
      <li>James Park Teacher</li>
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
     
        <form class="f1" action="Tmulti_sumbit.jsp?course=<%="XML" %>" method="post" > 
<fieldset > 
<legend>Multiple Selective Question</legend> 
<table class="upform"> 
<tbody> 
<tr ><td class="left"><label for="question">Question</label></td>
<td class="right"><textarea name="question" cols="50" rows="5" required="required"></textarea></td> 
</tr> 
<tr><td class="left"><label for="A">A</label></td>
<td class="right"><input class="Option" id="A" type="text" name="OptionA" required="required" /></td> 
</tr> 
<tr><td class="left"><label for="B">B</label></td>
<td class="right"><input class="Option" type="text" id="B" name="OptionB" required="required"></td> 
</tr> 
<tr><td class="left"><label for="C">C</label></td>
<td class="right"><input class="Option" type="text" id="C" name="OptionC" required="required"></td> 
</tr> 
<tr><td class="left"><label for="D">D</label></td> 
<td class="right"><input class="Option" type="text" id="D" name="OptionD" required="required"></td> 
</tr> 
<tr><td class="left"><label for="answer">Answer</label></td>
<td class="right"><input type="checkbox" id="cbox1" name="A" value="1" checked>A 
<input type="checkbox" id="cbox2" name="B" value="1" >B 
<input type="checkbox" id="cbox3"name="C" value="1">C
<input type="checkbox" id="cbox3"name="D" value="1">D
</td> 
</tr> 
<tr><td class="left"><label for="Diff_value">Diff_value</label></td>
<td class="right"><input type="radio"  name="Diff_value" value="0" checked />easy<!-- name设置成一样的就行了--> 
<input type="radio"  name="Diff_value" value="1" />ordinary
<input type="radio"  name="Diff_value" value="2" />hard 
</td> 
</tr> 
<tr><td class="left" >Img_Question</td>
<td class="right"> <input type="file" id="f1" name="imgquestion" value="File1" accept=".png,.gif,.jpg,.jpeg"/></td> 
</tr>
<!--<tr><td class="left" >A</td>
<td> <input type="file" id="f1" name="shangchuan" value="File1" /></td> 
</tr>
<tr><td class="left" >B</td>
<td> <input type="file" id="f1" name="shangchuan" value="File1" /></td> 
</tr>
<tr><td class="left" >C</td>
<td> <input type="file" id="f1" name="shangchuan" value="File1" /></td> 
</tr>
<tr><td class="left" >D</td>
<td> <input type="file" id="f1" name="shangchuan" value="File1" /></td> 
</tr>-->
<!--<tr><td class=“left” width=40% align="right">地 区：</td> 
<td><select id="selc" name="place"> 
<option value="quanzhou">泉州</option> 
<option value="xiamen">厦门</option> 
<option value="zhangzhou" >漳州</option> 
</select> 
</td> 
</tr> 
<tr><td class=“left” width=40% align="right"><label for="txtarea">简 介：</label></td> 
<td><textarea id="txtarea"></textarea></td> 
</tr> 
<tr><td class=“left” width=40% align="right">兴 趣：</td> 
<td><input type="checkbox" id="cbox1" name="dushu" value="c1">读书 
<input type="checkbox" id="cbox2" name="yundong" value="c2">运动 
<input type="checkbox" id="cbox3"name="chihe" value="c3">吃喝 
</td> 
</tr> 
<tr><td class=“left” width=40% align="right">上 传：</td> 
<td> <input type="file" id="f1" name="shangchuan" value="File1" /></td> 
</tr> -->
<tr><td class=“left” width=40% align="center" rowspan=2> 
<input id="Submit1" type="submit" value="submit" /> 
</td> 
<td class="right"> <input id="Reset1" type="reset" value="reset" /> 
</td> 
</tr> 
</tbody> 
</table> 
</fieldset> 
</form> 
     <!--<html>
   <head><title>表格</title></head>
   <body>
   <table border="1"width="100%">
   <%
   int rows=0;
    int cols=0;
      try{
         rows=Integer.parseInt(request.getParameter("row"));   //Integer.parseInt转化成整形否则抛出异常，request.getParameter接受来自htm表单的数据，括号里指name
    cols=Integer.parseInt(request.getParameter("col"));
  }catch(Exception e){}
   for(int x=0;x<rows;x++){
 %>
  <tr>
 <%
        
  for(int y=0;y<cols;y++){
%>
 <td><%=(x*y)%></td>
 <%
     }
 %>
</tr>
<%
 }
%>
</table>
  </body>
</html>-->

      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright© 2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>