<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>전역변수 테스트2</title>
    <%
        String userId = application.getInitParameter("userId");
        String memberId = application.getInitParameter("memnerId");
        String sid = (String) application.getAttribute("sid");
    %>
</head>
<body>
<h1>전역변수 테스트2</h1>
<h2><%=userId%> 님의 웹 애플리케이션</h2>
<hr>
<h2>관리자님의 아이디는 <%=memberId%>입니다.</h2>
<hr>
<h2>손님의 아이디는 <%=sid%></h2>
<hr>
<a href="test01.jsp">전역변수 테스트1</a>
<a href="/">메인으로</a>

</body>
</html>