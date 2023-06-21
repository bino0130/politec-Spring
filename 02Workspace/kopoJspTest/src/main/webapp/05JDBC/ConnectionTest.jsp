<%@ page import="common.DBConnPool" %>
<%@ page import="common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>데이터베이스 연결 테스트</title>
</head>
<body>
<h2>JDBC TEST 1</h2>
<%
JDBConnect jdbc1 = new JDBConnect(); // 접속 시도
jdbc1.close(); // 해제 시도
%>

<h2>JDBC TEST 2</h2>
<%
String driver = application.getInitParameter("OracleDriver");
String url = application.getInitParameter("OracleUrl");
String id = application.getInitParameter("OracleId");
String pwd = application.getInitParameter("OraclePwd");

JDBConnect jdbc2 = new JDBConnect(driver, url, id, pwd); // 접속 시도
jdbc2.close(); // 해제 시도
%>

<h2>JDBC TEST 3</h2> 
<%
JDBConnect jdbc3 = new JDBConnect(application); // 접속 시도 (어플리케이션을 직접 넘김)
jdbc3.close(); // 해제 시도
%>

<h2>JDBC TEST 4</h2>
<%
DBConnPool jdbc4 = new DBConnPool(); // 접속 시도
jdbc4.close(); // 해제 시도
%>
</body>
</html>