<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    session.invalidate(); // 로그아웃
    response.sendRedirect("test5.jsp");
%>