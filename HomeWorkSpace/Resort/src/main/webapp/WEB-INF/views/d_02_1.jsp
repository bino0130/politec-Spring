<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<title>예약하기</title>
<style>
.secondTable {
	border : 1px solid black;
	width : 500px; 
	height : 500px;
	margin : auto;
}
.tdTwo {
	border : 1px solid black;
	width : 20%;
}
.tdEight {
	border : 1px solid black;
	width : 80%;
	text-align : left;
}
</style>
</head>
<body>
<%@ include file="top.jsp"%>
<% 
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
	String date = dformat.format(cal.getTime());
%>
<c:choose>
	<c:when test="${duplicateKey eq true }">
		<script>
			alert("선택하신 방과 날짜는 이미 예약되어 있습니다.");
		</script>
		<form:form modelAttribute="NewReservation" method="POST">
			<table class="secondTable">
				<tr>
					<td class="tdTwo">성명</td>
					<td class="tdEight">
						<form:input path="customer_name" type="text" value="${resort.customer_name}" />
					</td>
				</tr>
				<tr>
					<td class="tdTwo">예약일자</td>
					<td class="tdEight"><form:input id="Date" path="resv_date"
					type="text" value="" readonly="true" /> 
						<script>
							$(function() {
								$("#Date").datepicker({
									minDate : new Date(),
									maxDate : '+365d',
									dateFormat : 'yy-mm-dd',
									showMonthAfterYear : true,
									dayNamesMin : ['월', '화', '수', '목', '금', '토', '일' ], // 요일의 한글 형식.
									monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월',
														'8월', '9월', '10월', '11월', '12월' ] // 월의 한글 형식.
									});
								});
						</script>
					</td>

				</tr>
				<tr>
					<td class="tdTwo">예약방</td>
					<td class="tdEight">
						<div class="dropdown">
							<select name="room" id="room">
								<option value="1">VIP 룸</option>
								<option value="2">비즈니스 룸</option>
								<option value="3">스탠다드 룸</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">주소</td>
					<td class="tdEight">
						<form:input path="addr" type="text" value="${resort.addr}" style="width:320px;" />
					</td>
				</tr>
				<tr>
					<td class="tdTwo">전화번호</td>
					<td class="tdEight">
						<form:input path="telnum" type="text" value="${resort.telnum}" />
					</td>
				</tr>
				<tr>
					<td class="tdTwo">입금자명</td>
					<td class="tdEight">
						<form:input path="in_name" type="text" value="${resort.in_name}" />
					</td>
				</tr>
				<tr>
					<td class="tdTwo">남기실말</td>
					<td class="tdEight">
						<form:input path="memo" value="${resort.memo}" style="width : 320px;" />
						<form:input path="write_date" type="hidden" value="<%=date%>" />
						<form:input path="processing" type="hidden" value="4" />
					</td>
				</tr>
				<tr>
					<td colspan='2' style="border: 1px solid black; height: 30px;">
						<input type="submit" value="전송" style="text-align: center;">
					</td>
					<td></td>
				</tr>
				</table>
			</form:form>
	</c:when>
	
	<c:otherwise>
		<form:form modelAttribute="NewReservation" method="POST">
			<table class="secondTable">
				<tr>
					<td class="tdTwo">성명</td>
					<td class="tdEight">
						<form:input path="customer_name" type="text" value="" />
					</td>
				</tr>
				<tr>
					<td class="tdTwo">예약일자</td>
					<td class="tdEight"><form:input id="Date" path="resv_date"
					type="text" value="" readonly="true" /> 
						<script>
							$(function() {
								$("#Date").datepicker({
									minDate : new Date(),
									maxDate : '+365d',
									dateFormat : 'yy-mm-dd',
									showMonthAfterYear : true,
									dayNamesMin : ['월', '화', '수', '목', '금', '토', '일' ], // 요일의 한글 형식.
									monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월',
														'8월', '9월', '10월', '11월', '12월' ] // 월의 한글 형식.
									});
								});
						</script>
					</td>

				</tr>
				<tr>
					<td class="tdTwo">예약방</td>
					<td class="tdEight">
						<div class="dropdown">
							<select name="room" id="room">
								<option value="1">VIP 룸</option>
								<option value="2">비즈니스 룸</option>
								<option value="3">스탠다드 룸</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">주소</td>
					<td class="tdEight"><form:input path="addr" type="text"
							value="" style="width:320px;" /></td>
				</tr>
				<tr>
					<td class="tdTwo">전화번호</td>
					<td class="tdEight"><form:input path="telnum" type="text"
							value="" /></td>
				</tr>
				<tr>
					<td class="tdTwo">입금자명</td>
					<td class="tdEight">
						<form:input path="in_name" type="text" value="" />
					</td>
				</tr>
				<tr>
					<td class="tdTwo">남기실말</td>
					<td class="tdEight"><form:input path="memo" value=""
							style="width : 320px;" /> <form:input path="write_date"
							type="hidden" value="<%=date%>" />
						<form:input path="processing" type="hidden" value="4" /></td>
				</tr>
				<tr>
					<td colspan='2' style="border: 1px solid black; height: 30px;"><input
						type="submit" value="전송" style="text-align: center;"></td>
					<td></td>
				</tr>
				</table>
			</form:form>
		</c:otherwise>
</c:choose>
</body>
</html>