<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h3>입력하신 데이터는 다음과 같습니다.</h3>
<%
    request.setCharacterEncoding("UTF-8");

    String name = request.getParameter("name");
    String birth = request.getParameter("birth");
    String grade = request.getParameter("grade");
    String department = request.getParameter("department");
    String[] platform = request.getParameterValues("platform[]");
    String preferPlatform = request.getParameter("prefer-platform");
    String style = request.getParameter("style");
    String advantage = request.getParameter("advantage");
    String content = request.getParameter("content");
    String mobile = request.getParameter("mobile");

    out.print("이름: " + name + "<br>");
    out.print("생년월일: " + birth + "<br>");
    out.print("학년: " + grade + "<br>");
    out.print("학부: " + department + "<br>");

    out.print("온라인 강의를 듣기 위해 사용하는 플랫폼: ");
    for (String index : platform) {
        out.print(index + " ");
    }
    out.print("<br>");

    out.print("가장 만족하는 플랫폼: " + preferPlatform + "<br>");
    out.print("가장 선호하는 온라인 강의의 형태: " + style + "<br>");
    out.print("온라인 강의의 가장 큰 장점: " + advantage + "<br>");
    out.print("의견: " + content + "<br>");
    out.print("휴대폰 번호: " + mobile);
%>
</body>
</html>