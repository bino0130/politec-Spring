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
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./home">Home</a> <a
					class="navbar-brand" href="./home">게시판</a> <a class="navbar-brand"
					href="./home">쇼핑몰</a>
			</div>
		</div>
	</nav>

	<!-- 코드 전체 선택 후 ctrl + I : 코드 자동정렬 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 목록</h1>
			<!-- 
			<h2>${pageContext.request.contextPath}</h2>
			 -->
		</div>
	</div>

	<div class="container">
		<div class="row" align="center">
			<c:forEach items="${bookList}" var="book">
				<div class="col-md-4">
					<p><img width="420" height="600" src=${pageContext.request.contextPath}/resources/img/${book.imgPath}></p>
					<h3>${book.name}</h3>
					<p>${book.author}
						<br>${book.category} | ${book.releaseDate}
					<p align=left>${fn:substring(book.description, 0, 60)} ...
					<p>${book.condition}<br>
				</div>
			</c:forEach>
		</div>
	</div>

	<footer class="container">
		<hr>
		<p>&copy; Book</p>
	</footer>
</body>
</html>