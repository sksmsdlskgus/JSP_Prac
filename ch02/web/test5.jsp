<%@ page contentType="text/html;charset=UTF-8"  language="java" pageEncoding="UTF-8" %>
<%
    String path = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Scope Test</title>
</head>
<body>
<div class="container">
    <header id="hd">
        <%@include file="nav.jsp"%>
    </header>
    <h2 class="title">Scope Test</h2>
    <hr>
    <%
        String pg = (String) pageContext.getAttribute("pageData");
        String req = (String) request.getAttribute("reqData");
        String ses = (String) session.getAttribute("sesData");
        String app = (String) application.getAttribute("appData");
        String msg = (String) request.getAttribute("msg");
    %>
    <ul class="list">
        <li>pageContext : <%=pg%></li>
        <li>request : <%=req%></li>
        <li>session : <%=ses%></li>
        <li>application : <%=app%></li>
        <li>msg : <%=msg%></li>
        <li>img : <img src="<%=path%>/img/1.jpg" alt="임수향 존예"></li>
    </ul>
    <p>
        <a href="test6.jsp?req=<%=req %>&msg<%=msg %>">페이지6로 이동하기</a><br>
        <% if(ses!=null) { %>
        <a href="logout.jsp">로그아웃</a>
        <% } else { %>
        <a href="test4.jsp">로그인</a>
        <% } %>
    </p>
</div>
</body>
</html>