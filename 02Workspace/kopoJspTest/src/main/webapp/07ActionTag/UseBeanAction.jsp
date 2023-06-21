<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그로 폼값 한번에 받기</title>
</head>
<body>
<h2>액션태그로 폼값 한번에 받기</h2>
<jsp:useBean id="person" class="common.Person"/>
<jsp:setProperty property="*" name="person"/> <!-- *를 사용하면 전송된 form 값이 자바빈즈에 한꺼번에 저장됨 -->
<ul>
	<li>이름 : <jsp:getProperty name="person" property="name"/></li>
	<li>나이 : <jsp:getProperty name="person" property="age"/></li>
</ul>
</body>
</html>