<%@ page import="java.sql.*, javax.sql.*,java.io.*,java.util.*,java.text.*"%>
<%@ page import="common.JDBConnect" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC update</title>
</head>
<body>
<h2>회원 조회 - executeQuery() 함수 사용</h2> <!-- DB에 영향을 주지 않는 함수 -> Query()함수 사용 -->
<%
//DB 연결
JDBConnect jdbc = new JDBConnect();

//입력 데이터 준비
String id = "test1";
String pass = "1111";
String name = "테스트1";

//쿼리 생성
Statement stmt = jdbc.con.createStatement();
String sql2 = "select * from member";

//쿼리 작업 실시
ResultSet rset = stmt.executeQuery(sql2);

// 결과 확인
while(rset.next()) {
	String printId = rset.getString(1);
	String printPass = rset.getString(2);
	String printName = rset.getString(3);
	String printDate = rset.getString(4);

	out.println(String.format("%s %s %s %s", printId, printPass, printName, printDate) +"<br>");
}


//연결 닫기
jdbc.close();
%>
</body>
</html>