<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
pageContext.setAttribute("pageInt", 10); // pageInt가 key, 10이 value
pageContext.setAttribute("pageStr", "페이지저장"); // pageStr이 key, "페이지저장"이 value
pageContext.setAttribute("pagePerson", new Person("kopo", 50)); // pagePerson이 key, new Person이 value
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>page 값 가져와서 출력하기</h2>
<%
//out.println(pageContext.getAttribute("pageInt"));
//out.println(pageContext.getAttribute("pageStr"));
//out.println(pageContext.getAttribute("pagePerson"));

int pPageInt = (Integer)(pageContext.getAttribute("pageInt"));
// int형과 Integer형이 만나면 자바 시스템에서 Integer형을 Auto UnBoxing해서 int에 Integer의 값이 들어간다.
String pString = pageContext.getAttribute("pageStr").toString();
Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
	<li>Integer Obj = <%= pPageInt %></li>
	<li>String Obj = <%= pString %></li>
	<li>Person Obj = <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
</ul>

<h2>include 된 페이지에서 출력값 확인</h2>
<%@ include file = "PageInclude.jsp" %>

<h2>단순 페이지 이동 후 pageContext 데이터 확인</h2>
<a href="PageLocation.jsp">PageLocation.jsp 바로가기</a>
</body>
</html>