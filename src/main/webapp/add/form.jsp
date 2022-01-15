<%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-13
  Time: 14:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/AServlet" method="post">
    整数1：<label>
    <input type="text" name="num1">
</label>
    整数2：<input type="text" name="num2">
    <button type="submit">提交</button>
</form>
</body>
</html>
