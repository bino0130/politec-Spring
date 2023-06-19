<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("UTF-8"); // RequestMain에서 한글이 넘어오므로 utf-8 설정을 해줘야함
Person reqPerson = (Person)(request.getAttribute("requestPerson"));
%>

<ul>
	<li>String reqStr = <%= request.getAttribute("reqStr") %></li>
	<li>Person reqPerson = <%= reqPerson.getName() %>, <%= reqPerson.getAge() %></li>
</ul>

<%
out.println(request.getParameter("param1"));
out.println(request.getParameter("param2"));
%>
</body>
</html>