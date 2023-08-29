<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 목록</title>
<style>
.oneTable {
	width : 600px;
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

.submit {
	background-color : skyblue;
	border-color : skyblue;
	border-radius : 5px;
}
</style>
</head>
<body>
<%@ include file="../top.jsp"%>
<table class="oneTable">
	<thead>
		<tr>
			<td class="one" style="background-color : skyblue;">번호</td>
			<td class="seven" style="background-color : skyblue;">제목</td>
			<td class="two" style="background-color : skyblue;">등록날짜</td>
		</tr>
	</thead>
	<c:forEach items="${noticeList}" var="noticeList">
		<tr>
			<td class="one">${noticeList.notice_id}</td>
			<td class="seven"><a href="<c:url value="/notice_view?notice_id=${noticeList.notice_id}"/>">${noticeList.notice_title}</a></td>
			<td class="two">${noticeList.notice_date}</td>
		</tr>
	</c:forEach>
	<tr>
		<td colspan='3' style="text-align : right;">
			<button class="submit" type="button" onclick="location.href='notice_insert'">글쓰기</button>
		</td>
		<td></td>
		<td></td>
	</tr>
</table>
</body>
</html>