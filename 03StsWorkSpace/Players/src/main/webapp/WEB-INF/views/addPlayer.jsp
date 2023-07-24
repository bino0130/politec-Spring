<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="header.jsp" %>
	<c:choose>
		<c:when test="${isAdmin}">
			<div class="container">
				<div class="display-3">
					<p style="font-weight:500;">Add Player</p>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<form:form modelAttribute="NewPlayer" class="form-horizontal"
						 enctype="multipart/form-data">
							<fieldset>
								<div class="form-group row">
									<label class="col-sm-2 control-label">선수 이름</label>
									<div class="col-sm-3">
										<form:input path="name" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 control-label">상세설명</label>
									<div class="col-sm-5">
										<form:textarea style="resize:none;" path="description"
											cols="50" rows="3" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 control-label">포지션</label>
									<div class="col-sm-3">
										<form:input path="position" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 control-label">클럽</label>
									<div class="col-sm-3">
										<form:input path="club" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 control-label">국가</label>
									<div class="col-sm-3">
										<form:input path="nation" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 control-label">리그</label>
									<div class="col-sm-3">
										<form:input path="league" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 control-label">개인기</label>
									<div class="col-sm-3">
										<form:input path="skill" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 control-label">약발</label>
									<div class="col-sm-3">
										<form:input path="weakFoot" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 control-label">키</label>
									<div class="col-sm-3">
										<form:input path="height" class="form-control" />
									</div>
								</div>

								<div class="form-group row">
									<label class="col-sm-2 control-label">시즌</label>
									<div class="col-sm-3">
										<form:input path="season" class="form-control" />
									</div>
								</div>
								
								<div class="form-group row">
									<label class="col-sm-2 control-label">파일</label>
									<div class="col-sm-3">
										<input type="file" name="fileImage" />
									</div>
								</div>
								
								<div class="form-group row">
									<div class="col-sm-offset-2 col-sm-10">
										<input type="submit" class="btn btn-primary" value="등록">
									</div>
								</div>

							</fieldset>
						</form:form>
						<%@ include file="footer.jsp"%>
					</div>
				</div>
			</div>
		</c:when>
		<c:otherwise>
			<div class="container">
				<div class="row">
					<div style="display:block;">
						<p>로그인 중이 아닙니다.</p>
						<p><a href="javascript:history.back()" class="btn btn-primary">뒤로가기</a></p>
					</div>
				</div>
			</div>
		</c:otherwise>
	</c:choose>
	<sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin"></sec:authorize>
	<c:choose>
		<c:when test="${isAdmin}">
		</c:when>
		<c:otherwise>
			<%@ include file="footer.jsp" %>
		</c:otherwise>
	</c:choose>
</body>
</html>