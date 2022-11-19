<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>添加</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            text-align: center;
            background: url(../imgs/b4.png);
        }

        .div {
            width: 500px;
            height: 340px;
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
    <h2>请输入要添加的订单信息</h2>
    <form action="${pageContext.request.contextPath }/insert" method="post">
        <input type="text" name="uid" id="uid" placeholder="请输入用户账号：">
        <input type="text" name="name" id="name" placeholder="请输入用户姓名：">
        <input type="text" name="time" id="time" placeholder="请输入预约时间：">
        <div class="btn">
        <button type="submit"/>确定</button>
        </div>
    </form>
    <div class="btn">
        <form action="${pageContext.request.contextPath}/ord" method="post">
            <button type="submit"/>返回</button>
        </form>
    </div>
</div>
</body>
</html>
