package com.kopo.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Service;

import com.kopo.domain.Book;

public interface BookService {
	// ��ü ���� ��� ����
		List<Book> getAllBookList();
		
		// �Ű������� ������ ������ ������ ����
		List<Book> getBookListByCategory(String category);
		
		// category & publisher�� ������ ������ ����
		// ex) localhost:8082/controller/books/filter/bookFilter;author=��Ʃ��� ���긮;category=�̼�
		// �� URL�� �Է��ϸ� �����ϴ� ��ϸ� ��ȯ�ǵ���
		Set<Book> getBookListByFilter(Map<String, List<String>> filter);
}