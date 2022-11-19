<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>订单信息</title>
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

        h2 {
            margin-bottom: 20px;
            text-align: center;
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
    <h3>订单号为${ordeatlis.oid}的信息如下</h3>
    <h3>账号:${ordeatlis.uid}</h3>
    <h3>姓名：${ordeatlis.name}</h3>
    <h3>预约日期：${ordeatlis.time}</h3>
    <h3>付款状态:${ordeatlis.state}</h3>
    <br>
    <br>
    <br>
    <div class="btn">
        <form action="${pageContext.request.contextPath}/ord" method="post">
            <button type="submit"/>返回</button>
        </form>
    </div>
<%--    <a href="${pageContext.request.contextPath }/ord">返回</a>--%>
</div>
</body>
</html>