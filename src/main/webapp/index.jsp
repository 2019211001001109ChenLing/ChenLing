<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>

<%@include file="header.jsp" %>
<h1><%= "Hello world！" %>
</h1>
<br/>
<a href="hello-servlet">Hello Servlet-week1</a>
<br/>
<a href="hello">Student info Servlet-week2</a>
<br/>
<a href="Life">Life Cycle Servlet-week3</a>
<br/>
<a href="register.jsp">Register-getParameter-week3</a>
<br/>
<a href="config">ConfigCycle getParameter-week4</a>
<br/>
<a href="register.jsp">Register JDBC -week4</a>
<br/>
<a href="index.jsp">include-week5</a>
<br/>
<a href="login.jsp">login-week5</a>
<br/>
<%@include file="footer.jsp" %>
</body>
</html>