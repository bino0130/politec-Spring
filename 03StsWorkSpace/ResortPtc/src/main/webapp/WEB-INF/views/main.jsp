<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%
// 마지막 방문일을 저장하고 있는 쿠키를 저장할 객체
Cookie lastDate = null;

// 화면에 출력할 메세지를 저장할 문자열 변수
String msg = "";

// 마지막 방문일을 저장하고 있는 쿠키가 존재하는지 구별하는 변수
boolean found = false;

// 현재 시간을 저장
String newValue = "" + System.currentTimeMillis();

// 쿠키를 얻는다.
Cookie[] cookies = request.getCookies();

// 마지막 방문일을 정하고 있는 쿠키를 검색
if(cookies != null) {
	for(int i = 0; i < cookies.length; i++) {
		lastDate = cookies[i];
		
		if(lastDate.getName().equals("lastdateCookie")) {
			found = true;
			break;
		}
	}
}

// 처음 방문일 경우 새 쿠키 생성
if (!found) { // if (found = false)
	msg = "첫 방문이시군요 ! 환영합니다.";

	// 쿠키 객체를 생성
	lastDate = new Cookie("lastdateCookie", newValue);
	
	// 쿠키 속성값을 설정
	lastDate.setMaxAge(365 * 24 * 60 * 60); // 365일
	lastDate.setPath("/");
	
	// 쿠키를 추가
	response.addCookie(lastDate);
} else { // 이미 방문한 적이 있는 브라우저(클라이언트)라면
	
	// 이전 방문시간을 알아내어 long형 변수 conv에 저장
	long conv = new Long(lastDate.getValue()).longValue();

	// 방문시간을 출력할 수 있도록 msg 변수에 저장
	Date date = new Date(conv);
	String year = date.getYear() + 1900 + "년 ";
	String month = date.getMonth() + 1 + "월 ";
	String day = date.getDate() + "일 ";
	String hour = date.getHours() + "시 ";
	String minute = date.getMinutes() + "분 ";
	msg = "최근 방문 일시는 " + year + month + day + hour + minute + "입니다";
	
	// 쿠키에 새 값을 추가
	lastDate.setValue(newValue);
	
	// 쿠키를 추가
	response.addCookie(lastDate);
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>조아 리조트에 오신 것을 환영합니다.</title>
<style>
#mainDiv {
	width : 100%;
	height : 80%;
	text-align : center;
}
</style>
</head>
<body>
<%@ include file="top.jsp"%>
<div id="mainDiv">
	<img src="${pageContext.request.contextPath}/resources/img/Resort.jpg" width=400 height=350>
	<br><h2>조아 리조트로 놀러오셔요</h2>
	<h2><%=msg %></h2>
</div>
</body>
</html>