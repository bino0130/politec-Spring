package model1;

import java.util.List;
import java.util.Map;
import java.util.Vector;

import javax.servlet.ServletContext;

import common.JDBConnect;

public class BoardDAO extends JDBConnect{
	
	public BoardDAO(ServletContext application) {
		super(application);
	}
	
	public int selectCount(Map<String, Object> map) {
		// 검색 후 조건에 맞는 게시물 개수를 리턴
		int totalCount = 0;
		String query = "select count(*) from board";
		if(map.get("searchWord") != null) {
			query += " where " + map.get("searchField") + " "
					+ " like '%" + map.get("searchWord") + "%'";
			}
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			rs.next(); // 커서의 위치가 첫번째 컬럼으로 이동
			totalCount = rs.getInt(1); // 첫번째 칼럼에서 값 가져오기
		} catch (Exception e) {
			System.out.println("게시물 개수 구하는 중 에러 발생");
			e.printStackTrace();
		}
	
		return totalCount;
	}
	
	public List<BoardDTO> selectList(Map<String, Object> map) {
		List<BoardDTO> bbs = new Vector<BoardDTO>(); // 결과 담을 변수
		
		String query = "select * from board";
		
		if(map.get("searchWord") != null) {
			query += " where " + map.get("searchField") + " "
					+ " like '%" + map.get("searchWord") + "%'";
		}
		query += " order by num desc";
		
		try {
			stmt = con.createStatement();
			rs = stmt.executeQuery(query);
			
			while (rs.next()) {
				BoardDTO dto = new BoardDTO();
				dto.setNum(rs.getString("num"));
				dto.setTitle(rs.getString("title"));
				dto.setContent(rs.getString("content"));
				dto.setPostdate(rs.getDate("postdate"));
				dto.setId(rs.getString("id"));
				dto.setVisitcount(rs.getString("visitcount"));
				
				bbs.add(dto);
			}
		} catch (Exception e) {
			System.out.println("게시물 조회 중 에러 발생");
			e.printStackTrace();
		}
		
		return bbs;
	}
}