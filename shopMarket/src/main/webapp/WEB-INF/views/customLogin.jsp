<%--
  Created by IntelliJ IDEA.
  User: bumre
  Date: 2022-02-14
  Time: 오후 9:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<form action="/login" method="post">
    <input type="text" name="username">
    <input type="password" name="password">
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
    <input type="checkbox" id="remember" name="remember-me">
    <label for="remember">Remember Me</label>
    <button>Login</button>
</form>

</body>
</html>
