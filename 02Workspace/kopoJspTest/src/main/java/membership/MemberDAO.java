package membership;

import java.sql.SQLException;

import common.JDBConnect;

// DB - CRUD
public class MemberDAO extends JDBConnect {

	// DB의 연결이 완료된 DAO 객체 생성
	public MemberDAO(String drv, String url, String id, String pw) {
		super(drv, url, id, pw);
	}
	
	// 아이디/패스워드 일치하는 회원 정보를 반환
	public MemberDTO getMemberDTO(String uid, String upass) {
		MemberDTO dto = new MemberDTO();
		String query = "select * from member where id=? and pass = ?"; // inparameter 쿼리문
		
		try {
			psmt = con.prepareStatement(query);
			psmt.setString(1, uid);
			psmt.setString(2, upass);
			rs = psmt.executeQuery();
			
			if(rs.next()) {
				// 쿼리문 결과 데이터
				dto.setId(rs.getString("id"));
				dto.setPass(rs.getString("pass"));
				dto.setName(rs.getString("name"));
				dto.setRegidate(rs.getString("regidate"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return dto; // dto 객체 반환
	}
}