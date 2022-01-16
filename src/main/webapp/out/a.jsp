<%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-16
  Time: 15:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%request.setAttribute("msg","<script>alert('hello zj');</script>");%>

<c:out value="${msg}" escapeXml="false"/>
</body>
</html>
