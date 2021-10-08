<%@ page import="com.pojo.Person" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%--
  Created by IntelliJ IDEA.
  User: admin
  Date: 2021/9/3
  Time: 9:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        Person person = new Person();
        person.setName("小张");
        person.setPhones(new String[]{"11111111111111", "213144233333", "124122148897"});

        List<String> cities = new ArrayList<>();
        cities.add("北京");
        cities.add("上海");
        cities.add("武汉");
        cities.add("成都");
        person.setCities(cities);

        //注意这里要new HashMap
        Map<String, Object> map = new HashMap<>();
        map.put("key1", "value1");
        map.put("key2", "value2");
        map.put("key3", "value3");
        person.setMap(map);

        pageContext.setAttribute("p", person);
    %><br>

    输出Person：${p}<br>
    输出Person的name属性：${p.name}<br>
    输出Person的phones数组属性值：${p.phones[2]}<br>
    输出Person的cities集合中的元素值：${p.cities}<br>
    输出Person的List集合中个别元素值：${p.cities[0]}<br>
    输出Person的Map集合：${p.map}<br>
    输出Person的Map集合中某个key的值：${p.map.key1}<br>
    输出Person的Map集合中某个key的值：${p.map.key2}<br>
</body>
</html>
