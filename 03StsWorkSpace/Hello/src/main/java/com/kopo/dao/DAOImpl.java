package com.kopo.dao;

import java.lang.reflect.Member;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.kopo.dto.ItemDTO;

@Repository
public class DAOImpl implements ItemDAO {
	private String id = "root";
	private String password = "kopoctc";
	private String dbQuery = "kopo10";
	private String url = "jdbc:mysql://localhost:33060/?useUnicode=true&characterEncoding=utf8&serverTimezone=Asia/Seoul&useSSL=false";
	
	public static void main(String[] args) {
		DAOImpl di = new DAOImpl();
		System.out.println(di.selectItem());
	}

	@Override
	public List<ItemDTO> selectItem() {
		List<ItemDTO> dtoList = new ArrayList<ItemDTO>();
		ItemDTO dto = new ItemDTO();
		try {
			Statement stmt = null;
			ResultSet rset = null;
			Connection connection = null;
			Class.forName("com.mysql.cj.jdbc.Driver"); // 직접 JDBC 드라이버 잡아주는 역할
			connection = DriverManager.getConnection(url, id, password);
	        connection.setCatalog(dbQuery); // DB 선택하기
	        stmt = connection.createStatement();
			rset = stmt.executeQuery("select * from itemList where id = 1");
			while(rset.next()) {
				dto.setId(rset.getInt(1));
				dto.setName(rset.getString(2));
				dto.setPrice(rset.getInt(3));
				dtoList.add(dto);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dtoList;
	}

	@Override
	public int insertItems(Member mb) {
		int num = 0;
		try {
			Statement stmt = null;
//			ResultSet rset = null;
			Connection connection = null;  
			Class.forName("com.mysql.cj.jdbc.Driver");
	        connection = DriverManager.getConnection(url, id, password);  
	        stmt = connection.createStatement();
			stmt.executeQuery("insert into itemList values (2, 'banana', 5000)");
			num = 1;
			stmt.close();
			connection.close();
			return num;
		} catch (Exception e){
			e.printStackTrace();
			return num;
		}
	}

	@Override
	public int insertItems() {
		int num = 0;
		try {
			Statement stmt = null;
			ResultSet rset = null;
			Connection connection = null;
			connection = DriverManager.getConnection(url, id, password);
			connection.setCatalog(dbQuery); // DB 선택하기
			stmt = connection.createStatement();
			stmt.executeUpdate("insert into itemList values (2, 'banana', 5000)");
			num = 1;
			return num;
		} catch (Exception e) {
			e.printStackTrace();
			return num;
		}
	}

	@Override
	public String getAllTheItems() {
		List<ItemDTO> ld = selectItem();
		int lengthOfList = ld.size();
		String result = "?";
		for(int i = 0; i < lengthOfList; i++) {
			result = result + ld.get(i) + " ";
		}
		return result;
	}
	
}