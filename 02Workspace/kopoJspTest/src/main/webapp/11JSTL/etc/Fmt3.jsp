<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*
<fmt:setLocale> - 국가별로 다른 화폐기호, 날짜 등을 표현할 때 사용한다.
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fmt3.jsp</title>
</head>
<body>
<h4>로케일 설정</h4>
<c:set var="today" value="<%= new java.util.Date() %>"/>
한글로 설정 : <fmt:setLocale value="ko_kr"/>
<fmt:formatNumber value="10000" type="currency"/>
<fmt:formatDate value="${today }"/><br>
일본어로 설정 : <fmt:setLocale value="ja_JP"/>
<fmt:formatNumber value="10000" type="currency"/>
<fmt:formatDate value="${today }"/><br>
영어로 설정 : <fmt:setLocale value="en_US"/>
<fmt:formatNumber value="10000" type="currency"/>
<fmt:formatDate value="${today }"/><br>
</body>
</html>