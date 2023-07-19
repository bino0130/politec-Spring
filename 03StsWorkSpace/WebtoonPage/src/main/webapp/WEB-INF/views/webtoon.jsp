<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>유일 웹툰 페이지</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="../webtoons">Home</a> <a
					class="navbar-brand" href="../webtoons">웹툰목록</a> <a class="navbar-brand"
					href="../webtoons">게시판</a>
			</div>
		</div>
	</nav>

	<!-- 코드 전체 선택 후 ctrl + I : 코드 자동정렬 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">웹툰 정보</h1>
			<!-- 
			<h2>${pageContext.request.contextPath}</h2>
			 -->
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<p><img width="220" height="300" src=${pageContext.request.contextPath}/resources/img/${webtoon.imagePath }></p>
				<h3>${webtoon.name}</h3>
				<p>${webtoon.description}</p>
				<p><b>순위 : </b><span class="badge badge-info">${webtoon.ranking}</span></p>
				<p><b>작가 : </b>${webtoon.author}</p>
				<p><b>장르 : </b>${webtoon.genre}</p>
				<p><b>연재 날짜 : </b>${webtoon.releaseDay}</p>
				<h4>연재 사이트 : ${webtoon.website}</h4>
				<br>
				<p><a href="#" class="btn btn-primary">쿠키 결제 &raquo;</a></p>
				<a href="<c:url value='/webtoons'/>" class="btn btn-secondary">
				웹툰 목록 &raquo;</a>
			</div>
		</div>
		<hr>
		<footer><p>&copy; Webtoon INFO</p></footer>
	</div>


</body>
</html>