<%@ page import = "utils.CookieManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String loginId = CookieManager.readCookie(request, "loginId");

String cookieCheck = "";
if(!loginId.equals("")) {
	cookieCheck = "checked";
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키로 아이디 저장하기</title>
</head>
<body>
<h2>로그인 페이지</h2>
<form method="post" action="IdsaveProcess.jsp">
	<p>
		아이디 : <input type="text" name="user_id" value="<%= loginId %>" required>
		<input type="checkbox" name="save_Check" value="Y" <%= cookieCheck %> />아이디 저장하기
	</p>
	<p>
		패스워드 : <input type="password" name="user_pw" required>
	</p>
	<input type="submit" name="" value="로그인">
</form>
</body>
</html>