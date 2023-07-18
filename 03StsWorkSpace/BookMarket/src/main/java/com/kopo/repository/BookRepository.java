package com.kopo.repository;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.kopo.domain.Book;

public interface BookRepository {
	// ��ü ���� ��� ����
	List<Book> getAllBookList();
	
	// �Ű������� ������ ������ ������ ����
	List<Book> getBookListByCategory(String category);
	
	// category & publisher�� ������ ������ ����
	// ex) localhost:8082/controller/books/filter/bookFilter;author=��Ʃ��� ���긮;category=�̼�
	// �� URL�� �Է��ϸ� �����ϴ� ��ϸ� ��ȯ�ǵ���
	Set<Book> getBookListByFilter(Map<String, List<String>> filter);
}