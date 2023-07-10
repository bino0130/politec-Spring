<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*
<fmt:formateDate>, <fmt:timeZone>
<fmt:formatDate value="출려날짜" tupe="양식" var="변수"
	dataStyle="날짜스타일" timeStyle="시간스타일" pattern="날짜패턴" scope="영역">
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fmt2.jsp</title>
</head>
<body>
<c:set var="today" value="<%= new java.util.Date() %>"></c:set>

<h4>날짜 포맷</h4>
full : <fmt:formatDate value="${today }" type="date" dateStyle="full"/><br>
short : <fmt:formatDate value="${today }" type="date" dateStyle="short"/><br>
medium : <fmt:formatDate value="${today }" type="date" dateStyle="medium"/><br>
long : <fmt:formatDate value="${today }" type="date" dateStyle="long"/><br>
default : <fmt:formatDate value="${today }" type="date" dateStyle="default"/>

<h4>시간 포맷</h4>
full : <fmt:formatDate value="${today }" type="time" timeStyle="full"/><br>
short : <fmt:formatDate value="${today }" type="time" timeStyle="short"/><br>
medium : <fmt:formatDate value="${today }" type="time" timeStyle="medium"/><br>
long : <fmt:formatDate value="${today }" type="time" timeStyle="long"/><br>
default : <fmt:formatDate value="${today }" type="time" timeStyle="default"/>

<h4>시간 날짜 동시 출력</h4>
full : <fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br>
<fmt:formatDate value="${today }" type="both" pattern="yyyy-MM-dd hh:mm:ss"/>

<h4>타임존 설정</h4>
<fmt:timeZone value="GMT"> <!-- 세계협정시간, 한국보다 9시간 빠름 -->
	<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br>
</fmt:timeZone>

<fmt:timeZone value="America/Chicago"> <!-- 특정 지역의 시간대로 지정도 가능 -->
	<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br>
</fmt:timeZone>
</body>
</html>