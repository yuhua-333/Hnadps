<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>订单信息</title>
<style> 
body{ text-align:center} table {margin: auto;}
.div{ margin:0 auto; width:900px; height:200px; border:3px solid black}
</style> 
</head>
<body>
<br>
<br>
<b>医院核酸检测流程系统（管理端）</b>
<br>
<br>
<div class="div"> 
<br>
<br>
	<table border=1 >
		<tr>
			<td>订单号</td>
			<td>用户号</td>
			<td>姓名</td>
		</tr>
		<tr>
			<td>${ordeatlis.oid}</td>
			<td>${ordeatlis.uid}</td>
			<td>${ordeatlis.name}</td>
		</tr>
	</table>
	<br>
	<a href="${pageContext.request.contextPath }/ord">返回</a>
</div>
</body>
</html>