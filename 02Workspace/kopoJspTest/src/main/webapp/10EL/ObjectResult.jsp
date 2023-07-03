<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EL로 객체 전달받기</title>
</head>
<body>
<h2>영역을 통해서 전달된 객체</h2>
<ul>
	<li> Person 객체 => 이름 : ${ personObj.name }, 나이 : ${ personObj.age }</li>
	<li> String 객체 => ${ requestScope.stringObj }</li>
	<li> Integer 객체 => ${ integerObj }</li>
</ul>

<h2>매개변수로 전달된 값 읽기</h2>
<ul><!-- .(점), ''(홀따옴표), ""(쌍타옴표)로 접근 가능  -->
	<li> ${ param.secondNum }</li>
	<li> ${ param.firstNum + param.secondNum}</li> <!-- EL태그 안에서 진행되는 사칙연산은 숫자로 인식 -->
	<li>${ param.firstNum } + ${ param.secondNum }</li> <!-- EL태그 밖에서 진행되는 사칙연산은 문자열로 인식 -->
	<li>${ param['firstNum'] } + ${ param['secondNum'] }</li> <!-- EL태그를 가지고 홀따옴표를 -->
	<li>${ param["firstNum"] } + ${ param["secondNum"] }</li>
	<li>${ param['"firstNum"'] } + ${ param['"secondNum"'] }</li> <!-- 문자열을 받는 상황이라면 이렇게 사용 가능 -->
</ul>
</body>
</html>