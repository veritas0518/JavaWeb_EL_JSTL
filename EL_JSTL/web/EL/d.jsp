<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/9/3
  Time: 10:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    ${12 == 12}或${12 eq 12}
    ${12 != 12}或${12 ne 12}
    ${12 < 12}或${12 lt 12}
    ${12 > 12}或${12 gt 12}
    ${12 <= 12}或${12 le 12}
    ${12 >= 12}或${12 ge 12}
    <hr>
    ${12 == 12 && 12 > 11}或${12 == 12 and 12 > 11}<br>
    ${12 == 12 || 12 > 11}或${12 == 12 or 12 > 11}<br>
    ${!true}或${not true}<br>

    ${12 + 12}<br>
    ${12 - 12}<br>
    ${12 * 12}<br>
    ${12 / 12}或${12 div 12}<br>
    ${18 % 12}或${18 mod 12}<br>

</body>
</html>
