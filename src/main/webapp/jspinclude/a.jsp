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
<h1>a.jsp</h1>
<jsp:include page="b.jsp">
    <jsp:param name="username" value="zj"/>
    <jsp:param name="password" value="1017"/>
</jsp:include>
===============================================
<%--<jsp:forward page="b.jsp">--%>
<%--    <jsp:param name="username" value="zj"/>--%>
<%--    <jsp:param name="password" value="1017"/>--%>
<%--</jsp:forward>--%>
</body>
</html>
