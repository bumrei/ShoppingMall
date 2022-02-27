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

<input type="text" name="writer" class="form-control" id="exampleInputEmail2" placeholder="Enter Writer" value="<sec:authentication property="principal.sellerId"/>" readonly>
<c:set var="haha" property="principal.sellerId"></c:set>
<div class="yeah" data-sellerId="<sec:authentication property="principal.sellerId"/>"></div>


<script>
    // CartController 에 fetch 를 통해 로그인 된 아이디 를 넘기고 싶은데 내가 아는 방법 3가지.

    // 1. input 태그에 value 로 넣기.
    // 1. input 태그를 사용할때 이것 사용하면 좋을 듯
    let inputvalue = document.getElementsByName("writer");
    console.log("Input 태그와 함께 사용하면 좋을 듯 = ", inputvalue[0].value)

    // 2. sec:authentication var 을 사용하기
    // 2. 이 방법이 좀 좋아보임
    <sec:authentication property="principal.sellerNm" var="hahahoho"/>
    let adm = '${hahahoho}';
    console.log("지금으로써는 이방법이 좋은 듯 = ", adm)

    // 3. qualifiedName element 를 사용해 넘기기
    // 3. 이 방법도 썩 괜찮은듯
    let yeahAdmin = document.querySelector(".yeah")
    let ha = yeahAdmin.getAttribute("data-sellerId")
    console.log(ha)
</script>
</body>
</html>
