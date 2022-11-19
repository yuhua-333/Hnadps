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
        * {
            margin: 0;
            padding: 0;
        }

        body {
            text-align: center;
            background: url(../imgs/b2.png);
        }

        .div {
            width: 500px;
            height: 440px;
            background-color: white;
            padding: 20px;
            box-sizing: border-box;
            position: absolute;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
        }

        input{
            width: 100%;
            height: 30px;
            display: block;
            margin-bottom: 20px;
            padding-left: 10px;
            box-sizing: border-box;
        }

        h2 {
            margin-bottom: 20px;
            text-align: center;
        }

        .btn{
            width: 100%;
            height: 30px;
            display: block;
            margin-bottom: 20px;
            box-sizing: border-box;
        }

        button {
            width: 100%;
            height: 40px;
            background-color: rgb(235, 235, 235);
            border: none;
        }

        button:active {
            box-shadow: 0 0 3px rgb(173, 172, 172);
            /* x偏移  y偏移  模糊值 颜色 */
        }
    </style>
</head>
<body>
<div class="div">
    <h3>核酸二维码</h3>
    <br>
    <img src="${pageContext.request.contextPath}/getQRCode" id="npcImg"/>
    <form action="${pageContext.request.contextPath}/order" method="post">
        <button type="submit"/>返回</button>
    </form>
</div>
</body>
</html>
