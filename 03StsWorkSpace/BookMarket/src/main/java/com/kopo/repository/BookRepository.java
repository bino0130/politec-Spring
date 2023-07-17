package com.kopo.repository;

import java.util.List;

import com.kopo.domain.Book;

public interface BookRepository {
	List<Book> getAllBookList();
}