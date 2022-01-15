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
<h1>获取cookies</h1>
<%
Cookie[] cookies= request.getCookies();
if (cookies!=null){
    for (Cookie c:cookies) {
        out.println(c.getName()+"="+c.getValue());
    }
}
%>
</body>
</html>
