<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<%@page language="java"  import="xml.*" %>
<%@page language="java"  import="database.*" import="java.util.ArrayList" %>
<html>
<%
String course=request.getParameter("course");
course="math";
db_reader r=new db_reader();
ArrayList<String> sname= new ArrayList<String>();
ArrayList<String> score= new ArrayList<String>();
sname=r.getStuname(r.getCourseid(course));
//r.getCandG
for(int i =0;i < sname.size();i++)
{
	score.add(r.getStudentid(sname.get(i)));
}
int num=sname.size();
xml_reader d=new xml_reader();
d.readruleXml(course);
int  total=d.getTotalpoints();
int time =d.getTime();

%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><%=r.getStudentid(sname.get(0)) %></title>
<link type="text/css" rel="stylesheet" href="css/style.css" />
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
            <a href=''>Give paper</a>
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
     
        <table  class="gridtable">
        <caption>Exam Information</caption>
        <tr>
        <th>Examination Name</th><td><%=course %></td>
        <tr>
        <tr>
        <th>Examination Time</th><td><%=time %> minutes</td>
        <tr>
        <tr>
        <th>Examination Point</th><td><%=total %></td>
        <tr>
        </table>

        <table id="alltable" class="tablesorter">
        <caption>Grade</caption>
        <thead> 
        <tr>
        <th>Students</th><th>Scores</th>
        </tr>
        </thead>
        <tbody> 
       <% 
          for(int i=0;i<num;i++)
          {
        	 
          %>
          
          <tr>
        <td><%=sname.get(i) %></td><td><%=score.get(i) %></td>
        </tr>
         
          <%
          }
          %>
        </tbody> 
        </table>

        <input type="button" name="out_excel" onClick="$('#alltable').tableExport({type: 'excel', escape: 'false'});" value="Export to Excel" class="notPrint"> 

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
