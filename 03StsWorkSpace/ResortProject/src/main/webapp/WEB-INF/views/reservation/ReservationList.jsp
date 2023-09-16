<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>예약상황</title>
<style>
.oneTable {
	border : 1px solid black;
	border-collapse : collapse;
	margin : 0 auto;
	width : 600px;
}

.td, .dateTd, .dayTd, .room1Td, .room2Td, .room3Td, .room4Td {
	border : 1px solid black;
	text-align : center;
}

</style>
</head>
<body>
<%@ include file="../top.jsp"%>
<sec:authorize access="hasRole('ROLE_ADMIN')" var="isAdmin"></sec:authorize>
<div class="whole-wrap">
	<div class="container">
		<div class="section-top-border">
			<h3 class="mb-30 title_color">Reservation List</h3>
			<div class="progress-table-wrap">
				<div class="progress-table">
					<div class="table-head" style="text-align:center;">
						<div class="visit">날짜</div>
						<div class="serial" style="padding-left:0px;">요일</div>
						<div class="visit">Economy Single</div>
						<div class="visit">Single Deluxe</div>
						<div class="visit">Double Deluxe</div>
						<div class="visit">HoneyMoon Suite</div>
					</div>
					<c:forEach items="${statusList}" var="statusList">
						<div class="table-head" style="text-align:center;">
							<c:choose>
								<c:when test="${statusList.korDayOfWeek eq '토' or statusList.korDayOfWeek eq '일'}">
									<div class="visit" style="color:red;">${statusList.statusDate}</div>
									<div class="serial" style="padding-left:0px; color:red;">${statusList.korDayOfWeek}</div>
									
									<c:choose>
										<c:when test="${statusList.room1 eq '예약가능'}">
											<div class="visit">
												<a href="<c:url value="/ReservationPage_2?date=${statusList.statusDate}&room=1"/>" style="color:blue;">${statusList.room1}</a>
											</div>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${isAdmin}">
													<div class="visit">
														<a href="<c:url value="/admin/ReservationView?date=${statusList.statusDate}&room=1"/>"><b>예약됨</b></a>
													</div>
												</c:when>
												<c:otherwise>
													<div class="visit">${statusList.room1}</div>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
									
									<c:choose>
										<c:when test="${statusList.room2 eq '예약가능'}">
											<div class="visit">
												<a href="<c:url value="/ReservationPage_2?date=${statusList.statusDate}&room=2"/>" style="color:blue;">${statusList.room2}</a>
											</div>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${isAdmin}">
													<div class="visit">
														<a href="<c:url value="/admin/ReservationView?date=${statusList.statusDate}&room=2"/>"><b>예약됨</b></a>
													</div>
												</c:when>
												<c:otherwise>
													<div class="visit">${statusList.room2}</div>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								
									<c:choose>
										<c:when test="${statusList.room3 eq '예약가능'}">
											<div class="visit">
												<a href="<c:url value="/ReservationPage_2?date=${statusList.statusDate}&room=3"/>" style="color:blue;">${statusList.room3}</a>
											</div>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${isAdmin}">
													<div class="visit">
														<a href="<c:url value="/admin/ReservationView?date=${statusList.statusDate}&room=3"/>"><b>예약됨</b></a>
													</div>
												</c:when>
												<c:otherwise>
													<div class="visit">${statusList.room3}</div>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								
									<c:choose>
										<c:when test="${statusList.room4 eq '예약가능'}">
											<div class="visit">
												<a href="<c:url value="/ReservationPage_2?date=${statusList.statusDate}&room=4"/>" style="color:blue;">${statusList.room4}</a>
											</div>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${isAdmin}">
													<div class="visit">
														<a href="<c:url value="/admin/ReservationView?date=${statusList.statusDate}&room=4"/>"><b>예약됨</b></a>
													</div>
												</c:when>
												<c:otherwise>
													<div class="visit">${statusList.room4}</div>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</c:when>
							
								<c:otherwise>
									<div class="visit">${statusList.statusDate}</div>
									<div class="serial" style="padding-left:0px;">${statusList.korDayOfWeek}</div>
								
									<c:choose>
										<c:when test="${statusList.room1 eq '예약가능'}">
											<div class="visit">
												<a href="<c:url value="/ReservationPage_2?date=${statusList.statusDate}&room=1"/>" style="color:blue;">${statusList.room1}</a>
											</div>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${isAdmin}">
													<div class="visit">
														<a href="<c:url value="/admin/ReservationView?date=${statusList.statusDate}&room=1"/>"><b>예약됨</b></a>
													</div>
												</c:when>
												<c:otherwise>
													<div class="visit">${statusList.room1}</div>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								
									<c:choose>
										<c:when test="${statusList.room2 eq '예약가능'}">
											<div class="visit">
												<a href="<c:url value="/ReservationPage_2?date=${statusList.statusDate}&room=2"/>" style="color:blue;">${statusList.room2}</a>
											</div>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${isAdmin}">
													<div class="visit">
														<a href="<c:url value="/admin/ReservationView?date=${statusList.statusDate}&room=2"/>"><b>예약됨</b></a>
													</div>
												</c:when>
												<c:otherwise>
													<div class="visit">${statusList.room2}</div>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								
									<c:choose>
										<c:when test="${statusList.room3 eq '예약가능'}">
											<div class="visit">
												<a href="<c:url value="/ReservationPage_2?date=${statusList.statusDate}&room=3"/>" style="color:blue;">${statusList.room3}</a>
											</div>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${isAdmin}">
													<div class="visit">
														<a href="<c:url value="/admin/ReservationView?date=${statusList.statusDate}&room=3"/>"><b>예약됨</b></a>
													</div>
												</c:when>
												<c:otherwise>
													<div class="visit">${statusList.room3}</div>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								
									<c:choose>
										<c:when test="${statusList.room4 eq '예약가능'}">
											<div class="visit">
												<a href="<c:url value="/ReservationPage_2?date=${statusList.statusDate}&room=4"/>" style="color:blue;">${statusList.room4}</a>
											</div>
										</c:when>
										<c:otherwise>
											<c:choose>
												<c:when test="${isAdmin}">
													<div class="visit">
														<a href="<c:url value="/admin/ReservationView?date=${statusList.statusDate}&room=4"/>"><b>예약됨</b></a>
													</div>
												</c:when>
												<c:otherwise>
													<div class="visit">${statusList.room4}</div>
												</c:otherwise>
											</c:choose>
										</c:otherwise>
									</c:choose>
								</c:otherwise>
							</c:choose>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>