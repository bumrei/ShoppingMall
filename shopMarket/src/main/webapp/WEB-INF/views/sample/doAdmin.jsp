<%--
  Created by IntelliJ IDEA.
  User: bumre
  Date: 2022-02-07
  Time: 오후 11:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>doAdmin</h1>

<h2><sec:authentication property="principal"></sec:authentication></h2>
<h2><sec:authentication property="principal.sellerNm"></sec:authentication></h2>
<h2><sec:authentication property="principal.sellerId"></sec:authentication></h2>
<h2><sec:authentication property="principal.sellerPw"></sec:authentication></h2>
<h2><sec:authentication property="principal.regDate"></sec:authentication></h2>
</body>
</html>
