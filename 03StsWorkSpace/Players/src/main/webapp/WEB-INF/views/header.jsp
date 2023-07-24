<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>header</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/players">Home</a>
				<a class="navbar-brand" href="${pageContext.request.contextPath}/players">선수 목록</a>
				<!-- addPlayer -->
				<!-- <a class="navbar-brand" href="<c:url value="/players/add" />">선수 추가</a> -->
				<a class="navbar-brand" href="${pageContext.request.contextPath}/players/add">선수 추가</a>
			</div>
				<div>
				
			<sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin"></sec:authorize>
				<c:choose>
					<c:when test="${isAdmin}">
						<button class="btn btn-secondary"
							onclick="location.href='${pageContext.request.contextPath}/logout'">Log
							Out</button>
					</c:when>
					<c:otherwise>
						<button class="btn btn-secondary"
							onclick="location.href='${pageContext.request.contextPath}/login'">Log
							In</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>

	<!-- 코드 전체 선택 후 ctrl + I : 코드 자동정렬 -->
	<div class="jumbotron">
		<div class="container" style="padding-left: 0px;">
			<span><img width=420 height=96 style="margin-bottom: 36px;"
				src=${pageContext.request.contextPath}/resources/img/logo.png></span>
			<span class="display-3" style="font-weight: 900;">Players</span>
			 <!-- <h2>${pageContext.request.contextPath}</h2> -->
		</div>
	</div>
</body>
</html>