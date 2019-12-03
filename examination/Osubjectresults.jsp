<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
<%
String course=request.getParameter("course");
course="math";
db_reader r=new db_reader();
ArrayList<String> sname= new ArrayList<String>();
ArrayList<String> score= new ArrayList<String>();
sname=r.getStuname(r.getCourseid(course));

for(int i =0;i < sname.size();i++)
{
	String s = r.getSG(r.getCourseid(course),r.getStudentid(sname.get(i)));
	score.add(s);
	
}
int num=sname.size();
xml_reader d=new xml_reader();
d.readruleXml(course);
int  total=d.getTotalpoints();
int time =d.getTime();

%>
 %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Office Subject Scores</title>
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
          <a href="Oexamapplication.jsp">Subject List Application</a>
           </div>
        </li>
       <li>
       
          <h4 class="M3"><span></span>Query results</h4>
          <div class="list-item none">
          <a href="Oqueryresult.jsp">Subject List Scores</a>
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
                <li><a href="office.jsp">Dean's Office</a>-><a href="Oqueryresult.jsp">Query Results</a>-><%=course %></li>
                
            </ul>
      </div>
      <div class="main">
      
      <table id="alltable" class="tablesorter">
        <caption>Exam Details</caption>
        <thead> 
        <tr>
        <th>Sname</th><th>Scores</th>
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
        <!--main content-->
      </div>
    </div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
    