<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body >

<script>

function windowopen(){
var target="http://play.zol.com.cn"
newwindow=window.open("","","scrollbars")
if (document.all){
newwindow.moveTo(0,0)
newwindow.resizeTo(screen.width,screen.height)
}
newwindow.location=target
}

</script>
<form>
<input type="button" onClick="windowopen()" value="全屏显示" name="button">
</form>




</body>
</html>