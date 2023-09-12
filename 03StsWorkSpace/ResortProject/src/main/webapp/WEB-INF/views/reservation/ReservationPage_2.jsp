<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>예약하기</title>
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
<%@ include file="../top.jsp"%>
<% 
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
	String date = dformat.format(cal.getTime());
%>
<div class="whole-wrap">
	<div class="container">
		<div class="section-top-border">
			<div class="row">
				<div class="col-lg-8 col-md-8">
				<h3 class="mb-30 title_color">Room Reservation</h3>
				<form:form modelAttribute="AnotherReservation" method="POST" onsubmit="return validateForm()">
					<div class="input-group-icon mt-10">
						<div class="icon" style="z-index: 1">
							<i class="fa fa-user" aria-hidden="true"></i>
						</div>
						<form:input path="customer_name" type="text" value="" placeholder="Name" onfocus="this.placeholder = ''" 
										onblur="this.placeholder='Name'" required="true" class="single-input" maxlength="16"/>
					</div>
					<div class="input-group-icon mt-10">
						<div class="icon" style="z-index: 1">
							<i class="fa fa-calendar-check-o" aria-hidden="true"></i>
						</div>
						<form:input id="Date" path="resv_date" placeholder="Reservation Date" value="${resv_date}"
							onfocus="this.placeholder = ''"  onblur="this.placeholder='Reservation Date'" 
							type="text" readonly="true" required="true" class="single-input"/>
					</div>
					<div class="input-group-icon mt-10">
						<div class="icon" style="z-index: 1">
							<i class="fa fa-bed" aria-hidden="true"></i>
						</div>
						<c:choose>
							<c:when test="${room eq 1}">
								<form:input path="room"	type="text" value="Economy Double" readonly="true" required="true" class="single-input"/>
							</c:when>
							
							<c:when test="${room eq 2}">
								<form:input path="room"	type="text" value="Single Deluxe" readonly="true" required="true" class="single-input"/>
							</c:when>
							
							<c:when test="${room eq 3}">
								<form:input path="room"	type="text" value="Double Deluxe" readonly="true" required="true" class="single-input"/>
							</c:when>
							
							<c:when test="${room eq 4}">
								<form:input path="room"	type="text" value="HoneyMoon Suite" readonly="true" required="true" class="single-input"/>
							</c:when>
						</c:choose>
					</div>
					<div class="input-group-icon mt-10">
						<div class="icon" style="z-index: 0">
							<i class="fa fa-thumb-tack" aria-hidden="true"></i>
						</div>
						<form:input path="addr" type="text" value=""
							placeholder="Address" onfocus="this.placeholder = ''"
							onblur="this.placeholder='Address'" class="single-input" maxlength="33"/>
					</div>
					<div class="input-group-icon mt-10">
						<div class="icon" style="z-index: 0">
							<i class="fa fa-mobile" aria-hidden="true"></i>
						</div>
						<form:input path="telnum" type="text" value=""
							placeholder="Phone Number" onfocus="this.placeholder=''"
							onblur="this.placeholder='Phone Number'" pattern="\d{3}-\d{4}-\d{4}"
							title="000-0000-0000 형식으로 입력하세요" required="true" class="single-input"/>
					</div>
					<div class="input-group-icon mt-10">
						<div class="icon" style="z-index: 0">
							<i class="fa fa-dollar" aria-hidden="true"></i>
						</div>
						<form:input path="in_name" type="text" value=""
							placeholder="Deposit Name" onfocus="this.placeholder=''"
							onblur="this.placeholder='Deposit Name'" required="true"
							maxlength="16" class="single-input"/>
					</div>
					<div class="input-group-icon mt-10">
						<div class="icon" style="z-index: 0">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</div>
						<form:input path="memo" class="single-input"
							placeholder="Message" onfocus="this.placeholder = ''"
							onblur="this.placeholder = 'Message'" value=""
							required="true" maxlength="50"/>
						<form:input path="write_date" type="hidden" value="<%=date%>"/>
						<form:input path="processing" type="hidden" value="4"/>
					</div>
					<div class="mt-10" style="text-align: right;">
						<input type="submit" value="Reserve" class="genric-btn success"/>
					</div>
				</form:form>
			</div>
		</div>
	</div><!-- section top border 끝 -->
</div>
</div>
<%@ include file="../footer.jsp"%>
</body>
</html>