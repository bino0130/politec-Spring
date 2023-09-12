<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!-- 공지사항 view 관리자 권한 -->
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
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
<div class="whole-wrap">
	<div class="container">
		<div class="section-top-border">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head" style="text-align:center;">
						<div class="serial">번호</div>
						<div class="percentage"><c:out value="${oneNotice.notice_id}"/></div>
					</div>
					<hr>
					<div class="table-head" style="text-align:center;">
						<div class="serial">제목</div>
						<div class="percentage"><c:out value="${oneNotice.notice_title}"/></div>
					</div>
					<hr>
					<div class="table-head" style="text-align:center;">
						<div class="serial">일자</div>
						<div class="percentage"><c:out value="${oneNotice.notice_date}"/></div>
					</div>
					<hr>
					<div class="table-head" style="text-align:center; height:300px;">
						<div class="serial">내용</div>
						<div class="percentage">
							<c:out value="${oneNotice.notice_content}"/>
						</div>
					</div>
					<div class="mt-10" style="text-align: right;">
						<button type="button" class="genric-btn danger radius"
							onclick="location.href='notice_delete?notice_id=${oneNotice.notice_id}'">삭제</button>
						<button type="button" class="genric-btn info radius"
							onclick="location.href='notice_update?notice_id=${oneNotice.notice_id}'">수정</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>