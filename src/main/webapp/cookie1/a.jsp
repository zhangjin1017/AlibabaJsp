<%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-13
  Time: 15:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>保存cookie</h1>
<%
    Cookie cookie1=new Cookie("aaa","AAA");
response.addCookie(cookie1);
    Cookie cookie2=new Cookie("bbb","BBB");
    response.addCookie(cookie2);
%>
</body>
</html>
