<%@ page import="utils.CookieManager" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% CookieManager.makeCookie(response, "ELCookie", "ELTEST", 10); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>OtherImplicitObj.jsp</title>
</head>
<body>
<h2>쿠키값 읽기</h2>
<li> ELCookie 값 : ${ cookie.ELCookie.value }</li>
<h2>헤더 읽기</h2>
<ul>
	<li>host : ${ header.host }</li>
	<li>user-agent : ${ header['user-agent'] }</li><!-- 왜 user-agent는 .으로 접근이 안되는가? => 중간에 하이픈(-)이 있으면 ['']으로 접근해야함 -->
	<li>cookie : ${ header.cookie }</li>
</ul>
</body>
</html>