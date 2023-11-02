<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%
    String name = (String) pageContext.getAttribute("name");
    String age = (String) pageContext.getAttribute("age");
%>
<div class="infile">
    <h1>includeFlile.jsp</h1>
    <div class="dataarea">
        <p>Name : <%=name%></p>
        <p>Age : <%=age%></p>
    </div>
</div>