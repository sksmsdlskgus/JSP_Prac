<%@ page contentType="text/html;charset=UTF-8" language="java" isErrorPage="true" %>
<%
    String path9 = request.getContextPath();
%>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
<body>
<div class="container">
    <h2>요청하신 주소 ㄷㄷ</h2>
    <figure class="vs">
        <img src="<%=path9%>/img" alt="404">
    </figure>
</div>

</body>
</html>