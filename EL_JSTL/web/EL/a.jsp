<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/9/2
  Time: 17:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        request.setAttribute("key", "值");
    %>
    表达式脚本输出key的值是：<%=request.getAttribute("key")%><br>
    EI表达式输出key的值是：${key}
</body>

</html>
