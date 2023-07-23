<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>웹툰 추가 페이지</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="./webtoons">Home</a>
				<a class="navbar-brand" href="./webtoons">웹툰 목록</a>
				<a class="navbar-brand" href="./webtoons">로그인</a>
			</div>
		</div>
	</nav>
	
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">도서 등록</h1>
		</div>
	</div>
	
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<form:form modelAttribute="NewWebtoon" class="form-horizontal">
				<fieldset>
				</fieldset>
				</form:form>
			</div>
		</div>
	</div>
	
</body>
</html>