<%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-13
  Time: 16:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>获取session中的数据</h1>
<%
out.println(session.getAttribute("aaa"));
%>
</body>
</html>
