<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션 종료</title>
</head>
<body>
<%
session.invalidate();
%>
<h2>세션 종료</h2>
</body>
</html>