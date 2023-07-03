<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ObjectParams.jsp</title>
</head>
<body>
<%
request.setAttribute("personObj", new Person("신사임당", 22));
request.setAttribute("stringObj", "문자열");
request.setAttribute("integerObj", new Integer(11));
%>
<jsp:forward page="ObjectResult.jsp" >
	<jsp:param value="10" name="firstNum"/>
	<jsp:param value="20" name="secondNum"/>
</jsp:forward>
</body>
</html>