<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>공지사항 목록</title>
</head>
<body>
<%@ include file="../top.jsp"%>
<div class="whole-wrap">
	<div class="container">
		<div class="section-top-border">
			<h3 class="mb-30 title_color">Notice</h3>
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head" style="text-align:center;">
						<div class="serial">번호</div>
						<div class="percentage" style="margin-left:50px; padding-right:0px;">제목</div>
						<div class="percentage" style="padding-right:0px;">작성일</div>
						<div class="serial">조회수</div>
					</div>
					<c:forEach items="${noticeList}" var="noticeList">
						<div class="table-head" style="text-align:center;">
							<div class="serial">${noticeList.notice_id}</div>
							<div class="percentage" style="margin-left:50px; padding-right:0px; text-align:left;">
								<a style="color:black;" href="<c:url value="/notice_view?notice_id=${noticeList.notice_id}"/>">
									<c:out value="[공지] ${noticeList.notice_title}"/>
								</a>
							</div>
							<div class="percentage" style="padding-right:0px;">${noticeList.notice_date}</div>
							<div class="serial">${noticeList.view_cnt}</div>
						</div>
					</c:forEach>
					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<div class="mt-10" style="text-align: right;">
						<button style="font-size:15px;" type="button" onclick="location.href='${pageContext.request.contextPath}/admin/notice_insert'" 
						class="genric-btn info radius">글쓰기</button>
					</div>
					</sec:authorize>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>