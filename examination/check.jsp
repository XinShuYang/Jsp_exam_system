<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.sql.Statement" import="java.sql.*"
	import="xml.*" import="databse.*" import="java.util.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%
 String ID=request.getParameter("ID");
 String password=request.getParameter("password");
 System.out.println(password);

%>
<jsp:useBean id="db_check" class="database.db_check" />
<jsp:setProperty name="db_check" property="ID"
	value="<%=ID.trim()%>" />
<jsp:setProperty name="db_check" property="password"
	value="<%=password.trim()%>" />

<%
 System.out.println(password);
 String result=db_check.checkIt();
 
 
 System.out.println(result);
 
 {
 if(result.equals("0"))
 	{
  	session.setAttribute("ID",ID);
 	// String pn=(String)(session.getAttribute("papernum"));
  	response.sendRedirect("Sindex.jsp");
  	
 	}
 else if(result.equals("1"))
 	{ 
	session.setAttribute("ID",ID);
 	response.sendRedirect("Tinfo.jsp?id="+ID+"");
 	}
 else if(result.contains("2")==true)
 	{
	 session.setAttribute("ID",ID);
	 response.sendRedirect("Oexamapplication.jsp");
 	}
 else if(result.contains("3")==true)
	{
	 session.setAttribute("ID",ID);
	 response.sendRedirect("Admin.jsp");
	}
 
 else
 { 
  %>
<jsp:forward page="Login.jsp">
	<jsp:param name="error" value="<%=result%>" />
</jsp:forward>
<%
 }
 }
%>