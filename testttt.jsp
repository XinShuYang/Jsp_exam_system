<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.ArrayList" %>
<%@ page import="xml.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<% 
xml_reader r = new xml_reader();
xml_modify f = new xml_modify();
String id = r.getStuanswerID("math", "20131120113", "q1");
out.println("ok");
f.modifyPaper("math", "20131120113", "q3");
out.println(id);
%>