<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SessionMain에서 전달받은 데이터 출력</title>
</head>
<body>
<h2>페이지 이동 후 session 처리 확인</h2>
<%
ArrayList<String> getList = (ArrayList<String>)(session.getAttribute("lists"));
for (String str : getList) {
	out.print(str + "<br>"); // Session 영역은 Web에 저장이 된다. Web페이지가 닫히기 전까지는 정보가 저장됨
}
%>
</body>
</html>