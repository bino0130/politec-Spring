<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String myName = "Hong.SJCU";
Cookie cookieName = new Cookie("name", myName);
cookieName.setMaxAge(-1); // -1 : 브라우저 켜있을때까지
response.addCookie(cookieName); // response 객체에 보내야 사용가능
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>testCookie</title>
</head>
<body>
JSP 쿠키사용
</body>
</html>