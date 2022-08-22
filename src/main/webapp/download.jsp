<%@ page language="java" contentType="text/html; charset=UTF-8"
     pageEncoding="UTF-8"%>
<%@page import="java.net.URLEncoder"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
     "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>下载页面</title>
<style> 
body{ text-align:center} 
.div{ margin:0 auto; width:900px; height:300px; border:3px solid black}
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
	<%-- <a href="${pageContext.request.contextPath }/download?filename=1.jpg">
    	文件下载 
	</a> --%>
	
	<a href="${pageContext.request.contextPath }/download?filename=<%=
                                   URLEncoder.encode("壁纸.png", "UTF-8")%>">
		中文名称文件下载 
	</a>
	<br>
	<br>
	<br>
	<a href="${pageContext.request.contextPath }/ord">返回</a>
</div>
</body>
</html>
