<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>文件上传成功页面</title>
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
                width: 400px;
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
    <h2>文件上传成功！可下载文件如下</h2>
    <a href="${pageContext.request.contextPath }/download?filename=<%=
                                   URLEncoder.encode("yuhua_医院核酸检测登记流程系统.png", "UTF-8")%>">
        医院核酸检测登记流程系统
    </a>
    <br>
    <br>
    <a href="${pageContext.request.contextPath }/download?filename=<%=
                                   URLEncoder.encode("路线导航.png", "UTF-8")%>">
        路线导航
    </a>
    <br>
    <br>
    <a href="${pageContext.request.contextPath }/download?filename=<%=
                                   URLEncoder.encode("日程.png", "UTF-8")%>">
        日程
    </a>
    <br>
    <br>
    <a href="${pageContext.request.contextPath }/download?filename=<%=
                                   URLEncoder.encode("AI检测.png", "UTF-8")%>">
        AI检测
    </a>
    <br>
    <br>
    <br>
    <form action="${pageContext.request.contextPath}/ord" method="post">
        <button type="submit"/>返回菜单页</button>
    </form>
</div>
</body>
</html>