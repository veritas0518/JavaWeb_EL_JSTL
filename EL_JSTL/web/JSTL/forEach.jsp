<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="com.pojo.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/9/3
  Time: 14:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>

        table {
            border: 1px black solid;
            width: 600px;
            border-collapse: collapse;

        }

        td, th {
            border: 1px black solid;
        }

    </style>
</head>
<body>
    <%--
        1.遍历 1 到 10，输出
        begin 属性设置开始的索引
        end 属性设置结束的索引
        var 属性表示循环的变量(也是当前正在遍历到的数据)
        for (int i = 1; i < 10; i++)
    --%>
    <table border="1" cellspacing="0">
        <c:forEach begin="1" end="10" var="i">
            <tr>
                <td>
                    <h6>第${i}行</h6><br>
                </td>
            </tr>
        </c:forEach>
    </table>
    <hr>

    <%--
    2.遍历 Object 数组
        for (Object item: arr)
        items 表示遍历的数据源（遍历的集合）
    var 表示当前遍历到的数据
    --%>
    <%
        request.setAttribute("arr", new String[]{"124141534679", "98744398437", "437481118493"});
    %>
    <c:forEach items="${requestScope.arr}" var="item">
        ${item}<br>
    </c:forEach>
    <hr>

    <%
        Map<String, Object> map = new HashMap<>();
        map.put("key1", "value1");
        map.put("key2", "value2");
        map.put("key3", "value3");

    //    for (Map.Entry<String,Object> entry  :map.entrySet() ) {
    //    }
        request.setAttribute("map", map);
    %>
    <c:forEach items="${requestScope.map}" var="Entry">
        <h2>${Entry.key}
    </c:forEach>
    <hr>

        <%-- 4. 遍历 List 集合---list 中存放 Student 类，有属性：编号，用户名，密码，年龄， 电话信息 --%>
                <%
                List<Student>  studentList  =new ArrayList<>();
                for(int i = 0; i < 10; i++) {
                  studentList.add(new Student(i,"username"+i,"pass"+i,18+i,"phone"+i));
                }

                request.setAttribute("stus",studentList);
            %>

            <table border="1" cellspacing="0">
                <tr>
                    <th>编号</th>
                    <th>用户名</th>
                    <th>密码</th>
                    <th>年龄</th>
                    <th>电话</th>
                    <th>当前遍历到的数据</th>
                    <th>遍历的索引</th>
                    <th>遍历的个数</th>
                    <th>遍历的数据是否是第一条</th>
                    <th>遍历的数据是否是最后一条</th>
                    <th>开始</th>
                    <th>结束</th>
                    <th>步长</th>
                </tr>

                <%--
                    items 表示遍历的集合
                    var 表示遍历到的数据
                    begin 表示遍历的开始索引值
                    end 表示结束的索引值
                    step 属性表示遍历的步长值
                    varStatus 属性表示当前遍历到的数据的状态
                    for（int i = 1; i < 10; i+=2）
                --%>

                <c:forEach begin="1" end="7" step="2" varStatus="status" items="${requestScope.stus}" var="stu">
                    <tr>
                        <td><h5>${stu.id}<br></td>
                        <td><h5>${stu.username}<br></td>
                        <td><h5>${stu.password}<br></td>
                        <td><h5>${stu.age}<br></td>
                        <td><h5>${stu.phone}<br></td>
                        <td><h5>${status.current}<br></td>
                        <td><h5>${status.index}<br></td>
                        <td><h5>${status.count}<br></td>
                        <td><h5>${status.first}<br></td>
                        <td><h5>${status.last}<br></td>
                        <td><h5>${status.begin}<br></td>
                        <td><h5>${status.end}<br></td>
                        <td><h5>${status.step}<br></td>
                    </tr>

                </c:forEach>
            </table>
</body>
</html>
