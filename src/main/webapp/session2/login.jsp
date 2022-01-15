<%--
  Created by IntelliJ IDEA.
  User: 1216916137
  Date: 2022-01-11
  Time: 17:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page isELIgnored="false"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>

    <script type="text/javascript">
        function _change(){
            var img=document.getElementById("verifyCode");
            img.src="${pageContext.request.contextPath}/VerifyCodeServlet?a="+new Date().getTime();
        }
    </script>
</head>
<body>
<%
    String useranme="";
Cookie[] cookies=request.getCookies();
if (cookies!=null){
    for (Cookie c:cookies
         ) {
        if ("username".equals(c.getName())){
            useranme=c.getValue();
        }
    }
}
%>
<span style="color: red; ">${msg}</span>

<form action="${pageContext.request.contextPath}/LoginServlet" method="post">
用户名：<input type="text" name="username" value="<%=useranme%>"/><br/>
    密码：<input type="password" name="password"/><br/>
    验证码：<input type="text" name="verifyCode"/><br/>
    <img id="verifyCode" src="${pageContext.request.contextPath}/VerifyCodeServlet"/>
    <a href="javascript:_change()">刷新</a><br/>
<input type="submit" value="登录"/>
</form>
</body>
</html>
