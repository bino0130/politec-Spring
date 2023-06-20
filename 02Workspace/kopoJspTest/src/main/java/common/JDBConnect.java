package common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletContext;

public class JDBConnect { 
	public Connection con; // DB 연결하는 역할
	public Statement stmt; // Parameter가 없는 쿼리문 -> 정적 쿼리문. 값이 변하지 않음
	public PreparedStatement psmt; // Parameter가 있는 쿼리문 -> 동적 쿼리문. 값이 변할 수 있음
	public ResultSet rs; // 쿼리문 실행 결과 저장
	
	public JDBConnect() {
		try {
			// 드라이버 로드
			Class.forName("oracle.jdbc.OracleDriver");
			
			// 드라이버 연결
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id = "kopo";
			String pwd = "1234";
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("접속 시도");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public JDBConnect(String driver, String url, String id, String pwd) { // parameter를 전달받는 JDBConnect
		try {
			// 드라이버 로드
			Class.forName(driver);
			
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("접속 시도 - web.xml에서 parameter 전달받아서 접속");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public JDBConnect(ServletContext application) {
		try {
			String driver = application.getInitParameter("OracleDriver");
			Class.forName(driver);
			
			String url = application.getInitParameter("OracleUrl");
			String id = application.getInitParameter("OracleId");
			String pwd = application.getInitParameter("OraclePwd");
			
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("접속 시도 - application 직접 접근");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() { // 연결 반납 - 자원을 반납
		try {
			if (rs != null) rs.close();
			if (psmt != null) psmt.close();
			if (stmt != null) stmt.close();
			if (con != null) con.close();
			System.out.println("자원 반납");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}