<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@page import="org.springframework.http.HttpRequest" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Order</title>
    <style>

        * {
            margin: 0;
            padding: 0;
        }

        body {
            text-align: center;
            background: url("../imgs/b3.png");
        }

        header{
            /*color:White;*/
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

    </style>

</head>
<body>
<header>
    <h1>医院登记核酸检测流程系统</h1>
    <div>
        <a href="${pageContext.request.contextPath}/gotoQRCode">去查看我的核酸二维码</a><span class="sp">|</span>
        <a href="${pageContext.request.contextPath}/pre-book.jsp">去预约</a><span class="sp">|</span>
        <a href="${pageContext.request.contextPath }/logout">退出登录</a><span class="sp"></span>
    </div>

</header>
<nav>
    <ul>
        <li><a href="${pageContext.request.contextPath}/fileUpload.jsp">文件上传</a></li>
        <li><a href="${pageContext.request.contextPath}/download.jsp">文件下载</a></li>
        <li><a href="${pageContext.request.contextPath}/gotoQRCode">去查看我的核酸二维码</a></li>
        <li><a href="${pageContext.request.contextPath}/pre-book.jsp">去预约</a></li>
    </ul>
</nav>
<section>
    <div class="main">

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
    <br>
    <b>输入姓名查询详细信息</b>
    <form action="${pageContext.request.contextPath}/findOrdByName" method="post">
        <input type="text" name="name" id="name"/>
        <button type="submit"/>查询</button>
    </form>
</aside>
<footer>
    yuhua
</footer>
</body>
</head>
</html>