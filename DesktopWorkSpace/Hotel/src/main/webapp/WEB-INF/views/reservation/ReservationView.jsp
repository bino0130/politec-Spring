<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>예약 정보</title>
</head>
<body>
<%@ include file="../top.jsp"%>
<div class="whole-wrap">
	<div class="container">
		<div class="section-top-border">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head">
						<div class="serial" style="text-align:center;">이름</div>
						<div class="percentage" style="text-align:left"><c:out value="${oneResort.customer_name}"/></div>
					</div>
					<hr>
					<div class="table-head">
						<div class="serial" style="text-align:center;">예약 날짜</div>
						<div class="percentage" style="text-align:left"><c:out value="${oneResort.resv_date}"/></div>
					</div>
					<hr>
					<div class="table-head">
						<div class="serial" style="text-align:center;">방</div>
						<div class="percentage" style="text-align:left">
							<c:if test="${oneResort.room eq 1}">Economy Single</c:if>
							<c:if test="${oneResort.room eq 2}">Single Deluxe</c:if>
							<c:if test="${oneResort.room eq 3}">Double Deluxe</c:if>
							<c:if test="${oneResort.room eq 4}">HoneyMoon Suite</c:if>
						</div>
					</div>
					<hr>
					<div class="table-head">
						<div class="serial" style="text-align:center;">주소</div>
						<div class="percentage" style="text-align:left"><c:out value="${oneResort.addr}"/></div>
					</div>
					<hr>
					<div class="table-head">
						<div class="serial" style="text-align:center;">전화번호</div>
						<div class="percentage" style="text-align:left"><c:out value="${oneResort.telnum}"/></div>
					</div>
					<hr>
					<div class="table-head">
						<div class="serial" style="text-align:center;">입금자명</div>
						<div class="percentage" style="text-align:left"><c:out value="${oneResort.in_name}"/></div>
					</div>
					<hr>
					<div class="table-head">
						<div class="serial" style="text-align:center;">남길 말</div>
						<div class="percentage" style="text-align:left">
							<c:out value="${oneResort.memo}"/>
						</div>
					</div>
					<hr>
					<div class="table-head">
						<div class="serial" style="text-align:center;">작성 날짜</div>
						<div class="percentage" style="text-align:left"><c:out value="${oneResort.write_date}"/></div>
					</div>
					<hr>
					<div class="table-head" style="text-align: right;">
						<div class="serial"></div>
						<div style="text-align:right; width:600px;">
							<div class="mt-10" style="text-align: right;">
								<sec:authorize access="hasRole('ROLE_ADMIN')">
									<button type="button" class="genric-btn danger radius" data-toggle="modal" data-target="#deleteReservation">예약 취소</button>
									<!-- modal -->
									<div class="modal" id="deleteReservation">
	     								<div class="modal-dialog">
    										<div class="modal-content">
      											<div class="modal-header" style="height:70px;">
        											<h4 class="modal-title">예약 취소</h4>
        											<button type="button" class="botton close" data-dismiss="modal" aria-label="Close" style="cursor:pointer;">
          												<span aria-hidden="true">&times;</span>
        											</button>
      											</div>
      											<div class="modal-body" style="text-align:left;">
      												<b style="color:black;">정말 취소하시겠습니까?</b>
      											</div>
      											<div class="modal-footer">
         											<button type="button" class="btn btn-danger" 
													onclick="location.href='${pageContext.request.contextPath}/admin/ReservationDelete?resv_date=${oneResort.resv_date}&room=${oneResort.room}'"
													style="cursor:pointer;">취소</button>
    	      										<button type="button" class="btn btn-primary" data-dismiss="modal" style="cursor:pointer;">돌아가기</button>
      											</div>
    										</div>
  										</div>
									</div>
									<!-- modal -->
									<button type="button" class="genric-btn info radius"
										onclick="location.href='${pageContext.request.contextPath}/admin/ReservationUpdatePage_2?resv_date=${oneResort.resv_date}&room=${oneResort.room}'">예약 변경</button>
								</sec:authorize>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>