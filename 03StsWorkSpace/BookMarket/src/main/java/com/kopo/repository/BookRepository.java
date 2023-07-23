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
	
	// author & category가 동일한 도서만 리턴
	// ex) localhost:8082/controller/books/filter/bookFilter;author=스튜디오 지브리;category=미술
	// 위 URL을 입력하면 조건에 부합하는 목록만 리턴
	Set<Book> getBookListByFilter(Map<String, List<String>> filter);
	
	// bookId로 book 찾는 메서드
	Book getBookById(String bookId);
	
	// 신규 도서 추가
	void setNewBook(Book book);
}