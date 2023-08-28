<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.oneTable {
	width : 600px;
	border : 1px solid black;
	border-collapse : collapse;
	margin : auto;	
}

.one {
	width : 10%;
	text-align : center;
	border : 1px solid black;
}

.two {
	width : 20%;
	text-align : center;
	border : 1px solid black;
}

.seven {
	width : 70%;
	border : 1px solid black;
}
</style>
</head>
<body>
<%@ include file="../top.jsp"%>
<table class="oneTable">
	<thead>
		<tr>
			<td class="one">번호</td>
			<td class="seven">제목</td>
			<td class="two">등록날짜</td>
		</tr>
	</thead>
	<c:forEach items="${noticeList}" var="noticeList">
		<tr>
			<td class="one">${noticeList.notice_id}</td>
			<td class="seven"><a href="<c:url value="/notice_view?id=${noticeList.notice_id}" />">${noticeList.notice_title}</a></td>
			<td class="two">${noticeList.notice_date}</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>