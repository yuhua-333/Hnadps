<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>文件上传</title>
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
        // 判断是否填写上传人并已选择上传文件
        function check() {
            var name = document.getElementById("name").value;
            var file = document.getElementById("file").value;
            if (name == "") {
                alert("填写上传人");
                return false;
            }
            if (file.length == 0 || file == "") {
                alert("请选择上传文件");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
<div class="div">
    <h2>上传文件</h2>
    <form action="${pageContext.request.contextPath }/fileUpload" method="post" enctype="multipart/form-data" onsubmit="return check()"/>
        <input id="name" type="text" name="name" placeholder="请输入上传人信息：">
        <input id="file" type="file" name="uploadfile" multiple="multiple" >
    <div class="btn">
        <button type="submit"/>上传</button>
    </div>

    <form action="${pageContext.request.contextPath}/ord" method="post">
        <button type="submit"/>返回</button>
    </form>
</div>
</body>

</html>
