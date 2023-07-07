<%@ page import = "java.util.Date" %>
<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
// JSTL 5가지 태그 제공
// 1. Core 태그		 http://java.sun.com/jsp/jstl/core
// 2. Formatting 태그 http://java.sun.com/jsp/jstl/fmt
// 3. XML 태그		 http://java.sun.com/jsp/jstl/xml
// 4. Function 태그	 http://java.sun.com/jsp/jstl/function - EL로 처리 가능
// 5. SQL 태그		 http://java.sun.com/jsp/jstl/sql - jdbc API

// Core 태그 - 변수 선언, 조건문, 반복문 대체하는 태그를 활용할 수 있음
// set, remove, if, forEach, import, redirect, url, out
// <c.set var = "변수명" value="값">
// <
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var ="directVar" value="100"/>
<c:set var ="elVar" value="${drectVar mod 5 }"/>
<c:set var ="exVar" value="<%= new Date() %>"/>
<c:set var ="betweenVar">변수값 설정 </c:set>

<h4>EL을 활용한 변수 출력</h4>
<ul>
	<li>directVar : ${pageScope.directVar }</li>
	<li>elVar : ${elVar }</li>
	<li>exVar : ${exVar }</li>
	<li>betweenVar : ${betweenVar }</li>
</ul>

<h4> 자바빈즈를 생성 - 생성자를 활용</h4>
<c:set var="personVar1" value='<%= new Person("홍길동",18) %>'
		scope="request"/>
<ul>
	<li>이름 : ${requestScope.personVar1.name }</li>
	<li>elVar : ${personVar1.age }</li>
</ul>

<h4> 자바빈즈 - target, property 활용</h4>
<c:set var="personVar2" value="<%= new Person() %>" scope="request"/>
<c:set target="${personVar2 }" property="name" value="세종대왕"/>

</body>
</html>