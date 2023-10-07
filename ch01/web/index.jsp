<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%!
  private String name;
  public String getName(){
    return this.name;
  }
  public void setName(String name){
    this.name = name;
  }

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
<%
  setName("이나현");
  String addr = "정발산동";

%>
<div class="container">
  <h2 class="title">을지대시발</h2>
  <hr>
  <p>이름 : <%=getName()%></p>
  <p>주소 : <%=addr%></p>
  <a href="test01.jsp">테스트1</a><br>
  <a href="test02.jsp">로그인 폼 테스트</a><br>
  <a href="test03.jsp">복수 개의 값 전송</a><br>
  <a href="test04.jsp?msg=한시간남았니">요청 정보 및 헤더 정보</a><br>
  <a href="test05.jsp">로그인 폼 - response</a><br>
  <a href="test06.jsp">jsp 8 객체</a><br>

</div>
</body>
</html>
