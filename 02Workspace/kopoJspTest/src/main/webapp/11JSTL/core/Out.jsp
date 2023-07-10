<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*
<c:out value="출력변수" default="기본값" escapeXml="True"/>
escapeXml 기본값 = True, 특수문자 변환 여부를 결정

*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Out.jsp</title>
</head>
<body>
<c:set var="iTag">
	i 태그는 <i>기울임체</i>를 표현합니다.
</c:set>

<h4> 기본 표현식 사용 (escapeXml=True)</h4>
<c:out value="${iTag }"></c:out>

<h4> escapeXml 속성을 활용해서 사용 (escapeXml=False)</h4>
<c:out value="${iTag }" escapeXml="false"></c:out>

<h4>default 활용</h4>
<c:out value="${param.name }" default="null입니다"/>
<c:out value="" default="빈 문자열 입니다"/> <!-- 빈 문자열 ""도 하나의 값이다. default 적용 x -->
</body>
</html>