<%--
  Created by IntelliJ IDEA.
  User: chenling
  Date: 2021/4/14
  Time: 16:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="header.jsp"%>
<h1>User Info</h1>
<table border="1px" cellspacing="0" >
    <tr >
        <td>username: </td>
        <td><%=request.getAttribute("username")%></td>
    </tr>
    <tr>
        <td>password: </td>
        <td><%=request.getAttribute("password")%></td>
    </tr>
    <tr>
        <td>Email: </td>
        <td><%=request.getAttribute("email")%></td>
    </tr>
    <tr>
        <td>Gender: </td>
        <td><%=request.getAttribute("gender")%></td>
    </tr>
    <tr>
        <td>BirthDate: </td>
        <td><%=request.getAttribute("birthdate")%></td>
    </tr>
</table>
<%@include file="footer.jsp"%>
