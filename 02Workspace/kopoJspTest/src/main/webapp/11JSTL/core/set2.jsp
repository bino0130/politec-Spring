<%@ page import = "java.util.*" %>
<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h4> List 컬렉션 사용 </h4>
<%
ArrayList<Person> pList = new ArrayList<Person>();
pList.add(new Person("백종원", 55));
pList.add(new Person("김연아", 33));
%>
<c:set var="personList" value="<%= pList %>" scope="request" />
<!-- 백종원 이름하고 나이 출력 -->
<ul>
	<li>이름 : ${ requestScope.personList[0].name }</li>
	<li>이름 : ${ personList[0].age }</li>
</ul>

<h4> map 컬렉션 사용 </h4>
<%
Map<String, Person> pMap = new HashMap<String, Person>();
pMap.put("personArgs1", new Person("백종원", 55));
pMap.put("personArgs2", new Person("김연아", 33));
%>
<ul>
	<li>이름 : ${ requestScope.personList[0].name }</li>
	<li>이름 : ${ personList[0].age }</li>
</ul>
</body>
</html>