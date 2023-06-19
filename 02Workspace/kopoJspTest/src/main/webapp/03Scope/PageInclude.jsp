<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Include Page</title>
</head>
<body>
<%
//out.println(pageContext.getAttribute("pageInt"));
//out.println(pageContext.getAttribute("pageStr"));
//out.println(pageContext.getAttribute("pagePerson"));

int pPageInt2 = (Integer)(pageContext.getAttribute("pageInt"));
// int형과 Integer형이 만나면 자바 시스템에서 Integer형을 Auto UnBoxing해서 int에 Integer의 값이 들어간다.
//String pString = pageContext.getAttribute("pageStr").toString();
Person pPerson2 = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
	<li>Integer Obj = <%= pPageInt2 %></li>
	<li>String Obj = <%= pageContext.getAttribute("pageStr").toString() %></li>
	<li>Person Obj = <%= pPerson2.getName() %>, <%= pPerson2.getAge() %></li>
</ul>
</body>
</html>