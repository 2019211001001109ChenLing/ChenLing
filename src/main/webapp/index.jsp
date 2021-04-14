<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


<%@include file="header.jsp" %>
<%--%><h1><%= "Hello world！" %>
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
<a href="login.jsp">login-week5</a>--%>

<form method="get" target="_blank" action="search">
    <input type="text" name="txt" size=30>
    <select name="search">
        <option value="baidu">Baidu</option>
        <option value="bing">Bing</option>
        <option value="google">Google</option>
        <input type="submit" value="Search">
    </select>
</form>
<%@include file="footer.jsp" %>
