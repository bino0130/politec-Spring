<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
			<h3 class="mb-30 title_color">Review</h3>
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head" style="text-align:center;">
						<div class="serial">번호</div>
						<div class="percentage" style="margin-left:50px; padding-right:0px;">제목</div>
						<div class="country" style="padding-right:0px;">작성자</div>
						<div class="serial" style="padding-right:0px; padding-left:0px;">작성일</div>
						<div class="serial">조회수</div>
					</div>
					<c:forEach items="${reviewList}" var="reviewList">
						<div class="table-head" style="text-align:center;">
							<div class="serial">${reviewList.review_id}</div>
							<div class="percentage" style="margin-left:50px; padding-right:0px; text-align:left;">
								<a style="color:black;" href="<c:url value="/review_view?review_id=${reviewList.review_id}"/>">
									<c:out value="[리뷰] ${reviewList.review_title}"/>
								</a>
							</div>
							<div class="country" style="padding-right:0px; text-transform:none;">
								${reviewList.review_person}
							</div>
							<div class="serial" style="padding-right:0px; padding-left:0px; ">
								${reviewList.review_date}
							</div>
							<div class="serial">${reviewList.view_cnt}</div>
						</div>
					</c:forEach>
					<div class="mt-10" style="text-align: right;">
						<button style="font-size:15px;" type="button" onclick="location.href='review_insert'" 
						class="genric-btn info radius">글쓰기</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>