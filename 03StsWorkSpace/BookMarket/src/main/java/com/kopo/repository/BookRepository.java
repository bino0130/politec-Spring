package com.kopo.repository;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.kopo.domain.Book;

public interface BookRepository {
	// 전체 도서 목록 리턴
	List<Book> getAllBookList();
	
	// 매개변수와 동일한 종류의 도서만 리턴
	List<Book> getBookListByCategory(String category);
	
	// category & publisher가 동일한 도서만 리턴
	// ex) localhost:8082/controller/books/filter/bookFilter;author=스튜디오 지브리;category=미술
	// 위 URL을 입력하면 부합하는 목록만 반환되도록
	Set<Book> getBookListByFilter(Map<String, List<String>> filter);
}