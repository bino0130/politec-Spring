<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*, java.text.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약상황</title>
<style>
.oneTable {
	border : 1px solid black;
	width : 500px;
	margin : auto;
}

.printCal {
	border : 1px solid black;
	width : 20%;
}

.printDate {
	border : 1px solid black;
	width : 10%;
}

.printRoom {
	border : 1px solid black;
}
</style>
</head>
<body>
<%@ include file="top.jsp"%>
<% 
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
	String korDayOfWeek = "";
%>
<table class="oneTable">
<%
	for (int i = 0; i < 30; i++) {
		int dayOfWeek = cal.get(Calendar.DAY_OF_WEEK);
		String date = dformat.format(cal.getTime());
%>
<tr>
<%
		switch(dayOfWeek) {
		case 1 :
			korDayOfWeek = "일";
			break;
		case 2 :
			korDayOfWeek = "월";
			break;
		case 3 :
			korDayOfWeek = "화";
			break;
		case 4 :
			korDayOfWeek = "수";
			break;
		case 5 :
			korDayOfWeek = "목";
			break;
		case 6 :
			korDayOfWeek = "금";
			break;
		case 7 :
			korDayOfWeek = "토";
			break;
		}
%>
<%
if(korDayOfWeek.equals("토") || korDayOfWeek.equals("일")) {
%>
<td class="printCal"><div style="color:red;"><%=date%></div></td>
<td class="printDate"><div style="color:red;"><%=korDayOfWeek%></div></td>
<%
} else {
%>
<td class="printCal"><div><%=date%></div></td>
<td class="printDate"><div><%=korDayOfWeek%></div></td>
<%
}
%>
<td class="printRoom">VIP 룸</td>
<td class="printRoom">비즈니스 룸</td>
<td class="printRoom">스탠다드 룸</td>
</tr>
<%
		cal.add(cal.DATE, + 1);
	}
%>
</table>
</body>
</html>