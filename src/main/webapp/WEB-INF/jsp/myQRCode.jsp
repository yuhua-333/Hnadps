<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/8/23
  Time: 12:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>核酸二维码</title>
    <style>
        body {
            text-align: center
        }
        .div{
            margin: 0 auto;
            width: 400px;
            height: 400px;
        }
    </style>
</head>
<body>
<br>
<br>
<div class="div">
    <h3>核酸二维码</h3>
    <br>
    <img src="${pageContext.request.contextPath}/getQRCode" id="npcImg"/>
</div>
</body>
</html>
