package fileupload;

import java.sql.SQLException;
import java.util.List;
import java.util.Vector;

import common.DBConnPool;

public class MyfileDAO extends DBConnPool{
	/*
	 	form 데이터를 받아서 저장하는 insertFile 메서드
	 	public int insertFile(MyfileDTO dto)
	 	int applyResult = 0;
	 	..
	 	.. 쿼리문 작성
	 	.. 인파라미터 삽입
	 	.. 업데이트
	 	.. 
	 	..
	 	return applyResult;
	 */
	
	public int insertFile(MyfileDTO dto) {
		int applyResult = 0;
		try {
			String query = "insert into myfile ("
						+ "idx, name, title, cate, ofile, sfile)"
						+ "VALUES ("
						+ "seq_board_num.nextval, ?, ?, ?, ?, ?)";
			
			psmt = con.prepareStatement(query);
			psmt.setString(1,  dto.getName());
			psmt.setString(2,  dto.getTitle());
			psmt.setString(3,  dto.getCate());
			psmt.setString(4,  dto.getOfile());
			psmt.setString(5,  dto.getSfile());
			
			applyResult = psmt.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("insert 중 에러 발생");
			e.printStackTrace();
		}
		
		return applyResult;
	}
	
	public List<MyfileDTO> myFileList() {
		List<MyfileDTO> fileList = new Vector<MyfileDTO>();
		
		// 1. 쿼리문 작성 - 최신 게시물이 먼저 출력되도록 idx DESC로 정렬
		String query = "select * from myfile order by idx desc";
		
		// 2. 쿼리 실행
		try {
			psmt = con.prepareStatement(query);
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				MyfileDTO dto = new MyfileDTO();
				
				dto.setIdx(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setTitle(rs.getString(3));
				dto.setCate(rs.getString(4));
				dto.setOfile(rs.getString(5));
				dto.setSfile(rs.getString(6));
				dto.setPostdate(rs.getString(7));
				
				// 3. 목록 추가
				fileList.add(dto);
			}
		} catch (Exception e) {
			System.out.println("게시물 조회 중 예외 발생");
			e.printStackTrace();
		}
		
		// 목록 리턴
		return fileList;
	}
}