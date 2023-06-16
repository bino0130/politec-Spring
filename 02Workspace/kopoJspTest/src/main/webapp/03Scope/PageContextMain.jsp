<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
pageContext.setAttribute("pageInt", 10); // pageInt�� key, 10�� value
pageContext.setAttribute("pageStr", "����������"); // pageStr�� key, "����������"�� value
pageContext.setAttribute("pagePerson", new Person("kopo", 50)); // pagePerson�� key, new Person�� value
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2>page �� �����ͼ� ����ϱ�</h2>
<%
//out.println(pageContext.getAttribute("pageInt"));
//out.println(pageContext.getAttribute("pageStr"));
//out.println(pageContext.getAttribute("pagePerson"));

int pPageInt = (Integer)(pageContext.getAttribute("pageInt"));
// int���� Integer���� ������ �ڹ� �ý��ۿ��� Integer���� Auto UnBoxing�ؼ� int�� Integer�� ���� ����.
String pString = pageContext.getAttribute("pageStr").toString();
Person pPerson = (Person)(pageContext.getAttribute("pagePerson"));
%>
<ul>
	<li>Integer Obj = <%= pPageInt %></li>
	<li>String Obj = <%= pString %></li>
	<li>Person Obj = <%= pPerson.getName() %>, <%= pPerson.getAge() %></li>
</ul>

<h2>include �� ���������� ��°� Ȯ��</h2>
<%@ include file = "PageInclude.jsp" %>

<h2>�ܼ� ������ �̵� �� pageContext ������ Ȯ��</h2>
<a href="PageLocation.jsp">PageLocation.jsp �ٷΰ���</a>
</body>
</html>