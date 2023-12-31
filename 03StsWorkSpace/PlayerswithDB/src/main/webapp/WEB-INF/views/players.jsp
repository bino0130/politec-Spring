<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/EA-Sports-Monochrome.png" type="image/x-icon">
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
	<%@ include file="header.jsp"%>
	<div class="div">
		<div class="container">
			<div class="row" align="center">
				<c:forEach items="${playerList}" var="players">
					<div class="col-md-4">
						<p>
							<img width="420" height="600" alt="playerImage"
								src=${pageContext.request.contextPath}/resources/img/${players.imgPath}>
						</p>
						<div class="playerInfo">
							<h3><a style="text-decoration:none; color:black;" 
							href="<c:url value="/player?id=${players.id}"/>">${players.name}</a></h3>
							<p><span class="${players.positionSort}">${players.position}</span>
								<br>${players.club} | ${players.nation}
							<p align=left>${fn:substring(players.description, 0, 60)}...
							<p>${players.league}</p>
							<p>
								<a href="<c:url value="/player?id=${players.id}"/>"
									class="btn btn-secondary" role="button">선수 정보 &raquo; </a>
							</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<%@ include file="footer.jsp"%>
	</div>
</body>
</html>