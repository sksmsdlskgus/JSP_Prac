<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <%
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        response.setContentType("test/html; charset=UTF-8");

    %>
</head>
<body>
<div class="msg">
    <h2>pageContext</h2>
    <hr>
    <%
        String str = request.getParameter("str");
        if(str.equals("include")){
            pageContext.include("target.jsp");
        } else if (str.equals("forward")){
            pageContext.forward("target.jsp");
        } else {
            out.println("<h2>잘못된 값입니다.</h2>");
        }
    %>
</div>

</body>
</html>