<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Include Page</title>
</head>
<body>
<%
//out.println(pageContext.getAttribute("pageInt"));
//out.println(pageContext.getAttribute("pageStr"));
//out.println(pageContext.getAttribute("pagePerson"));

int pPageInt2 = (Integer)(pageContext.getAttribute("pageInt"));
// int���� Integer���� ������ �ڹ� �ý��ۿ��� Integer���� Auto UnBoxing�ؼ� int�� Integer�� ���� ����.
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