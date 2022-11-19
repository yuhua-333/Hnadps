<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>登录界面</title>
    <style>
        * {
            margin: 0;
            padding: 0;
        }

        body {
            text-align: center;
            background: url(../imgs/background.png);
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

        h2 {
            margin-bottom: 20px;
            text-align: center;
        }

        .message{
            margin-bottom: 20px;
            text-align: center;
        }

        input{
            width: 100%;
            height: 30px;
            display: block;
            margin-bottom: 20px;
            padding-left: 10px;
            box-sizing: border-box;
        }

        .yzm{
            width: 100%;
            height: 30px;
            display: block;
            margin-bottom: 20px;
            padding-left: 10px;
            box-sizing: border-box;
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
    <script>function changeImg() {
        document.getElementById("validateCodeImg").src = "${pageContext.request.contextPath}/getVerify?" + Math.random();
    }

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
<div class="message">
    <span id="message">${msg}</span>
</div>
<div class="div">
    <h2>医院登记核酸检测流程系统</h2>
    <div class="login">
        <form action="${pageContext.request.contextPath }/login" method="post">
            <input id="Name" type="text" name="Name" placeholder="请输入姓名"/>
            <input id="Password" type="text" name="Password" placeholder="请输入密码"/>
            <input id="code" type="text" name="code" placeholder="请输入验证码"/>
                <div class="yzm">
                     <img id="validateCodeImg" src="${pageContext.request.contextPath }/getVerify" onclick="changeImg()"/><a
                    href="" onclick="changeImg()">看不清，换一张</a>
                </div>
                <div class="btn">
                        <button type="submit">登录</button>
                </div>
        </form>
        <div class="btn">
            <form action="${pageContext.request.contextPath}/register.jsp" method="post">
                <button type="submit"/>注册</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>