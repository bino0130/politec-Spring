<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	 var name = document.forms["NewReservation"]["customer_name"].value; // NewReservation 태그 안에 있는 customer_name의 value를 가져옴
	 var addr = document.forms["NewReservation"]["addr"].value; // NewReservation 태그 안에 있는 addr의 value를 가져옴
	 var telnum = document.forms["NewReservation"]["telnum"].value; // NewReservation 태그 안에 있는 telnum의 value를 가져옴
	 var in_name = document.forms["NewReservation"]["in_name"].value; // NewReservation 태그 안에 있는 in_name의 value를 가져옴
	 var memo = document.forms["NewReservation"]["memo"].value; // NewReservation 태그 안에 있는 memo의 value를 가져옴
	 
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
<c:choose>
	<c:when test="${duplicateKey eq true}">
		<script>
			alert("선택하신 방과 날짜는 이미 예약되어 있습니다.");
		</script>
		<form:form modelAttribute="NewReservation" method="POST" onsubmit="return validateForm()">
			<table class="secondTable">
				<tr>
					<td class="tdTwo">성명</td>
					<td class="tdEight">
						<form:input path="customer_name" type="text" value="${resort.customer_name}" 
						maxlength="16" placeholder="성함을 입력해주세요" required="true"/>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">예약일자</td>
					<td class="tdEight">
					<form:input id="Date" path="resv_date" placeholder="날짜를 선택해주세요"
						type="text" value="${resort.resv_date}" readonly="true" required="true"/>
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
								<option value="1" <c:if test="${resort.room eq 1}">selected="selected"</c:if> >VIP 룸</option>
								<option value="2" <c:if test="${resort.room eq 2}">selected="selected"</c:if> >비즈니스 룸</option>
								<option value="3" <c:if test="${resort.room eq 3}">selected="selected"</c:if> >스탠다드 룸</option>
							</select>
						</div>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">주소</td>
					<td class="tdEight">
						<form:input path="addr" type="text" value="${resort.addr}" style="width:320px;"
							placeholder="주소를 입력해주세요" maxlength="33" required="true"/>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">전화번호</td>
					<td class="tdEight">
						<form:input path="telnum" type="text" value="${resort.telnum}" 
						placeholder="전화번호를 입력해주세요" maxlength="13"
						pattern="\d{3}-\d{4}-\d{4}" title="000-0000-0000 형식으로 입력하세요" required="true"/>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">입금자명</td>
					<td class="tdEight">
						<form:input path="in_name" type="text" value="${resort.in_name}" 
						maxlength="16" placeholder="입금자명을 입력해주세요" required="true"/>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">남기실말</td>
					<td class="tdEight">
						<form:input path="memo" value="${resort.memo}" style="width : 320px;" 
						maxlength="50" placeholder="남기실 말을 입력해주세요" required="true"/>
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
		<form:form modelAttribute="NewReservation" method="POST" onsubmit="return validateForm()">
			<table class="secondTable">
				<tr>
					<td class="tdTwo">성명</td>
					<td class="tdEight">
						<form:input path="customer_name" type="text" value="" 
						maxlength="16" placeholder="성함을 입력해주세요"/>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">예약일자</td>
					<td class="tdEight"><form:input id="Date" path="resv_date" placeholder="예약날짜를 선택해주세요"
					type="text" value="" readonly="true" required="true"/> 
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
						value="" style="width:320px;" placeholder="주소를 입력해주세요" maxlength="33"/>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">전화번호</td>
					<td class="tdEight">
						<form:input path="telnum" type="text" value="" placeholder="전화번호를 입력해주세요" 
						maxlength="13" pattern="\d{3}-\d{4}-\d{4}" title="000-0000-0000 형식으로 입력하세요" required="true"/>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">입금자명</td>
					<td class="tdEight">
						<form:input path="in_name" type="text" value="" 
						maxlength="16" placeholder="입금자명을 입력해주세요" required="true"/>
					</td>
				</tr>
				<tr>
					<td class="tdTwo">남기실말</td>
					<td class="tdEight">
						<form:input path="memo" value="" style="width : 320px;" 
						maxlength="50" placeholder="남기실 말을 입력해주세요" required="true"/>
						<form:input path="write_date" type="hidden" value="<%=date%>" />
						<form:input path="processing" type="hidden" value="4" />
					</td>
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