<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
<meta charset="UTF-8">
<title>Book Form tag</title>
</head>
<body>
	<nav class="navbar navbar-expand navbar-dark bg-dark">
		<div class="container">
			<div class="navbar-header">
				<a class="navbar-brand" href="${pageContext.request.contextPath}/books">Home</a> <a
					class="navbar-brand" href="${pageContext.request.contextPath}/books">게시판</a> <a class="navbar-brand"
					href="${pageContext.request.contextPath}/books">로그인</a>
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
				<div class="float-right"> <!-- 로그아웃 시작 -->
					<form:form action="${pageContext.request.contextPath}/logout"
						method="post">
						<input type="submit" class="btn btn-sm btn-success" value="logout">
					</form:form>
				</div> <!-- 로그아웃 끝 -->

				<form:form modelAttribute="NewBook" 
						   action="./add?${_csrf.parameterName}=${_csrf.token}"
						   class="form-horizontal">
				<fieldset>
				<legend>${addTitle}</legend>
				<div class="form-group row">
					<label class="col-sm-2 control-label">도서ID</label>
					<div class="col-sm-3">
						<form:input path="bookId" class="form-control"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label">도서명</label>
					<div class="col-sm-3">
						<form:input path="name" class="form-control"/>
					</div>	
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label">가격</label>
					<div class="col-sm-3">
						<form:input path="unitPrice" class="form-control"/>
					</div>	
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label">저자</label>
					<div class="col-sm-3">
						<form:input path="author" class="form-control"/>
					</div>	
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label">상세설명</label>
					<div class="col-sm-5">
						<form:textarea style="resize:none;" path="description" cols="50" rows="3" class="form-control"/>
					</div>
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label">출판사</label>
					<div class="col-sm-3">
						<form:input path="publisher" class="form-control"/>
					</div>	
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label">분류</label>
					<div class="col-sm-3">
						<form:input path="category" class="form-control"/>
					</div>	
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label">재고 수</label>
					<div class="col-sm-3">
						<form:input path="unitsInstock" class="form-control"/>
					</div>	
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label">출판일</label>
					<div class="col-sm-3">
						<form:input path="releaseDate" class="form-control"/>
					</div>	
				</div>
				
				<div class="form-group row">
					<label class="col-sm-2 control-label">상태</label>
					<div class="col-sm-3">
						<form:radiobutton path="condition" value="New"/>New
						<form:radiobutton path="condition" value="Old"/>Old
						<form:radiobutton path="condition" value="E-Book"/>E-Book
					</div>	
				</div>
				
				<div class="form-group row">
					<label class="com-sm-2 control-label">도서이미지</label>
					<div class="col-sm-7">
						<form:input path="bookImage" type="file" class="form-control" />
					</div>
				</div>
				
				<div class="form-group row">
					<div class="col-sm-offset-2 col-sm-10">
						<input type="submit" class="btn btn-primary" value="등록">
					</div>
				</div>
				
				</fieldset>
				</form:form>
				
				<hr>
				<footer>
					<p>&copy; BookMarket</p>
				</footer>
			</div>
		</div>
	</div>

	
</body>
</html>