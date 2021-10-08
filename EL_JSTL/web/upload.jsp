<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/9/3
  Time: 15:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="http://localhost:8080/EL_JSTL/uploadServlet" enctype="multipart/form-data">
        用户名：<input type="text" name="username"><br>
        头像：<input type="file" name="photo"><br>
        提交：<input type="submit" value="上传">
</form>
</body>
</html>
