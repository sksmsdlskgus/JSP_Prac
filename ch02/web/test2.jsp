<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="dto.Student" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title></title>
</head>
<body>
<%
    Student st1 = new Student();
    st1.setNo(1);
    st1.setName("이나현");
    st1.setKor(100);
    st1.setEng(100);
    st1.setMat(100);
    request.setAttribute("st1", st1);

    List<Student> st = new ArrayList<>();
    Student s = new Student();
    s.setNo(1);
    s.setName("졸렵다");
    s.setKor(100);
    s.setEng(100);
    s.setMat(100);
    st.add(s);

    Student s2 = new Student();
    s2.setNo(2);
    s2.setName("피곤해");
    s2.setKor(100);
    s2.setEng(100);
    s2.setMat(100);
    st.add(s2);

    request.setAttribute("st", st);

    ArrayList<String> lst = new ArrayList<>();
    lst.add("이나짱");
    lst.add("이나똥");
    lst.add("이나나");
    lst.add("이나뿡");

    request.setAttribute("lst", lst);

    HashSet<String> set = new HashSet<>();
    set.add("이사등");
    set.add("박사등");
    set.add("강사등");
    set.add("서사등");
    set.add("정사등");
    set.add("윤사등");
    request.setAttribute("set", set);

    HashMap<String, String > map = new HashMap<>();
    map.put("no", "3");
    map.put("name", "이오등");
    map.put("kor", "80");
    map.put("eng", "90");
    map.put("mat", "85");
    request.setAttribute("map", map);

    RequestDispatcher rd = request.getRequestDispatcher("test3.jsp");
    rd.forward(request, response);
%>

<%
    out.println("<p>번호 : "+st1.getNo()+"</p>");
%>
<p>이름 : <%=st1.getName()%></p>
<p>국어 : <%=st1.getKor()%></p>
<p>영어 : <%=st1.getEng()%></p>
<p>수학 : <%=st1.getMat()%></p>
<p>총점 : <%=st1.getKor()+st1.getEng()+st1.getMat()%></p>
</body>
</html>