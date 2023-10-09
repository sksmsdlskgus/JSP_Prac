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
    <h2 class="title">설문조사</h2>
    <from>
        <table>
            <tbody>
            <tr>
                <th><label for="id">아이디</label></th>
                <td><input type="text" name="id" id="id" required autofocus></td>
            </tr>
            <tr>
                <th><label for="year">출생년도</label></th>
                <td><input type="number" name="year" id="year" min="1970" max="2023" step="1" value="1998" required></td>
            </tr>
            <tr>
                <th><label for="name">이름</label></th>
                <td><input type="name" name="name" id="name" required></td>
            </tr>
            <tr>
                <th><label>좋아하는 동물</label></th>
                <td>
                    <input type="checkbox" name="pet" value="dog" id="pet1" checked><label for="pet1">강아지</label><br>
                    <input type="checkbox" name="pet" value="cat" id="pet2" ><label for="pet2">고양이</label><br>
                    <input type="checkbox" name="pet" value="cow" id="pet3" ><label for="pet3">송아지</label><br>
                    <input type="checkbox" name="pet" value="horse" id="pet4" ><label for="pet4">망아지</label><br>
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="값 전송" class="btn btn-danger">
                    <input type="reset" value="취소" class="btn btn-primary">
                </td>
            </tr>
            </tbody>
        </table>
    </from>
</div>
</body>
</html>
