<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 공지사항 update 관리자 권한 -->
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<style>
.updateNoticeTable {
	width : 600px;
	height : 500px;
	border : 1px solid black;
	border-collapse : collapse;
	margin : auto;
}

.bottom {
	width : 600px;
	height : 0px;
	bordedr : 0px; 
	margin : auto;
}

.one {
	width : 10%;
	border : 1px solid black;
	text-align : center;
}

.nine {
	width : 90%;
	border : 1px solid black;
}

.submit {
 	background-color : skyblue;
	border-color : skyblue;
	border-radius : 5px;
}
</style>
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
	 var title = document.forms["updateNotice"]["notice_title"].value; // insertNoticeForm 태그 안에 있는 notice_title의 value를 가져옴
	 var content = document.forms["updateNotice"]["notice_content"].value; // insertNoticeForm 태그 안에 있는 notice_content의 value를 가져옴
	 
	 if(InputCheck(title) === false) {
		 alert("제목을 입력해주세요");
		 return false;
	 }
	 if(InputCheck(content) === false) {
		 alert("내용를 입력해주세요");
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
<form:form modelAttribute="updateNotice" method="POST" onsubmit="return validateForm()">
	<table class = "updateNoticeTable">
			<tr>
				<td class="one" style="background-color : skyblue;">제목</td>
				<td class="nine" style="height : 7%; text-align : left; padding-left : 10px;">
					<form:input style="width : 400px;" path="notice_title" type="text" maxlength="23" 
					placeholder="제목을 입력해주세요" required="true"/>
				</td>
			</tr>
			<tr>
				<td class="one" style="background-color : skyblue;">일자</td>
				<td class="nine" style="height : 7%; text-align : left; padding-left : 10px;">
					<%=date%>
					<form:input path="notice_date" type="hidden" value="" readonly="true"/>
				</td>
			</tr>
			<tr>
				<td class="one" style="background-color : skyblue;">내용</td>
				<td class="nine" style="text-align : left; padding-left : 10px;">
					<form:textarea path="notice_content" style="resize:none; border:0px;"
						cols="70" rows="28" class="form-control" maxlength="500" 
						placeholder="내용을 입력해주세요" required="true"></form:textarea>
				</td>
			</tr>
		</table>
		<table class="bottom">
			<tr>
				<td style="border:0px; text-align : right;">
					<input class="submit" type="submit" value="수정">
				</td>
			</tr>
		</table>
</form:form>
</body>
</html>