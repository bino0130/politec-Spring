<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Internationalization</title>
</head>
<body>
	<h2>다국어 처리</h2>
	<p><a href="?language=ko_KR">Korean</a> | <a href="?language=en_US">English</a>
	<p><spring:message code="Person.form.Enter.message"/>
</body>
</html>