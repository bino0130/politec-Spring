<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 가져오기</title>
</head>
<body>
<%
String id = null;
id = (String)session.getAttribute("session_id");
%>
<h2>세션 Get</h2>
<h2><%=id %></h2>
</body>
</html>