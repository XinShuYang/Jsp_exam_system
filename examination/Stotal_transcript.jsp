<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE>
<%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
<%
String sid=(String)(session.getAttribute("ID"));/*接收的studentsid*/ 

xml_reader r=new xml_reader();
ArrayList<String> subject=new ArrayList<String>();
ArrayList<String> score=new ArrayList<String>();
db_reader d=new db_reader();
d.getCandG(sid);
subject=d.getCour();
score=d.getGrad();
int num=subject.size();
%>

<%


db_reader dr=new db_reader();
ArrayList<String> subjects=new ArrayList<String>();
// subjects=r.getscourseinfo(sid);

subjects = dr.getStatetoID(2,sid);


String name=dr.getStudentname(sid);
int num1=subjects.size();

 %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>manage system</title>
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
            <a href='Sindex.jsp'>Notice</a>  
           </div>
        </li>
        <li>
          <h4 class="M2"><span></span>Examinations</h4>
          <div class="list-item none">
             <% 
             xml_reader x = new xml_reader();
          for(int i=0;i<num1;i++)
          {
        	  int n =x.Stupower(subjects.get(i), sid);
         	 if(n == 0){ 
          %>
          <a href=../exam/exam1.jsp?course=<%=subjects.get(i) %>&sid=<%=sid %> ><%=subjects.get(i) %></a>
          <%
          }
         	 }
             
          %>         
           </div>
        </li>

        <li>
          <h4 class="M3"><span></span>Transcript</h4>
          <div class="list-item none">
          <a href=''>Total Subjects</a>
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
      
       <table id="alltable" class="tablesorter">
        <caption>Exam Details</caption>
        <thead> 
        <tr>
        <th>Subject</th><th>Scores</th>
        </tr>
        </thead>
        <tbody> 
        
        
         <% 
          for(int i=0;i<num;i++)
          {
        	 
          %>
          
          <tr>
        <td><%=d.getIDcourse(subject.get(i)) %></td><td><%=score.get(i) %></td>
        </tr>
         
          <%
          }
          %>
        </tbody> 
        </table>
     
     
        

        

        <input type="button" name="out_excel" onClick="$('#alltable').tableExport({type: 'excel', escape: 'false'});" value="Export to Excel" class="notPrint"> 

     

      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
