<%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-14
  Time: 17:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>b.jsp</h1>
<%
String username=request.getParameter("username");
    String password=request.getParameter("password");
    out.print(username+","+password);
%>
</body>
</html>
