<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="xml.*" %>
<% 
xml_reader read=new xml_reader();
xml_modify f = new xml_modify();
xml_calaulate cc = new xml_calaulate();
read.readruleXml("math");
int cn=read.getChoosenum();
int mc=read.getmChoosenum();
int jn=read.getJudgenum();
int sn=read.getShortnum();
String s ="";
String s1 ="";

String[][] mchoose=new String[mc][4];
String[][] choose=new String[cn][4];
String[] judge=new String[jn];
String[] essay=new String[sn];
String c = "wer";
c=request.getParameter("tap");
if(c==null){
	c="2321";
}
if (c.equals("ajax")){
	String a=request.getParameter("a");	
	String b=request.getParameter("b");
	f.setYour_answer(a);
	
	f.modifyPaper("math", "1", "q"+b);
}

else{
for(int i=0;i<cn;i++)
{

choose[i]=request.getParameterValues("choose_"+(i+1)+"");
int m=0;
if(choose[i]!=null)
m=choose[i].length;
for(int j=0;j<m;j++){
	s = "q" +(i+1);
f.setYour_answer(String.valueOf(choose[i][j]));
f.modifyPaper("math", "1", s);
System.out.println(choose[i][j]);
System.out.println(s);
System.out.println("===");
}
}

System.out.println("////////////////");

for(int i=0;i<mc;i++)
{
mchoose[i]=request.getParameterValues("mchoose_"+(i+1)+"");
int m=0;
if(mchoose[i]!=null)
m=mchoose[i].length;
for(int j=0;j<m;j++)
{
	
	s1 = s1 + mchoose[i][j]+"/";

}
s = "q" +(i+cn+1);
f.setYour_answer(s1);

f.modifyPaper("math", "1", s);
System.out.println(s1);
System.out.println(s);
System.out.println("===");
s = "";
s1 = "";
}


for(int i=0;i<jn;i++)
{
judge[i]=request.getParameter("judge_"+(i+1)+"");
s = "q" +(i+cn+mc+1);
f.setYour_answer(String.valueOf(judge[i]));
f.modifyPaper("math", "1", s);
}

for(int i=0;i<sn;i++)
{
	essay[i]=request.getParameter("essay_"+(i+1)+"");
	s = "q" +(i+cn+mc+1+jn);
	f.setYour_answer(String.valueOf(essay[i]));
	f.modifyPaper("math", "1", s);
}





}





%>

<%
int a = cc.calculateObject("math", "1");
out.print(a);
f.setObjectpoints(a);
f.setPstate("1");
f.modifyPaper("math", "1", "-1");

%>



<html lang="ch" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>The online examination system</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
        
        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            
        <![endif]-->

    </head>

    <body style="background-image: url(images/ynu.jpg);">
    <div class="cenx">
    You have finished this exam！
    </div>
    <td style="left:6pt;left:100pt">
    <center>
    <a href="../examination/Login.jsp"><input type="button"  value="Exit" style=" background-color: orange; padding: 15px 100px;"></input></a>
    </center>
    </td>
       
        <!-- Javascript -->
    </body>

</html>





