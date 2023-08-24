<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약상황</title>
<style>
.oneTable {
	border : 1px solid black;
	margin : 0 auto;
	width : 700px;
}
</style>
</head>
<body>
<%@ include file="top.jsp"%>
<table class="oneTable">
	<c:forEach items="${statusList}" var="statusList">
		<c:choose>
			<c:when test="${statusList.korDayOfWeek eq '토' or statusList.korDayOfWeek eq '일'}">
				<tr class="tableTr">
					<td class="dateTd" style="color : red;">${statusList.statusDate}</td>
					<td class="dayTd" style="color : red;">${statusList.korDayOfWeek}</td>

						<c:choose>
							<c:when test="${statusList.room1 eq '예약가능'}">
								<td class="room1Td"><a href="">${statusList.room1}</a></td>
							</c:when>
							<c:otherwise>
								<td class="room1Td">${statusList.room1}</td>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${statusList.room2 eq '예약가능'}">
								<td class="room2Td"><a href="">${statusList.room2}</a></td>
							</c:when>
							<c:otherwise>
								<td class="room2Td">${statusList.room2}</td>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${statusList.room3 eq '예약가능'}">
								<td class="room3Td"><a href="">${statusList.room3}</a></td>
							</c:when>
							<c:otherwise>
								<td class="room3Td">${statusList.room3}</td>
							</c:otherwise>
						</c:choose>
					</tr>
			</c:when>
		
			<c:otherwise>
				<tr class="tableTr">
					<td class="dateTd">${statusList.statusDate}</td>
					<td class="dayTd">${statusList.korDayOfWeek}</td>

						<c:choose>
							<c:when test="${statusList.room1 eq '예약가능'}">
								<td class="room1Td"><a href="<c:url value="/d_02?date=${statusList.statusDate}&room=1"/>">${statusList.room1}</a></td>
							</c:when>
							<c:otherwise>
								<td class="room1Td">${statusList.room1}</td>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${statusList.room2 eq '예약가능'}">
								<td class="room2Td"><a href="<c:url value="/d_02?date=${statusList.statusDate}&room=2"/>">${statusList.room2}</a></td>
							</c:when>
							<c:otherwise>
								<td class="room2Td">${statusList.room2}</td>
							</c:otherwise>
						</c:choose>

						<c:choose>
							<c:when test="${statusList.room3 eq '예약가능'}">
								<td class="room3Td"><a href="<c:url value="/d_02?date=${statusList.statusDate}&room=3"/>">${statusList.room3}</a></td>
							</c:when>
							<c:otherwise>
								<td class="room3Td">${statusList.room3}</td>
							</c:otherwise>
						</c:choose>
					</tr>
			</c:otherwise>
		</c:choose>
	</c:forEach>
	
</table>
</body>
</html>