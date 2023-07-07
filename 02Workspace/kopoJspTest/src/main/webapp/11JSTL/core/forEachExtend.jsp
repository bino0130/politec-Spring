<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forEachExtend.jsp</title>
</head>
<body>
<h4>향상된 for문을 forEach로 구현</h4>
<%
String[] rgba = {"Red", "Green", "Blue", "Black"};

/*
<c:forEach begin="1" end="3" step="1" var="i">
varStatus 사용 가능 -> rgba를 향상된 for문 형식으로 varStatus를 출력해보시오.
*/
%>
<c:forEach items="<%= rgba %>" var="c">
	<span style="color:${c};">${c }</span>
</c:forEach>
</body>
</html>