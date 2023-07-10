<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> naver import </title>
</head>
<body>
<c:set var="requestVar" value="kopo" scope="request"/>
<c:import url="../inc/OtherPage.jsp" var="contents" >
	<c:param name="user_param1" value="jstl_import"/>
	<c:param name="user_param2" value="모두의 취업"/>
</c:import>

<h4>문서 삽입</h4>
${contents}

<h4>외부 경로 삽입</h4>
<iframe src="../inc/GoldPage.jsp" style="width:100%;height:600px;"></iframe>
</body>
</html>