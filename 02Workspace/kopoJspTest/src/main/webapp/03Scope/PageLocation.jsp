<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Page ����</title>
</head>
<body>
<%
//out.println(pageContext.getAttribute("pageInt"));
//out.println(pageContext.getAttribute("pageStr"));
//out.println(pageContext.getAttribute("pagePerson"));

Object pPageInt = pageContext.getAttribute("pageInt");
// int���� Integer���� ������ �ڹ� �ý��ۿ��� Integer���� Auto UnBoxing�ؼ� int�� Integer�� ���� ����.
Object pString = pageContext.getAttribute("pageStr");
Object pPerson = pageContext.getAttribute("pagePerson");
%>
<ul>
	<li>Integer Obj = <%= (pPageInt == null) ? "�� ����" : pPageInt %></li>
	<li>String Obj = <%= (pString == null) ? "�� ����" : pString %></li>
	<li>Person Obj = <%= (pPerson == null) ? "�� ����" : ((Person)pPerson).getName() %></li>
</ul>
</body>
</html>