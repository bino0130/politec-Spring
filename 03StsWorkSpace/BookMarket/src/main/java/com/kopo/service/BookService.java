package com.kopo.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.kopo.domain.Book;

public interface BookService {
	List<Book> getAllBookList();
}