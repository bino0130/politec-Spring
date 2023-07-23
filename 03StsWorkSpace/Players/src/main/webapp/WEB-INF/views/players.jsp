<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<!-- ${pageContext.request.contextPath}(절대경로)로 경로를 지정-->
<meta charset="UTF-8">
<title>Welcome</title>
<style>
.playerInfo {
	margin-left : 75px;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./players">Home</a> 
				<a class="navbar-brand" href="./players">선수 목록</a> 
			</div>
		</div>
	</nav>

	<!-- 코드 전체 선택 후 ctrl + I : 코드 자동정렬 -->
	<div class="jumbotron">
		<div class="container" style="padding-left:0px;">
			<span><img width=420 height=96 style="margin-bottom:36px;" src=${pageContext.request.contextPath}/resources/img/logo.png></span>
			<span class="display-3" style="font-weight:900;">Players</h1>
			<!-- 
			<h2>${pageContext.request.contextPath}</h2>
			 -->
		</div>
	</div>

	<div class="container">
		<div class="row" align="center">
			<c:forEach items="${playerList}" var="players">
				<div class="col-md-4">
					<p><img width="420" height="600" src=${pageContext.request.contextPath}/resources/img/${players.imgPath}></p>
					<div class="playerInfo">
						<h3>${players.name}</h3>
						<p>${players.position}
							<br>${players.club} | ${players.nation}
						<p align=left>${fn:substring(players.description, 0, 60)} ...
						<p>${players.league}</p>
						<p><a href="<c:url value="/books/book?id=${players.name}"/>"
							class="btn btn-secondary" role="button">선수 정보 &raquo;
							</a>
						</p>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>

	<footer class="container">
		<hr>
		<p>&copy; Player</p>
	</footer>
</body>
</html>