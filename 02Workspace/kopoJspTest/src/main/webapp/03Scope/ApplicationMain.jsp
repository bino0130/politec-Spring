<%@ page import = "java.util.Map" %>
<%@ page import ="java.util.HashMap" %>
<%@ page import = "common.Person" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Application Scope</title>
</head>
<body>
<h2>Application ���� Ȯ��</h2>
<%
Map<String, Person> maps = new HashMap<String, Person>();
maps.put("A-class", new Person("�̼���", 20));
maps.put("B-class", new Person("�����", 20));

// application ������ �����ϱ� - ������ , "maps"
application.setAttribute("maps", maps);

%>
<!-- applicationResult.jsp ���� �� ��� -->
<a href="applicaitonResult.jsp">applicationResult�� �̵�</a>
</body>
</html>