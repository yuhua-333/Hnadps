<%--suppress CssUnknownTarget --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>注册界面</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            text-align: center;
            background: url(../imgs/registerBackground.png);
        }

        .div {
            width: 400px;
            height: 420px;
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
    <script>
        function check() {
            var Name = $("#Name").val;
            var Password = $("#Password").val;
            if (Name == "" || Password == "") {
                $("#message").text("不能为空！");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="div">
    <h2>请输入注册信息</h2>
    <form action="${pageContext.request.contextPath }/insertUser" method="post">
        <input id="Name" type="text" name="Name" placeholder="请输入姓名："/>
        <input id="Password" type="text" name="Password" placeholder="请输入密码：">
        <input id="Phone" type="text" name="Phone" placeholder="请输入手机号："/>
        <input id="idNum" type="text" name="idNum" placeholder="请输入身份证号："/>
        <div class="btn">
            <button type="submit"/>注册</button>
        </div>
    </form>
    <div class="btn">
        <form action="${pageContext.request.contextPath}/index.jsp" method="post">
            <button type="submit"/>返回登录</button>
        </form>
    </div>
</div>
</body>
</html>