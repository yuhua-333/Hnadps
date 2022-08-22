<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>注册界面</title>
    <style>
        body {
            text-align: center
        }

        .div {
            margin: 0 auto;
            width: 900px;
            height: 400px;
            border: 3px solid black
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
<br>
<br>
<b>请输入注册信息</b>
<br>
<br>
<div class="div">
    <br>
    <br>
    <form action="${pageContext.request.contextPath }/insertUser" method="post">

        姓&nbsp;名:&nbsp;<input id="Name" type="text" name="Name"/>
        <br/><br/>
        密&nbsp;码:&nbsp;<input id="Password" type="text" name="Password"/>
        <br/><br/>
        手机号:&nbsp;<input id="Phone" type="text" name="Phone"/>
        <br/><br/>
        身份证号:&nbsp;<input id="idNum" type="text" name="idNum"/>
        <br/><br/>

        <input type="submit" value="注册"/>
    </form>
</div>
</body>
</html>