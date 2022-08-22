<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="org.springframework.http.HttpRequest"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Ord</title>
<style> 
body{ text-align:center} table {margin: auto;}
.div{ margin:0 auto; width:900px; height:550px; border:3px solid black}
</style> 
</head>
<body>
<br>
<b>医院核酸检测流程系统（管理端）</b>
<br>
<br>
<div class="div">
<br>
    <a href="${pageContext.request.contextPath}/fileUpload.jsp">文件上传</a>&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="${pageContext.request.contextPath}/download.jsp">文件下载</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/insert.jsp">添加订单信息</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/update.jsp">更新订单信息</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/delete.jsp">删除订单信息</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="${pageContext.request.contextPath}/logout">退出登录</a>
	<br>
	<br>
	<hr>
	<br>
    <form action="${pageContext.request.contextPath}/findOrdById" method="post">
        <b>输入订单号查询详细信息</b>
		<input type="text" name="oid" id="oid"/>
		<input type="submit" value="查询" />
	</form>
	<br>
	<hr>
	<br>
	<c:if test="${empty requestScope.pagemsg}">
          没有任何用户信息！
    </c:if>
	<!-- 分页查询结果 -->
	<c:if test="${!empty requestScope.pagemsg}">
	<table border="1" cellpadding="10" cellspacing="0" class="table1">
	    <thead>
		<tr>
			<th>订单号</th>
			<th>顾客号</th>
			<th>顾客姓名</th>
			<th>操作</th>
		</tr>
		</thead>
		<c:forEach items="${requestScope.pagemsg.lists}" var="o">
				<tr>
					<th>${o.oid}</th>
					<th>${o.uid}</th>
					<th>${o.name}</th>
					<td><a href="${pageContext.request.contextPath}/update.jsp">修改</a></td>
				</tr>
		</c:forEach>
	</table>
	</c:if>
	
<table  border="0" cellspacing="0" cellpadding="0"  width="900px">
<tr>
<td class="td2">
	<br>
   <span>第${requestScope.pagemsg.currPage }/ ${requestScope.pagemsg.totalPage}页</span>&nbsp;&nbsp;
   <span>总记录数：${requestScope.pagemsg.totalCount }&nbsp;&nbsp;每页显示:${requestScope.pagemsg.pageSize}</span>&nbsp;&nbsp;
   <span>
       <c:if test="${requestScope.pagemsg.currPage != 1}">
           <a href="${pageContext.request.contextPath }/ord?currentPage=1">[首页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/ord?currentPage=${requestScope.pagemsg.currPage-1}">[上一页]</a>&nbsp;&nbsp;
       </c:if>

       <c:if test="${requestScope.pagemsg.currPage != requestScope.pagemsg.totalPage}">
           <a href="${pageContext.request.contextPath }/ord?currentPage=${requestScope.pagemsg.currPage+1}">[下一页]</a>&nbsp;&nbsp;
           <a href="${pageContext.request.contextPath }/ord?currentPage=${requestScope.pagemsg.totalPage}">[尾页]</a>&nbsp;&nbsp;
       </c:if>
   </span>
</td>
</tr>
</table>
</div>
</body>
</html>