<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="org.springframework.http.HttpRequest"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Order</title>
<style> 
body{ text-align:center} table {margin: auto;}
.div{ margin:0 auto; width:900px; height:500px; border:3px solid black}
</style> 
</head>
<body>
<br>
<b>医院核酸检测流程系统（用户端）</b>
<br>
<br>
<div class="div"> 
<br>
    <a href="${pageContext.request.contextPath }/logout">退出登录</a><br>
    <br>
    <form action="${pageContext.request.contextPath}/findOrdByName" method="post">
        <b>输入姓名查询订单详细信息</b>
		<input type="text" name="name" id="name"/>
		<input type="submit" value="查询" />
	</form>
	<br>
</div>
</body>
</head>
</html>