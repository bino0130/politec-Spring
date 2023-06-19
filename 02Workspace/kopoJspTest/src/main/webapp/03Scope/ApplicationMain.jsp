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
<h2>Application 영역 확인</h2>
<%
Map<String, Person> maps = new HashMap<String, Person>();
maps.put("A-class", new Person("이수일", 20));
maps.put("B-class", new Person("김희애", 20));

// application 영역에 저장하기 - 변수명 , "maps"
application.setAttribute("maps", maps);

%>
<!-- applicationResult.jsp 생성 후 출력 -->
<a href="applicaitonResult.jsp">applicationResult로 이동</a>
</body>
</html>