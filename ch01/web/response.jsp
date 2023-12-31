<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>page, request, Response, out, session(cookie), application</title>
    <%
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html; charset=utf-8");

        application.setAttribute("appname", "나현교육");
        String id = request.getParameter("id");  //데이터 요청
        String pw = request.getParameter("pw");

        String[] idArr = {"admin", "kim", "lee"};
        String[] pwArr = {"1234", "4321", "1111"};
    %>
</head>
<body>
<div id="msg">
    <%
        String msg = "<로그인 실패다 이노마";
        for(int i=0; i<idArr.length; i++){
            if(idArr[i].equals(id) && pwArr[i].equals(pw)){
                session.setAttribute("id", id);
                session.setAttribute("pw", pw);
                // session.invalidate(); // 로그아웃
                // session.removeAttribute("id"); 이건 삭제인가
                // session.removeAttribute("pw");
                msg = "로그인 성공";
            }
        }
        // response.sendRedirect("test06.jsp?msg="+msg);
        response.addHeader("Site", "http://chunjae.co.kr");
        response.addHeader("Url2", "http://github.com/RosieOh");
        response.setStatus(200);    // 성공 처리
        // response.setStatus(404);    // 실패 처리
        // response.sendError(404, "요청하신 페이지가 존재하지 않습니다.");
    %>
    <p><a href='test05.jsp?msg=<%=msg%>'><%=msg%> 페이지 이동"></a></p>
    <p> 콘텐츠 유형 : <%=response.getContentType()%>
    <p> 문자 인코딩 : <%=response.getCharacterEncoding() %>
    <p> 추가된 헤더 : <%=response.getHeader("Site")%>
    <p> 설정된 헤더 : <%=response.getHeader("Url2")%>
    <p> 추가된 헤더 존재 유무 확인 : <%=response.containsHeader("Site")%></p>
    <p> 설정된 헤더 존재 유무 확인 : <%=response.containsHeader("Url2")%></p>
    <p> 저장된 상태코드 : <%=response.getStatus()%></p>
    <p> 저장된 세션정보 아이디 : <%=session.getAttribute("id")%></p>
    <p> 저장된 세션정보 비밀번호 : <%=session.getAttribute("pw")%></p>
</div>
</body>
</html>