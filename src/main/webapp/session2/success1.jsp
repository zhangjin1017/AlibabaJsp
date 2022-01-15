<%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-13
  Time: 16:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>登录成功1</h1>
<%
String username= (String) session.getAttribute("username");
if (username == null){
    request.setAttribute("msg","你还没有登录");
    request.getRequestDispatcher("/session2/login.jsp").forward(request,response);
    return;
}
%>
欢迎<%=session.getAttribute("username")%>
</body>
</html>
