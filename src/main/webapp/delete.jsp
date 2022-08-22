<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>删除</title>
    <style>
        body {
            text-align: center
        }

        table {
            margin: auto;
        }

        .div {
            margin: 0 auto;
            width: 900px;
            height: 300px;
            border: 3px solid black
        }
    </style>
</head>
<body>
<br>
<br>
<b>医院核酸检测流程系统（管理端）</b>
<br>
<br>
<div class="div">
    <br>
    <br>
    <form action="${pageContext.request.contextPath }/delete" method="post">
        <table>
            <thead>
            <tr style="text-align: center;">
                <th>订单号</th>
                <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><input type="text" name="oid" id="oid"></td>
                <td><input type="submit" id="delete" value="删除"/></td>
            </tr>
            </tbody>
        </table>
        <p style="color: red">${delete}</p>
        <a href="${pageContext.request.contextPath }/ord">返回</a>
    </form>
</div>
</body>
</html>
