<%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-13
  Time: 15:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>删除cookies</h1>
<%
    Cookie cookie1=new Cookie("aaa","AAA");
    cookie1.setMaxAge(0);
    response.addCookie(cookie1);
%>
</body>
</html>
