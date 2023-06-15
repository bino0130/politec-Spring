<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head><title>내장 객체 - Response</title></head>
<body>
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("user_id");
String pwd = request.getParameter("user_pwd"); 
if (id.equalsIgnoreCase("남정현") && pwd.equalsIgnoreCase("bino")) {
    response.sendRedirect("ResponseWelcome.jsp");
}
else {
    request.getRequestDispatcher("ResponseMain.jsp?loginErr=1") // Dispatcher 아주 중요함. 정리해두기
       .forward(request, response); 
}
%>
</body>
</html>