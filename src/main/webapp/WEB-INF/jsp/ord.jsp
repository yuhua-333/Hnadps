<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@page import="org.springframework.http.HttpRequest" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Ord</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            text-align: center;
            background: url("../imgs/mainBackground.png");
        }

        header{
            color:White;
            text-align:center;
            height:100px;
            padding:10px;
        }

        nav{
            line-height:30px;
            height:450px;
            width:15%;
            float:left;
            padding:0px;
        }

        aside
        {
            width:15%;
            height:450px;
            float:right;
            padding:0px;
        }

        section
        {
            background: white;
            width:70%;
            height:450px;
            float:left;
            padding:0px;
        }

        .main{
            text-align:center;
        }

        footer
        {
            /*background-color:Fuchsia;*/
            height:60px;
            color:White;
            clear:both;
            text-align:center;
            padding:5px;
        }
        ul
        {
            list-style-type:none;
        }
        .sp
        {
            width:15px;
            padding:5px;
        }

        a
        {
            text-decoration:blink;
        }

        .tab1{
            width: 100%
        }
        table
        {
            border-collapse: collapse;
            margin: 0 auto;
            text-align: center;
        }
        table td, table th
        {
            border: 1px solid #cad9ea;
            color: #666;
            height: 30px;
        }
        table thead th
        {
            background-color: #CCE8EB;
            width: 100px;
        }
        table tr:nth-child(odd)
        {
            background: #fff;
        }
        table tr:nth-child(even)
        {
            background: #F5FAFA;
        }

        h1{
            color: black;
        }

        button {
            width: 100%;
            height: 20px;
            background-color: rgb(235, 235, 235);
            border: none;
        }

    </style>
</head>
<body>
<header>
    <h1>admin-医院登记核酸检测流程系统</h1>
    <div>
        <a href="${pageContext.request.contextPath}/fileUpload.jsp">文件上传</a><span class="sp">|</span>
        <a href="${pageContext.request.contextPath}/download.jsp">文件下载</a><span class="sp">|</span>
        <a href="${pageContext.request.contextPath}/insert.jsp">添加订单信息</a><span class="sp">|</span>
        <a href="${pageContext.request.contextPath}/update.jsp">更新订单信息</a><span class="sp">|</span>
        <a href="${pageContext.request.contextPath}/delete.jsp">删除订单信息</a><span class="sp">|</span>
        <a href="${pageContext.request.contextPath}/logout">退出登录</a><span class="sp"></span>
    </div>

</header>
<nav>
    <ul>
        <li><a href="${pageContext.request.contextPath}/fileUpload.jsp">文件上传</a></li>
        <li><a href="${pageContext.request.contextPath}/download.jsp">文件下载</a></li>
        <li><a href="${pageContext.request.contextPath}/insert.jsp">添加订单信息</a></li>
        <li><a href="${pageContext.request.contextPath}/update.jsp">更新订单信息</a></li>
        <li><a href="${pageContext.request.contextPath}/delete.jsp">删除订单信息</a></li>
    </ul>
</nav>

<section>

    <div class="main">
        <c:if test="${empty requestScope.pagemsg}">
            没有任何用户信息！
        </c:if>
        <!-- 分页查询结果 -->
        <c:if test="${!empty requestScope.pagemsg}">
            <table class="tab1"  border="1" >
                <thead>
                <tr>
                    <th>订单号</th>
                    <th>用户账号</th>
                    <th>顾客姓名</th>
                    <th>预约时间</th>
                    <th>订单状态</th>
                    <th>操作</th>
                </tr>
                </thead>
                <c:forEach items="${requestScope.pagemsg.lists}" var="o">
                    <tr>
                        <th>${o.oid}</th>
                        <th>${o.uid}</th>
                        <th>${o.name}</th>
                        <th>${o.time}</th>
                        <th>${o.state}</th>
                        <td><a href="${pageContext.request.contextPath}/update.jsp">修改</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>

        <table class="tab1" border="0" cellspacing="0" cellpadding="0" >
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
</section>
<aside>
    <b>输入订单号查询详细信息</b>
    <br>
    <form action="${pageContext.request.contextPath}/findOrdById" method="post">
        <input type="text" name="oid" id="oid"/>
        <br>
        <button type="submit"/>查询</button>
    </form>
</aside>
<footer>
    yuhua
</footer>
</body>
</html>