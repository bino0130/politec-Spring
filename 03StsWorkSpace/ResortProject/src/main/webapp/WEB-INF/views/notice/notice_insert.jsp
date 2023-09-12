<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 공지사항 insert 관리자 권한 -->
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>공지사항 작성</title>
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
	 var title = document.forms["insertNoticeForm"]["notice_title"].value; // insertNoticeForm 태그 안에 있는 notice_title의 value를 가져옴
	 var content = document.forms["insertNoticeForm"]["notice_content"].value; // insertNoticeForm 태그 안에 있는 notice_content의 value를 가져옴
	 
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
<div class="whole-wrap">
	<div class="container">
		<div class="section-top-border">
			<div class="row">
				<div class="col-lg-8 col-md-8">
					<h3 class="mb-30 title_color">Make Notice</h3>
					<form:form modelAttribute="insertNoticeForm" method="POST"
							onsubmit="return validateForm()">
						<div class="input-group-icon mt-10">
							<div class="icon" style="z-index: 1">
								<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
							</div>
							<form:input path="notice_title" type="text" value="" placeholder="Title" onfocus="this.placeholder=''" 
							onblur="this.placeholder='Title'" required="true" class="single-input" maxlength="23"/>
						</div>
						<div class="input-group-icon mt-10">
							<div class="icon" style="z-index: 1">
								<i class="fa fa-calendar-check-o" aria-hidden="true"></i>
							</div>
							<form:input class="single-input" path="notice_date" type="text" value="<%=date%>" readonly="true"/>
						</div>
						<div class="mt-10">
							<form:textarea path="notice_content" class="single-textarea"
								placeholder="Message" onfocus="this.placeholder = ''"
								onblur="this.placeholder = 'Message'" value=""
								required="true" maxlength="500" style="height:300px;"/>
						</div>
						<div class="mt-10" style="text-align: right;">
							<input type="button" value="취소" class="genric-btn danger radius"
								onclick="window.location.href='notice_list'"/>
							<input type="submit" value="쓰기" class="genric-btn info radius"/>
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