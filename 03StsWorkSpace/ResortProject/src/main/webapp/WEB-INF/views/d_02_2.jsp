<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- 달력 오픈소스 datepicker 시작 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- 달력 오픈소스 datepicker 끝 -->
<script>
function trimSpace(input) { // 공백 trim하는 함수
	return input.replace(/^\s+/, ''); // 공백이 있으면 없앰	 
}
 
function InputCheck(input) { // 입력값 체크하는 함수
	 var inputValue = input; // 입력 받는 변수 혹은 데이터베이스에서 가져온 값 등
	 var pattern = /^(?!(\s)*$)$/;
	 
	 if(inputValue.trim().length === 0) { // inputValue.trim()의 길이가 0이라면 alert
		 //alert("내용을 입력하세요");
	 	return false;
	 }
}
 
function validateForm() { // 데이터 전달하는 form 체크
	 var name = document.forms["AnotherReservation"]["customer_name"].value; // NewReservation 태그 안에 있는 customer_name의 value를 가져옴
	 var addr = document.forms["AnotherReservation"]["addr"].value; // NewReservation 태그 안에 있는 addr의 value를 가져옴
	 var telnum = document.forms["AnotherReservation"]["telnum"].value; // NewReservation 태그 안에 있는 telnum의 value를 가져옴
	 var in_name = document.forms["AnotherReservation"]["in_name"].value; // NewReservation 태그 안에 있는 in_name의 value를 가져옴
	 var memo = document.forms["AnotherReservation"]["memo"].value; // NewReservation 태그 안에 있는 memo의 value를 가져옴
	 
	 if(InputCheck(name) === false) {
		 alert("성함을 입력해주세요");
		 return false;
	 }
	 if(InputCheck(addr) === false) {
		 alert("주소를 입력해주세요");
		 return false;
	 }
	 if(InputCheck(telnum) === false) {
		 alert("전화번호를 입력해주세요");
		 return false;
	 }
	 if(InputCheck(in_name) === false) {
		 alert("입금자명을 입력해주세요");
		 return false;
	 }
	 if(InputCheck(memo) === false) {
		 alert("남기실 말을 입력해주세요");
		 return false;
	 }
 }
</script>
</head>
<body>
<%@ include file="top.jsp"%>
<% 
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
	String date = dformat.format(cal.getTime());
%>
	<form:form modelAttribute="AnotherReservation" method="POST" onsubmit="return validateForm()">
		<table class="secondTable">
			<tr>
				<td class="tdTwo">성명</td>
				<td class="tdEight">
					<form:input path="customer_name" type="text" value="" 
					maxlength="16" placeholder="성함을 입력해주세요" required="true" />
				</td>
			</tr>
			<tr>
				<td class="tdTwo">예약일자</td>
				<td class="tdEight">
					<form:input id="resv_date" path="resv_date" placeholder="날짜를 선택해주세요"
					type="text" value="${resv_date}" readonly="true" required="true" />
				</td>
			</tr>
			<tr>
				<td class="tdTwo">예약방</td>
				<td class="tdEight">
					<div class="dropdown">
						<!-- <option value="1" <c:if test="${room eq 1}">selected="selected"</c:if> >VIP 룸</option>
						<option value="2" <c:if test="${room eq 2}">selected="selected"</c:if> >비즈니스 룸</option>
						<option value="3" <c:if test="${room eq 3}">selected="selected"</c:if> >스탠다드 룸</option> -->
						<c:choose>
							<c:when test="${room eq 1}">
								<form:input path="room"	type="text" value="Economy Double" readonly="true" required="true"/>
							</c:when>
							
							<c:when test="${room eq 2}">
								<form:input path="room"	type="text" value="Single Deluxe" readonly="true" required="true"/>
							</c:when>
							
							<c:when test="${room eq 3}">
								<form:input path="room"	type="text" value="Double Deluxe" readonly="true" required="true"/>
							</c:when>
							
							<c:when test="${room eq 4}">
								<form:input path="room"	type="text" value="HoneyMoon Suite" readonly="true" required="true"/>
							</c:when>
						</c:choose>
					</div>
				</td>
			</tr>
			<tr>
				<td class="tdTwo">주소</td>
				<td class="tdEight">
					<form:input path="addr" type="text" value="" maxlength="33" 
						placeholder="주소를 입력해주세요" style="width:320px;" required="true"/>
				</td>
			</tr>
			<tr>
				<td class="tdTwo">전화번호</td>
				<td class="tdEight">
					<form:input path="telnum" type="text" value="" maxlength="13"
						placeholder="전화번호를 입력해주세요" pattern="\d{3}-\d{4}-\d{4}" 
						title="000-0000-0000 형식으로 입력하세요" required="true"/>
				</td>
			</tr>
			<tr>
				<td class="tdTwo">입금자명</td>
				<td class="tdEight">
					<form:input path="in_name" type="text" value=""
						maxlength="16" placeholder="입금자명을 입력해주세요" required="true" />
				</td>
			</tr>
			<tr>
				<td class="tdTwo">남기실말</td>
				<td class="tdEight">
					<form:input path="memo" value="" style="width : 320px;" maxlength="50"
						placeholder="남기실 말을 입력해주세요" required="true" /> 
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
<%@ include file="footer.jsp"%>
</body>
</html>