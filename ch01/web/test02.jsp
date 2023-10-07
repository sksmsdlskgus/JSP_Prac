<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>

</head>
<body>
<div class="container">
  <h2 class="title">로그인</h2>
  <form action="loginpro.jsp" class="frm" method="post">
    <table class="table" id="tb1">
      <tbody>
      <tr>
        <th><label for="id">아이디</label></th>
        <td><input type="text" name="id" id="id" required autofocus></td>
      </tr>
      <tr>
        <th><label for="pw">비밀번호</label></th>
        <td><input type="password" name="pw" id="pw" required></td>
      </tr>
      <tr>
        <td colspan="2">
          <input type="submit" value="로그인" class="btn btn-danger">
          <input type="reset" value="취소" class="btn btn-primary">
        </td>
      </tr>
      </tbody>
    </table>
  </form>
  <hr>
</div>
<div class="container"><a href="loginpro.jsp?qty=2&price=40000" class="btn btn-primary">GET 전송</a>
</div>
<div class="container">
  <h2 class="title"></h2>
  <div class="msg">
    <table class="table">
      <tbody>
      <tr>
        <th>GET</th>
        <th>POST</th>
      </tr>
      <tr>
        <td>
          <p>1</p>
          <p>2</p>
          <p>3</p>
          <p>4</p>
          <p>5</p>
        </td>
        <td>
          <p>1</p>
          <p>2</p>
          <p>3</p>
          <p>4</p>
        </td>
      </tr>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>
