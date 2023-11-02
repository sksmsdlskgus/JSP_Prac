<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%
    // Scope Test - test4.jsp
    pageContext.setAttribte("pageData", "페이지컨텍스트");
    request.setAttribute("reqData", "요청한 데이터");
    session.setAttribute("sesData", "세션 데이터");
    application.setAttribute("appData", "애플리케이션 데이터");
    request.setAttribute("msg", "안녕하세요");
    RequestDispatcher rd = request.getRequestDispatcher("test5.jsp");
    rd.forward(request, response);
%>