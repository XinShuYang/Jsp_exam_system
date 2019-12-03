<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
<!DOCTYPE>
<%String sid=(String)(session.getAttribute("ID"));/*接收的studentsid*/ %>
<html>
<%
String course=request.getParameter("course");
course="math";

db_reader r=new db_reader();
r.getstuinfo("1");
String name1 = r.getName();
String gender = r.getGender();
int age = r.getAge();
String date = r.getAdmission();
String school = r.getSchool();

%>
<%




  ArrayList<String> subjects=new ArrayList<String>();
 // subjects=r.getscourseinfo(sid);
 
  subjects = r.getStatetoID(2,sid);
  
  
  String name=r.getStudentname(sid);
  int num=subjects.size();
 %>
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
			<li><%=name %> student</li>
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
          for(int i=0;i<num;i++)
          {
        	  System.out.println(subjects.get(i));
        	  System.out.println(x.Stupower(String.valueOf(subjects.get(i)), sid));
        	  System.out.println("///////////");
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
          <a href="Stotal_transcript.jsp?sid=<%=sid %>">Total Subjects</a>
          </div>
        </li>
				<li>
          <h4 class="M4"><span></span>Edit personal info</h4>
          <div class="list-item none">
            <a href="Sinfo.jsp?sid=<%=sid %>">edit information</a>
            <a href="STmodify_information.jsp?sid=<%=sid %>">modify password</a>
          </div>
        </li>
				<li>
          <h4 class="M5"><span></span><a href="Exit.jsp"><u>Exit</u></a></h4>
          
        </li>
				
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
          <td class="right"><%=name1 %></td> 
          </tr>
          <tr ><td class="left"><label for="answer">Gender</label></td>
          <td class="right"><%=gender %></td> 
          </tr>
          
          <tr ><td class="left"><label for="answer">Age</label></td>
          <td class="right"><%=age %></td> 
          </tr>
          
          <tr ><td class="left"><label for="Admission Date">school</label></td>
          <td class="right"><%=date %></td> 
          </tr>
          
          <tr ><td class="left"><label for="answer">school</label></td>
          <td class="right"><%=school %></td> 
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
<div id="footer"><p>Copyright©  2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
