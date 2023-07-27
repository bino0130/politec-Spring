<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>유일 도서 페이지</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/books">Home</a> <a
					class="navbar-brand" href="${pageContext.request.contextPath}/books">도서목록</a> <a class="navbar-brand"
					href="${pageContext.request.contextPath}/books">게시판</a>
			</div>
		</div>
	</nav>

	<!-- 코드 전체 선택 후 ctrl + I : 코드 자동정렬 -->
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 정보</h1>
			<!-- 
			<h2>${pageContext.request.contextPath}</h2>
			 -->
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-md-4">
				<img width="420" height="600" alt="book.jpg" src="<c:url value='/resources/img/${book.imgPath}' />">
			</div>
			
			<div class="col-md-12">
				<h3>${book.name }</h3>
				<p>${book.description }</p>
				<p><b>도서코드 : </b><span class="badge badge-info">${book.bookId }</span></p>
				<p><b>저자 : </b>${book.author }</p>
				<p><b>출판사 : </b>${book.publisher }</p>
				<p><b>분류 : </b>${book.category }</p>
				<p><b>출판일 : </b>${book.releaseDate }</p>
				<p><b>재고수 : </b>${book.unitsInstock }</p>
				<h4>${book.unitPrice }원</h4>
				<br>
				<p><a href="#" class="btn btn-primary">도서주문 &raquo;</a></p>
				<a href="<c:url value='/books'/>" class="btn btn-secondary">
				도서 목록 &raquo;</a>
			</div>
		</div>
		<hr>
		<footer><p>&copy; Book INFO</p></footer>
	</div>


</body>
</html>