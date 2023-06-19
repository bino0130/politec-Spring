<%@ page import="common.Person" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setAttribute("requestStr", "request 확인");
request.setAttribute("requestPerson", new Person("bino", 20));
/* 1. "request"라는 문자열을 name은 requestStr로 저장
   2. Person 객체 저장 (본인이름, 나이는 20살로 통일) */
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request scope</title>
</head>
<body>
<h2> request 영역 확인 </h2>
<%
// 저장된 데이터 불러와서 출력
request.removeAttribute("requestStr"); // 저장된 변수를 삭제 시도
request.removeAttribute("requestInt"); // 없는 변수를 삭제 시도 -> 에러가 발생하지 않음

String reqStr = (String)(request.getAttribute("requestStr"));
Person reqPerson = (Person)(request.getAttribute("requestPerson"));
//requestStr load, Person load => 출력
%>
<ul>
	<li>String reqStr = <%= reqStr %></li>
	<li>Person reqPerson = <%= reqPerson.getName() %>, <%= reqPerson.getAge() %></li>
</ul>

<h2>request 영역 속성 전달 - 포워드 활용</h2>
<%
request.getRequestDispatcher("RequestForward.jsp?param1=한글&param2=eng")
	.forward(request, response);
%>
</body>
</html>