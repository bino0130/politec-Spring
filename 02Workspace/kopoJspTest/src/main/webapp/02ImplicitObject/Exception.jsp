<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Exception ó��</title>
</head>
<body>
<%
int status = response.getStatus();

if (status == 500) {
	response.sendRedirect("/01Directive/isErrorPage.jsp");
} else if (status == 404) {
	out.println("404������ �߻��߽��ϴ�.");
	out.println("<br>���� ��θ� Ȯ�����ּ���.");
} else if (status == 405) {
	out.println("405������ �߻��߽��ϴ�.");
	out.println("<br>�ҽ��ڵ忡 ������ �ִ��� Ȯ�����ּ���.");
}
// error500 : error500.jsp����
%>
</body>
</html>