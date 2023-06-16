<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Exception 처리</title>
</head>
<body>
<%
int status = response.getStatus();

if (status == 500) {
	response.sendRedirect("/01Directive/isErrorPage.jsp");
} else if (status == 404) {
	out.println("404에러가 발생했습니다.");
	out.println("<br>파일 경로를 확인해주세요.");
} else if (status == 405) {
	out.println("405에러가 발생했습니다.");
	out.println("<br>소스코드에 오류가 있는지 확인해주세요.");
}
// error500 : error500.jsp실행
%>
</body>
</html>