<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String outPath1 = "./inc/OuterPage1.jsp";
String outPath2 = "./inc/OuterPage2.jsp";

pageContext.setAttribute("pAttr","동명왕");
request.setAttribute("rAttr", "온조왕");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>외부 파일 읽기</title>
</head>
<body>
<h2>지시어 vs 액션태그 방식 비교</h2>

<!-- 1. 지시어로 include 
	 2. newVal1 출력
	 3. 지시어로 include : 표현식으로 경로 지정
	 
	 4. 액션태그로 include
	 5. 액션태그로 include : 표현식으로 경로 지정
	 5. newVal2 출력 -->
<h3>지시어로 페이지 포함</h3>	 
<%@ include file="./inc/OuterPage1.jsp" %>
<p>include 지시어 출력 : <%=newVar1%></p> <!-- 주로 정적인 페이지에서 사용 -->

<h3>액션태그로 페이지 포함</h3>
<jsp:include page="./inc/OuterPage2.jsp" />
<jsp:include page="<%=outPath2%>" />
<p>include 액션태그 출력 : <%--newVar2--%></p> <!-- 액션태그로 include시 변수 호환 사용이 불가능함, 주로 동적인 페이지에서 사용 -->
</body>
</html>