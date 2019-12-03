<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     <%@page language="java"  import="xml.*" %>
 <%@page language="java"  import="database.*" import="java.util.ArrayList" %>
 <%
String sid=(String)(session.getAttribute("ID"));/*studentsid*/
if(sid==null){
	  response.sendRedirect("Login.jsp");
	  } 
else
{

  db_reader r=new db_reader();
  ArrayList<String> subjects=new ArrayList<String>();
 // subjects=r.getscourseinfo(sid);
 
  subjects = r.getStatetoID(2,sid);
  
  
  String name=r.getStudentname(sid);
  int num=subjects.size();
  
  response.setHeader("Pragma","No-cache"); 
  response.setHeader("Cache-Control","No-cache"); 
  response.setDateHeader("Expires", -1); 
  response.setHeader("Cache-Control", "No-store"); 
 %>
<!DOCTYPE>
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
		<div class="m-right">
			<div class="right-nav">
					<ul>
							<li><img src="images/home.png"></li>
								<li style="margin-left:25px;">Location:</li>
								<li><a href="#">indexS</a></li>
								
						</ul>
			</div>
			<div class="main">
    <h1> Examination Rules</h1><br>
	&emsp;&ensp;1. Candidates should take a good second-generation ID card and ticket (available candidates of foreign nationality passport nationality).<br><br>
    2. The candidates must enter the examination room on time, late comers can not press waive admission exam.<br><br>
    3. Candidates shall enter the examination room after the identification placed on top of the desktop to check.<br><br>
    4. In addition to identification and examination candidates supplies, other personal items should be placed in the specified location within the examination room.<br><br>
    5. forbidden to mobile phones and other electronic devices into the examination room. Offenders processed by cheating.<br><br>
    6. Candidates should fill in the correct personal information and answers on the answer sheet, fill in and assume the consequences of errors.<br><br>
    7. Candidates remain quiet in the examination room, can not talk and move around. Offenders, test scores will be canceled.<br><br>
    8. The test may not leave the examination room halfway. Otherwise, test scores will be canceled.<br><br>
    9. During the exam questions, etc., please raise their hands to solve the invigilator may not make much noise.<br><br>
			</div>
		</div>
</div>
<div class="bottom"></div>
<div id="footer"><p>Copyright©  2019 all right reserved by Xin </p></div>
<script>navList(12);</script>
</body>
</html>
<% } %>
