<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><!-- 지시어 -->
<%!  // 선언부( <%! 사용해서 메서드 선언), 스크립트 요소
public int add(int num1 , int num2) {
    return num1 + num2;
}
%>
<html>
<head><title>스크립트 요소</title></head>
<body>
<%  // 스크립틀릿(자바 코드)
int result = add(10, 20); // 스크립트 요소
%>
덧셈 결과 1 : <%= result %> <br /> <!--< %= %>표현식 -->
덧셈 결과 2 : <%= add(30, 40) %>
</body>
</html>