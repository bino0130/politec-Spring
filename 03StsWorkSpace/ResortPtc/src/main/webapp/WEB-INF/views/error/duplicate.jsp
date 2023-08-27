<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error</title>
</head>
<body>
<div><img src="${pageContext.request.contextPath}/resources/img/error.png" width='500' height='500' border='0'></div>
<h2>선택하신 날짜와 방은 이미 예약되었습니다</h2>
<button type="button" onclick="location.href='${pageContext.request.contextPath}/d_02_1'">되돌아가기</button>
</body>
</html>