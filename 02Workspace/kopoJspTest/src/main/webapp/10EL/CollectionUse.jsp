<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CollectionUse.jsp</title>
</head>
<body>
<h2>List 컬렉션</h2>
<%
List<Object> aList = new ArrayList<Object>();
aList.add("김말똥");
aList.add(new Person("말숙이", 20));
pageContext.setAttribute("Ocean", aList);
%>
<ul>
	<li>0번째 요소 : ${ Ocean[0] } </li>
	<li>1번째 요소 : ${ Ocean[1].name }, ${ Ocean[1].age } </li>
	<li>2번째 요소 : ${ Ocean[2] } </li>
</ul>

<h2>Map 컬렉션</h2>
<%
Map<String, String> map = new HashMap<String, String>();
map.put("한글", "세종대왕");
map.put("Eng", "Africa");
pageContext.setAttribute("Lang", map);
%>
<ul>
	<li>영문 : ${ Lang.Eng }, ${ Lang['Eng'] }, ${ Lang["Eng"] }</li>
	<li>한글 : \${ Lang.한글 } <- 한글은 .으로 접근 불가. '', "" 사용해서 접근, ${ Lang['한글'] }, ${ Lang["한글"] }</li> 
</ul>

<h3> EL 연산자</h3>
${ number = 10 } <!-- 할당과 동시에 출력 -->
${ number = 10; '' } <!-- 할당만 하고 출력은 안함 -->
<!-- 사칙연산 가능, / or div = 나누기, % or mod = 나머지 -->
<!-- > == gt , >= == ge -->
<!-- < == lt, <= == le -->
<!-- || == or, && == and -->
</body>
</html>