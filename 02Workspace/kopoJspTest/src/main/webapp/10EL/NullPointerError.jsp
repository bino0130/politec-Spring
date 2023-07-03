<%@ page import = "java.util.ArrayList" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("num1", 9);
pageContext.setAttribute("num2", 10);

pageContext.setAttribute("nullStr", null);
pageContext.setAttribute("emptyStr", "");
pageContext.setAttribute("lengthZero", new Integer[0]);
pageContext.setAttribute("sizeZero", new ArrayList());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>NullPointerError.jsp</title>
</head>
<body>
<h3> empty 연산자 </h3>
empty nullStr : ${ empty nullStr }<br>
empty emptyStr : ${ empty emptyStr }<br>
empty lengthZero : ${ empty lengthZero }<br>
empty sizeZero : ${ empty sizeZero }

<h3> null 연산 </h3>
null + 10 : ${ null + 10 } <br>
nullStr + 10 : ${ nullStr + 10 } <br>
-> empty를 사용하면 null을 숫자 0으로 처리<br>
param.emptyVal > 10 : ${ param.emptyVal > 10 }
</body>
</html>