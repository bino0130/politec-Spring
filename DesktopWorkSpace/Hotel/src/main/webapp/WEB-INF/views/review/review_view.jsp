<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<!-- 공지사항 view 관리자 권한 -->
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>리뷰 열람</title>
</head>
<body>
<%@ include file="../top.jsp"%>
<div class="whole-wrap">
	<div class="container">
		<div class="section-top-border">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head">
						<div class="serial" style="text-align:center;">제목</div>
						<div class="percentage" style="text-align:left"><c:out value="${oneReview.review_title}"/></div>
					</div>
					<hr>
					<div class="table-head">
						<div class="serial" style="text-align:center;">작성자</div>
						<div class="percentage" style="text-align:left"><c:out value="${oneReview.review_person}"/></div>
					</div>
					<hr>
					<div class="table-head">
						<div class="serial" style="text-align:center;">일자</div>
						<div class="percentage" style="text-align:left"><c:out value="${oneReview.review_date}"/></div>
					</div>
					<hr>
					<div class="table-head" style="height:300px;">
						<div class="serial" style="text-align:center;">내용</div>
						<div style="text-align:left; width:600px; font-weight:500; color:black; padding-top:8px;">
							<c:out value="${oneReview.review_content}"/>
						</div>
					</div>
					<div class="table-head" style="text-align: right;">
						<div class="serial"></div>
						<div style="text-align:right; width:700px;">
							<div class="mt-10" style="text-align: right;">
								<sec:authorize access="hasRole('ROLE_ADMIN')">
									<button type="button" class="genric-btn danger radius" data-toggle="modal" data-target="#deleteReview">삭제</button>
									<!-- modal -->
									<div class="modal" id="deleteReview">
     									<div class="modal-dialog">
    										<div class="modal-content">
      											<div class="modal-header" style="height:70px;">
        											<h4 class="modal-title">게시글 삭제</h4>
        											<button type="button" class="botton close" data-dismiss="modal" aria-label="Close" style="cursor:pointer;">
          												<span aria-hidden="true">&times;</span>
        											</button>
      											</div>
      											<div class="modal-body" style="text-align:left;">
      												<b style="color:black;">정말 삭제하시겠습니까?</b>
      											</div>
      											<div class="modal-footer">
         											<button type="button" class="btn btn-danger" 
													onclick="location.href='${pageContext.request.contextPath}/admin/review_delete?review_id=${oneReview.review_id}'"
													style="cursor:pointer;">삭제</button>
          											<button type="button" class="btn btn-primary" data-dismiss="modal" style="cursor:pointer;">취소</button>
      											</div>
    										</div>
  										</div>
									</div>
									<!-- modal -->
									<button type="button" class="genric-btn info radius"
									onclick="location.href='${pageContext.request.contextPath}/admin/review_update?review_id=${oneReview.review_id}'">수정</button>
								</sec:authorize>
							</div>
						</div>
					</div>
					<%@ include file="./reply.jsp"%>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>