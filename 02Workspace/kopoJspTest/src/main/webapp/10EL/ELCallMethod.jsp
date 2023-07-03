<%@ page import="el.MyElClass" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
MyElClass myClass = new MyElClass(); // EL에서는 자바코드를 사용하지 못하기때문에 pakage 안에 method를 따로 만들어놓고 pakage를 import해서 사용 
pageContext.setAttribute("myClass", myClass); // 스크립틀릿에서 생성된 값을 바로 쓸 수 없기 때문에 내장객체 안에 저장
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ELCallMethod.jsp</title>
</head>
<body>
<h2> 내장객체에 저장된 함수 불러오기 </h2>
651212-484745 => ${ myClass.getGender("651212-484745") }<br>
651212-184745 => ${ myClass.getGender("651212-184745") }<br><br>
static 메서드 바로 호출 ${ MyElClass.showGugudan(5) }
</body>
</html>