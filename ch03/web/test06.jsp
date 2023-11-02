<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>>EL(Expression Language) - 표현 언어</title>
</head>
<body>
<%
    String title = "오늘은 비가 안옴";
    String[] dhxogns = {"멋사대표","을지대학교 대표","그냥 사람","살기 싫다"};
    Map<String,String> tae = new HashMap<>();
    tae.put("name","그만하고싶지않아");
    tae.put("age","22");
    tae.put("nick","사람");

    request.setAttribute("title",title);
    request.setAttribute("oth",dhxogns);
    request.setAttribute("tae",tae);
%>
<h2>표현식(Expression)</h2>
<p><%=title%></p>
<div class="cate">
    <% for(String s:dhxogns) { %>
    <p><%=s%></p>
    <%
        }
    %>
</div>
<p><%= tae%></p>
<a href="test07.jsp?title=<%=title %>"&oth<%=dhxogns%>&tae="<%= tae%>"></a>
<hr>
<h2>표현언어(Expression Language)</h2>
<p>${title }</p>
<c:forEach var="s" items="${ny }">
    <p>${s }</p>
</c:forEach>
<p>${k }</p>

</body>
</html>
