<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session login</title>
</head>
<body>
<jsp:include page="../Common/Link.jsp" /> <!-- 공통 링크 -->
<h2>로그인 페이지</h2>
<span style="color:red; font-size:1.2em;">
<%= request.getAttribute("LoginErrorMsg") == null ? "" : request.getAttribute("LoginErrorMsg") %>
</span>
<%
if (session.getAttribute("UserId") == null) {
%>
<script>
function validateForm(form) {
	if (!form.user_id.value) {
		alert*("아이디를 입력하세요.");
		return false;
	}
	if (form.user_pw.value == "") {
		alert("패스워드를 입력해주세요");
		return false;
	}
}
</script>
<form method="post" action="LoginProcess.jsp" name="LoginForm" onsubmit="return validateForm(this);">
	아이디 : <input type="text" name="user_id"><br>
	패스워드 : <input type="text" name="user_pw"><br>
	<input type="submit" value="로그인">
</form>
<% } else {%>
<%= session.getAttribute("UserName") %> 회원님. 로그인하셨습니다.<br>
<a href="Logout.jsp">[로그아웃]</a>
<% } %>
</body>
</html>