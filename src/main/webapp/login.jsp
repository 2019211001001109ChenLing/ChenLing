<%--
  Created by IntelliJ IDEA.
  User: chenling
  Date: 2021/4/8
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp" %>
<body>
<h1>Login</h1>
<%
    if(!(request.getAttribute("message") == null)){
        out.print("<h3 style=\"color:red;\">" + request.getAttribute("message") + "</h3>");
    }
%>
<form action="${pageContext.request.contextPath}/login" method="post">
    userName: <input type="text" name="username"></br>
    password: <input type="password" name="password"></br>
    <input type="submit" value="Login">
</form>
</body>
<%@include file="footer.jsp" %>



