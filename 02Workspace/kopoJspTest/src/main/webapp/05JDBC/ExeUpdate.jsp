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
<h2>회원 추가 - executeUpdate() 함수 사용</h2> <!-- DB에 영향을 주는 함수 -> Update()함수 사용 -->
<%
// DB 연결
JDBConnect jdbc = new JDBConnect();

// 입력 데이터 준비
String id = "test1";
String pass = "1111";
String name = "테스트1";

// 쿼리 생성
String sql = "insert into member values (?,?,?, sysdate)"; // ?가 inparameter
PreparedStatement psmt = jdbc.con.prepareStatement(sql);
psmt.setString(1,id);
psmt.setString(2,pass);
psmt.setString(3,name);

// 쿼리 작업 실시
int inResult = psmt.executeUpdate(); // insert는 DB에 영향을 주므로 update() 사용
out.println(inResult + "row 행 입력 완료");

// 연결 닫기
jdbc.close();
%>
</body>
</html>