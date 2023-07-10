<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
/*
Formatting tag - 흔하게 사용 x
해외 라이브러리 + 시간(timestamp)이 중요한 데이터를 수집할 경우
증권 데이터 + 해외 선물 시장 주가 데이터 + FX마진(환율데이터)

숫자포맷 = formatNumber, parseNumber
날짜포맷 = formatDate, parseDate
time-zone 포맷 = setTimeZone, timeZone
locale 설정 등등 = setLocale, requestEncoding

<fmt:formatNumber value="출력할 숫자" type="문자열 양식 패턴 - 퍼센티지, 통화(currency)" var="변수"
		groupingUsed="구분기호(,), true/false로 구분" pattern="숫자패턴" scope="영역">
1,000,000 = groupingUsed

<fmt:parseNumber value="파싱문자열" type="양식" var="변수"
	integerOnly="정수만 파싱, true/false로 구분" pattern="패턴" scope="영역">
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>etc) Fmt1.jsp</title>
</head>
<body>
<h4>숫자 포맷 설정</h4>
<c:set var="number1" value="12345"/>
콤마 O : <fmt:formatNumber value="${number1 }"/><br>
콤마 X : <fmt:formatNumber value="${number1 }" groupingUsed="false"/><br>
<fmt:formatNumber value="${number1 }" type="currency" var="printNum1"/>
통화기호 : ${printNum1 }<br>
<fmt:formatNumber value="0.2" type="percent" var="printNum2"/>
퍼센트 : ${printNum2 }<br>

<h4> 문자열을 숫자로 변경 </h4>
<c:set var="number2" value="6,848.02"/>
<fmt:parseNumber value="${number2 }" pattern="00,000.00" var="printNum3"/><br>
소수점까지 : ${printNum3 }
<fmt:parseNumber value="${number2 }" integerOnly="true" var="printNum4"/><br>
정수부분만 : ${printNum4 }
</body>
</html>