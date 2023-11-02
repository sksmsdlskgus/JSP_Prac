<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title></title>
    <%
        pageContext.setAttribute("name","이나현");
        pageContext.setAttribute("age","22");
    %>
</head>
<body>
<h2 class="title">include directive</h2>
<div class="container">
    <%@ include file="includeFile.jsp"%>
</div>
<hr>
<h2 class="title">include action tag</h2>
<div class="container">
    <jsp:include page="includeFile.jsp"></jsp:include>
</div>
</body>
</html>
