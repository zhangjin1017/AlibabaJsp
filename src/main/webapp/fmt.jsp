<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-16
  Time: 16:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
Date date=new Date();
request.setAttribute("date",date);
%>
<fmt:formatDate value="${requestScope.date}" pattern="yyyy-MM-dd HH:mm:ss"/><br/>
<%

    request.setAttribute("num1",3.1415926);
%>
<fmt:formatNumber value="${requestScope.num1}" pattern="0.000"/><br/>
<fmt:formatNumber value="${requestScope.num1}" pattern="#.###"/><br/>
</body>
</html>
