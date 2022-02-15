<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: bumre
  Date: 2022-02-07
  Time: 오후 11:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>DoAll</title>
</head>
<body>
<h1>doAll</h1>

<sec:authorize access="isAnonymous()">
    <a href="/customLogin">Login plz...</a>
</sec:authorize>

<sec:authorize access="isAuthenticated()">
    <a href="/logout">Logout</a>
</sec:authorize>

</body>
</html>
