<%@ page import="com.chenling.model.User" %><%--
  Created by IntelliJ IDEA.
  User: chenling
  Date: 2021/4/14
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Info</h1>
<% User user = (User)request.getAttribute("user");%>
<table border="1px" cellspacing="0" >
    <tr >
        <td>username: </td>
        <td><%=user.getUsername()%></td>
    </tr>
    <tr>
        <td>password: </td>
        <td><%=user.getPassword()%></td>
    </tr>
    <tr>
        <td>Email: </td>
        <td><%=user.getEmail()%></td>
    </tr>
    <tr>
        <td>Gender: </td>
        <td><%=user.getGender()%></td>
    </tr>
    <tr>
        <td>BirthDate: </td>
        <td><%=user.getBirthDate()%></td>
    </tr>
</table>
<%@include file="footer.jsp"%>
