<%@ page import="com.zj.domain.*" %>
<%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-15
  Time: 14:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
Address address=new Address();
address.setCity("常州");
address.setStreet("新闸");
    Employee employee=new Employee();
    employee.setName("zj");
    employee.setSalary(123456);
    employee.setAddress(address);

request.setAttribute("employee",employee);
%>

    ${requestScope.employee.address.city}

</body>
</html>
