<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<form:form modelAttribute="updateReservation" method="POST">
<table class="secondTable">
<tr>
	<td class="tdTwo">성명</td><td class="tdEight"><form:input path="customer_name" type="text" value=""/></td>
</tr>
<tr>
	<td class="tdTwo">변경 예약일자</td><td class="tdEight"><form:input path="resv_date" type="text" value=""/></td>
</tr>
<tr>
	<td class="tdTwo">기존 예약일자</td><td class="tdEight"><form:input path="resv_date2" type="text" value=""/></td>
</tr>
<tr>
	<td class="tdTwo">변경 예약방</td>
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
	<td class="tdTwo">기존 예약방</td>
	<td class="tdEight">
		<div class="dropdown">
			<select name="room2" id="room2">
				<option value="1">VIP 룸</option>
				<option value="2">비즈니스 룸</option>
				<option value="3">스탠다드 룸</option>
			</select>
		</div>
	</td>
</tr>
<tr>
	<td class="tdTwo">주소</td><td class="tdEight"><form:input path="addr" type="text" value="" style="width : 320px;"/></td>
</tr>
<tr>
	<td class="tdTwo">전화번호</td><td class="tdEight"><form:input path="telnum" type="text" value=""/></td>
</tr>
<tr>
	<td class="tdTwo">입금자명</td><td class="tdEight"><form:input path="in_name" type="text" value=""/></td>
</tr>
<tr>
	<td class="tdTwo">남기실말</td><td class="tdEight">
		<form:input path="memo" value="" style="width : 320px;"/>
		<form:input path="write_date" type="hidden" value="<%=date%>"/><form:input path="processing" type="hidden" value="4"/>
	</td>
</tr>
<tr>
	<td colspan='2' style="border : 1px solid black; height : 30px;"><input type="submit" value="업데이트" style="text-align:center;"></td><td></td>
</tr>
</table>
</form:form>
</body>
</html>