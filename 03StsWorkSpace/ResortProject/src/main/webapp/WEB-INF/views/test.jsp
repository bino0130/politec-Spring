<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 공지사항 update 관리자 권한 -->
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>공지사항 수정</title>
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
<%@ include file="./top.jsp"%>
<% 
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
	String date = dformat.format(cal.getTime());
%>
<div class="whole-wrap">
	<div class="container">
		<div class="section-top-border">
			<div class="progress-table-wrap">
				<div class="progress-table">
					<form:form modelAttribute="updateNotice" method="POST" onsubmit="return validateForm()">
						<div class="table-head" style="text-align:center;">
							<div class="serial">제목</div>
							<form:input path="notice_title" type="text" placeholder="Title" onfocus="this.placeholder=''" 
								onblur="this.placeholder='Title'" required="true" class="single-input" maxlength="50"
								style="background-color:#F1F1F1; width:600px;"/>
						</div>
						<hr>
						<div class="table-head" style="text-align:center;">
							<div class="serial" style="padding-left:35px;">일자</div>
							<form:input class="single-input" path="notice_date" type="text" value="<%=date%>" readonly="true"/>
						</div>
						<hr>
						<div class="table-head" style="text-align:center; height:300px;">
							<div class="serial">내용</div>
							<div style="text-align:left; width:600px; font-weight:500; color:black;">
								<form:textarea path="notice_content" class="single-textarea"
									placeholder="Message" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Message'" required="true"
									maxlength="500" style="height:300px; width:600px; 
									background-color:#F1F1F1;"/>
							</div>
						</div>
						<div class="table-head" style="text-align: right;">
							<div class="serial"></div>
							<div style="text-align:right; width:600px;">
								<div class="mt-10" style="text-align: right;">
									<input type="submit" value="수정" class="genric-btn info radius"/>
								</div>
							</div>
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
</div>
<%@ include file="./footer.jsp"%>
</body>
</html>