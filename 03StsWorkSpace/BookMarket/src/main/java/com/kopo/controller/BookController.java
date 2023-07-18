package com.kopo.controller;

import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
//	@GetMapping
//	public String requestAllBooks(Model model) {
//		List<Book> list = bookService.getAllBookList();
//		model.addAttribute("bookList", list);
//		return "books";
//	}
	
	@GetMapping("/all")
	public ModelAndView requestBook () {
		ModelAndView mav = new ModelAndView();
		List<Book> list = bookService.getAllBookList();
		mav.addObject("bookList", list);
		mav.setViewName("books");
		
		return mav;
	}
	
	@GetMapping("/{category}") // exam08 사용 방법 2
	public String requestBooksByCategory(@PathVariable("category") String bookCategory
											, Model model) {
		List<Book> booksByCategory = bookService.getBookListByCategory(bookCategory);
		model.addAttribute("bookList", booksByCategory);
		return "books";
	}
	
	// ex) localhost:8082/controller/books/filter/bookFilter;author=스튜디오 지브리;category=미술
	@GetMapping("/filter/{bookFilter}")
	public String requestBooksByFilter(
			@MatrixVariable(pathVar="bookFilter") Map<String, List<String>> bookFilter,
			Model model) {
		Set<Book> booksByFilter = bookService.getBookListByFilter(bookFilter);
		model.addAttribute("bookList", booksByFilter);
		return "books";
	}
	
	@GetMapping("/book")
	public String requestBookById(@RequestParam("id") String bookId, Model model) {
		Book bookById = bookService.getBookById(bookId);
		model.addAttribute("book", bookById);
		return "book";
	}
}