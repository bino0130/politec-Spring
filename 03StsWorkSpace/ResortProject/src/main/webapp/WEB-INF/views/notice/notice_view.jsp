<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 열람</title>
<style>
.noticeViewTable {
	width : 600px;
	height : 500px;
	border : 1px solid black;
	border-collapse : collapse;
	margin : auto;
}

.bottom {
	width : 600px;
	height : 0px;
	bordedr : 0px; 
	margin : auto;
}

.one {
	width : 10%;
	border : 1px solid black;
	text-align : center;
}

.nine {
	width : 90%;
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
<form:form modelAttribute="showNoticeForm" method="POST">
	<table class = "noticeViewTable">
		<tr>
			<td class="one" style="background-color : skyblue;">번호</td>
			<td class="nine" style="height : 7%; text-align : left; padding-left : 10px;">
				${oneNotice.notice_id}
			</td>
		</tr>
		<tr>
			<td class="one" style="background-color : skyblue;">제목</td>
			<td class="nine" style="height : 7%; text-align : left; padding-left : 10px;">
				${oneNotice.notice_title}
			</td>
		</tr>
		<tr>
			<td class="one" style="background-color : skyblue;">일자</td>
			<td class="nine" style="height : 7%; text-align : left; padding-left : 10px;">
				${oneNotice.notice_date}
			</td>
		</tr>
		<tr>
			<td class="one" style="background-color : skyblue;">내용</td>
			<td class="nine" style="text-align : left; padding-left : 10px;">
				${oneNotice.notice_content}
			</td>
		</tr>
	</table>
	<table class="bottom">
		<tr>
			<td style="border:0px; text-align : right;">
				<input class="submit" type="submit" value="목록" formaction="notice_list">
				<input class="submit" type="submit" value="수정" formaction="notice_update">
			</td>
		</tr>
	</table>
</form:form>
</body>
</html>