<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*
<c:url>태그 : addr을 생성해주는 태그 + context 루트를 포함한 URL
<a> -> href, <form> -> <action>
<c:url value="path" scope="scope" var="변수명">
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>URL.jsp</title>
</head>
<body>
<h4> url태그로 링크를 생성</h4>
<c:url value="../inc/OtherPage.jsp" var="url">
	<c:param name="user_param1" value="분당융복합"/>
	<c:param name="user_param2">유클릭반</c:param>
</c:url>
<a href="${url }">otherPage 바로가기</a>
</body>
</html>