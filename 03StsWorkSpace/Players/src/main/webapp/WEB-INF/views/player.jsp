<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Player Info</title>
<style>
</style>
</head>
<body>
	<%@ include file="header.jsp" %>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<p><img width="220" height="300" alt="img.jpg" src=${pageContext.request.contextPath}/resources/img/${player.imgPath}></p>
				<h3>${player.name }</h3>
				<p>${player.description }</p>
				<p><b>포지션 : </b><span class="${player.positionSort}">${player.position}</span></p>
				<p><b>클럽 : </b>${player.club}</p>
				<p><b>국가 : </b>${player.nation}</p>
				<p><b>리그 : </b>${player.league}</p>
				<p><b>개인기 : </b>${player.skill}</p>
				<p><b>약발 : </b>${player.weakFoot}</p>
				<p><b>키 : </b>${player.height}</p>
				<p><b>시즌 : </b>${player.season}</p>
				<br>
				<p><a href="#" class="btn btn-primary">이적시장 &raquo;</a></p>
				<a href="<c:url value='/players'/>" class="btn btn-secondary">
				선수 목록 &raquo;</a>
			</div>
		</div>
		<%@ include file="footer.jsp" %>
	</div>
</body>
</html>