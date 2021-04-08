<%--
  Created by IntelliJ IDEA.
  User: chenling
  Date: 2021/3/25
  Time: 16:53
  To change this template use File | Settings | File Templates.
--%>
<%@include file="header.jsp" %>
<form method="post" action="register">
    username<input type="text" name="username"/><br/>
    password<input type="password" name="password"/><br/>
    Email<input type="text" name="email"/><br/>
    Gender:<input type="radio" name="gender" value="mail">Male <input type="radio" name="gender" value ="famail">Female<br/>
    Date of birth:<input type="text name=" name="birthDate"/><br/>
    <input type="submit" value="Register"/>
</form>


<%@include file="footer.jsp" %>
