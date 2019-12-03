<html> 
<head> 
<style type="text/css"> 
.menux 
{ 
top:650;
background-color:green; 
width:1366; 
position:absolute;
color: white; 
text-align: center; 
font-size:9pt; 
font-weight:bolder; 
} 
.submenu 
{ 
position:absolute; 
top:600; 
background-color: 
yellow;width:1366; 
font-size:9pt; 
} 
</style> 
</head> 

<body> 
<SCRIPT> 
var cm=null; 
document.onclick = new Function("show(null)") 
function getPos(el,sprop) 
{var iPos = 0 
while (el!=null) 
{iPos+=el["offset" + sprop] 
el = el.offsetParent} 
return iPos} 
function show(el,m) 
{if (m) { m.style.display=''; 
m.style.pixelLeft = getPos(el,"Left") 
m.style.pixelTop = getPos(el,"Top") + el.offsetHeight} 
if ((m!=cm) && (cm)) cm.style.display='none';cm=m} 
</SCRIPT> 

<table border=0> 
<tr> 
<td ID="d1" onmouseover="show(this,ds1);" class="menux">杂志技术站点</td> 

</tr> 
</table> 

<DIV ID="ds1" CLASS="submenu" STYLE="display:none" onmouseleave="this.style.display='none'"> 
<BR><A HREF="http://www.yesky.com">天极网 Yesky.com</A> 
<BR><A HREF="http://www.cbinews.com">电脑商情报</A> 
<BR><A HREF="http://www.newsoft.com.cn">新潮电子</A> 
<BR> 

</body> 
</html> 