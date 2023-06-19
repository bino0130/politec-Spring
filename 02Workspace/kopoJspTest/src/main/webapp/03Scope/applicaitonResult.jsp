<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, common.Person" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>page 이동 후 데이터 출력</title>
</head>
<body>
<h2>페이지 이동 후 application 처리 확인</h2>
<%
Map<String, Person> maps = (Map<String, Person>)(application.getAttribute("maps"));
Set<String> keys = maps.keySet();
for (String key : keys) {
	Person person = maps.get(key);
	out.print(String.format("이름 : %s, 나이 : %d <br>", person.getName(), person.getAge()));
}
%>
</body>
</html>