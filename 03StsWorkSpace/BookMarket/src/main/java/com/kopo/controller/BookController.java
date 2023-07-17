package com.kopo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kopo.domain.Book;
import com.kopo.service.BookService;

@Controller
@RequestMapping("/books")
public class BookController {
	@Autowired
	private BookService bookService;
	
//	@RequestMapping(value = "/books", method=RequestMethod.GET)
//	@RequestMapping
	@GetMapping
	public String requestBookList (Model model) {
		List<Book> list = bookService.getAllBookList();
		model.addAttribute("bookList", list);
		return "books";
	}
	
//	@RequestMapping(value="/all")
	@GetMapping
	public String requestAllBooks(Model model) {
		List<Book> list = bookService.getAllBookList();
		model.addAttribute("bookList", list);
		return "books";
	}
}