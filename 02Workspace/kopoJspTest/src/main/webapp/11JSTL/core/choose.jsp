<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var = "number" value = "100"/>

<h5>choose 태그로 값을 체크</h5>
<c:choose>
	<c:when test = "${number mod 2 eq 0 }">
		${number  }는 짝수입니다
	</c:when>
	<c:when test="${number mod 2 eq 1 }">
		${number }은 홀수입니다
	</c:when>
	<c:otherwise>
		${number  }는 자연수가 아닙니다
	</c:otherwise>
</c:choose>

<h5>평균값 출력</h5>
<form>
	국어 : <input type="text" name="kor"/><br/>
	영어 : <input type="text" name="eng"/><br/>
	수학 : <input type="text" name="math"/><br/>
	
	<input type="submit" value = "평균 점수 구하기"/>
</form>

<c:if test="${ not (empty param.kor or empty param.eng or empty param.math) }">
	<c:set var="avg" value="${ (param.kor + param.eng+ param.math)/3 }"/>
	평균점수 = ${avg }
	<c:choose>
		<c:when test="${avg >= 90 }"> a학점</c:when>
		<c:when test="${avg >= 80 }" >b학점</c:when>
		<c:when test="${avg >= 70 }" >c학점</c:when>
		<c:when test="${avg >= 60 }" >d학점</c:when>
		<c:otherwise>f학점</c:otherwise>
	</c:choose>
	입니다
</c:if>
	
</body>
</html>