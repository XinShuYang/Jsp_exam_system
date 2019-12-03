<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page language="java" import="java.sql.Statement" import="java.sql.*"  import="my1.*" import="java.util.*,java.io.*" %>
<!DOCTYPE html>
<html lang="ch" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>The online examination system</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- CSS -->
          
        <link rel="stylesheet" href="css/login_reset.css">
        <link rel="stylesheet" href="css/login_supersized.css">
        <link rel="stylesheet" href="css/login_style.css"> 
        
         <script src="js/jquery-1.8.3.min.js"></script>
        <script src="js/supersized.3.2.7.min.js"></script>
        <script src="js/supersized-init.js"></script>
        <script src="js/scripts.js"></script>

        <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
            
        <![endif]-->

    </head>

    <body>

        <div class="page-container">
            <h1></h1>
            <br/>
            <h1>GWU Online Exam System--Login</h1>
            <form action="check.jsp" method="post">
                <input type="text" name="ID" class="username" placeholder="User">
                <input type="password" name="password" class="password" placeholder="Password">
                <button type="submit">Login</button>
                <div class="error"><span>+</span></div>
            </form>
            <div class="connect">
                <p>contact us:</p>
                <p>
                    <a class="facebook" href=""></a>
                    <a class="twitter" href=""></a>
                </p>
            </div>
        </div>
        <!-- Javascript -->
    </body>

</html>

