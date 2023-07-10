<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%
/*
XML 문서를 처리하기 위한 목적, XML 파싱, 출력, control, ...
Xtensible markup language = 확장이 가능한 마크업 언어
개발자가 직접 태그를 정의할 수 있고, 
데이터를 작성할 수도 있고,
저장할 수 있고,
전달할 수 있음

out, parse, forEach, if, choose => XML tags
XML 문서에 접근하기 위해서 Xpath를 사용
*/
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Xml.jsp</title>
</head>
<body>
<c:import url="../inc/BookList.xml" var="booklist" charEncoding="UTF-8" />
<x:parse xml="${ booklist }" var="blist" />

<h4> 파싱 </h4>
제목 : <x:out select="$blist/booklist/book[1]/name" /> <br>
저자 : <x:out select="$blist/booklist/book[1]/author" /> <br>
가격 : <x:out select="$blist/booklist/book[1]/price" /> <br>
<%
// <!-- EL ${} != Xpath $ -->
%>
<h4> 파싱2 </h4>
<table border="1">
   <tr>
      <th>제목</th> <th>저자</th> <th>가격</th>
   </tr>
   <x:forEach select="$blist/booklist/book" var="item">
   <tr>
      <td><x:out select="$item/name"/></td>
      <td><x:out select="$item/name"/></td>
      <td><x:choose>
            <x:when select="$item/price >= 20000">
               2만원 이상<br>
            </x:when>
            <x:otherwise>
               2만원 미만 <br>
            </x:otherwise>
         </x:choose>
   </tr>
   </x:forEach>
</table>
</body>
</html>