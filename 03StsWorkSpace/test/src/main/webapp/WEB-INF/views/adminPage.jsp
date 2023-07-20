<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Page</title>
</head>
<body>
<h3>접근 권한과 사용자 권한</h3>
<p>현재 페이지는 ${data} 입니다.</p>
<p><a href="<c:url value='/'/>"> 웹요청페이지로 이동</a></p>
</body>
</html>