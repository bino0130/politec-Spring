<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 값 확인</title>
</head>
<body>
<%
Cookie[] cookies = request.getCookies();
for (int i = 0; i < cookies.length; i++) {
	Cookie thisCookie = cookies[i];
	if("name".equals(thisCookie.getName())) {
		out.println(thisCookie.getName());
		thisCookie.setMaxAge(0); // 유효기간을 0으로 설정 -> 지워짐
		response.addCookie(thisCookie); // 쿠키를 세팅 -> 이미 지워져서 세팅이 안되는듯?
	}
}
%>
</body>
</html>