<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조아 리조트에 오신 것을 환영합니다.</title>
<style>
#mainDiv {
	width : 100%;
	height : 80%;
	text-align : center;
}
</style>
</head>
<body>
<%@ include file="top.jsp"%>
<div id="mainDiv">
	<img src="${pageContext.request.contextPath}/resources/img/Resort.jpg" width=400 height=350>
	<br><h2>조아 리조트로 놀러오셔요</h2>
</div>
</body>
</html>