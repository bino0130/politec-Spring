<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/* 
<c:if test="조건" var="변수명" scope="영역">
	조건식이 참일때의 문법
</c:if>
 */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>if</title>
</head>
<body>
<c:set var="number" value="100" />
<c:set var="string" value="문자열" />

<h4> if 태그를 활용해서 홀짝 맞추기 </h4>
<c:if test="${ number mod 2 eq 0 }" var="result">
	${ number }는 짝수입니다.<br>
</c:if>
result : ${ result } <br>

<h4> 문자열 비교해서 else 처럼 구문을 작성 </h4>
<c:if test="${ string eq '문장' }" var = "result2" >
	'문장' 입니다. <br>
</c:if>
<c:if test="${ not result2 }">
	'문장' 입니다. <br>
</c:if>
<h4>  조건식 작성시 주의할 점 </h4>
<c:if test="100" var = "result3" >
	EL 이 아닌 정수를 지정하면 false
</c:if>
result3 = ${ result3 } <br>
<c:if test="tRuE" var="result4" >
	대소문자 구분없이 true 면 무조건 true <br>
</c:if>
result4 = ${ result4 } <br>

<c:if test=" ${ true } " var="result5">
	EL 양쪽에 공백이 있으면 false <br>
</c:if>
result5 = ${ result5 } <br>

</body>
</html>