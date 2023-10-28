<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>메인페이지</title>
    <c:set var="path" value="<%=request.getContextPath() %>" />
    <%@ include file="/common.jsp"%>
</head>
<body>
<div class="container-fluid">
    <%@include file="/header.jsp"%>
    <div class="contents">
        <h2>사용자 : ${user}</h2>
        <h2>메인 절대 주소 : ${realPath}</h2>
        <h2>메인 상대 주소 : ${path}</h2>
        <hr>
        <div class="btn-group">
            <a href="" class="btn btn-primary">서브1</a>
            <a href="" class="btn btn-primary">서브2</a>
        </div>
    </div>
    <%@ include file="/footer.jsp" %>
</div>
</body>
</html>
