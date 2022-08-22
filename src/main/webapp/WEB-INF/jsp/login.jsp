<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登录界面</title>
<style> 
body{ text-align:center } 
.div{ margin:0 auto; width:400px; height:300px; border:3px solid black}
</style> 
<script>function changeImg() {
    document.getElementById("validateCodeImg").src="${pageContext.request.contextPath}/getVerify?"+Math.random();
}

function check(){
	var Name=$("#Name").val;
	var Password=$("#Password").val;
	if(Name==""||Password==""){
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
<b>医院核酸检测流程系统</b>
<br>
<br>
<div class="div"> 
<br>
<br>
    <span id="message">${msg}</span>
    <div class="login">
        <form action="${pageContext.request.contextPath }/login" method="post">
            姓&nbsp;名:<input id="Name" type="text" name="Name"/>
            <br/><br/>
            密&nbsp;码:<input id="Password" type="text" name="Password"/>
            <br/><br/>
            验证码：<input id="code" type="text" name="code"/>
            <br/><br/>
            <img id="validateCodeImg" src="${pageContext.request.contextPath }/getVerify" onclick="changeImg()"/><a href="" onclick="changeImg()">看不清，换一张</a>
            <br/><br/>
            <input type="submit" value="登录"/>
        </form>
    </div>
    <div class="register">
        <form action="${pageContext.request.contextPath}/register.jsp" method="post">
            <input type="submit" value="注册"/>
        </form>
    </div>
</div>
</body>
</html>