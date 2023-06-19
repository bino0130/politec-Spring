<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Page 영역</title>
</head>
<body>
<%
//out.println(pageContext.getAttribute("pageInt"));
//out.println(pageContext.getAttribute("pageStr"));
//out.println(pageContext.getAttribute("pagePerson"));

Object pPageInt = pageContext.getAttribute("pageInt");
// int형과 Integer형이 만나면 자바 시스템에서 Integer형을 Auto UnBoxing해서 int에 Integer의 값이 들어간다.
Object pString = pageContext.getAttribute("pageStr");
Object pPerson = pageContext.getAttribute("pagePerson");
%>
<ul>
	<li>Integer Obj = <%= (pPageInt == null) ? "값 없음" : pPageInt %></li>
	<li>String Obj = <%= (pString == null) ? "값 없음" : pString %></li>
	<li>Person Obj = <%= (pPerson == null) ? "값 없음" : ((Person)pPerson).getName() %></li>
</ul>
</body>
</html>