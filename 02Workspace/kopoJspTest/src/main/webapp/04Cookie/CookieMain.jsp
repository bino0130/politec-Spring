<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie 설정</title>
</head>
<body>
<h2>쿠키 설정하기</h2>
<%
// 쿠키 만들기
Cookie cookie = new Cookie("myCookie", "엄마손쿠키");

// 쿠키 경로 설정
cookie.setPath(request.getContextPath());

// 쿠키의 유지 기간 설정
cookie.setMaxAge(3600); // 초 단위. 3600초 -> 1시간

// 응답헤더에 쿠키를 추가
response.addCookie(cookie);
%>

<h2>쿠키 확인하기</h2>
<%
// 헤더에 모든 쿠키값 받기
Cookie[] cookies = request.getCookies(); 
if (cookies != null) {
	for (Cookie c : cookies) {
		String cookieName = c.getName();
		String cookieVal = c.getValue();
		out.print(String.format("%s : %s<br>", cookieName, cookieVal));
	}
}
%>

<h2>페이지 이동 후 쿠키값 확인</h2>
<a href="CookieResult.jsp">다음 페이지에서 쿠키 값 확인</a>
</body>
</html>