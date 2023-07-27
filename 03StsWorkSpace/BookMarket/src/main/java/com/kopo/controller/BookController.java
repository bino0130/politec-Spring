package com.kopo.controller;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
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
	
	// ex) localhost:8081/controller/books/filter/bookFilter;author=스튜디오 지브리;category=미술
	@GetMapping("/filter/{bookFilter}")
	public String requestBooksByFilter(
			@MatrixVariable(pathVar="bookFilter") Map<String, List<String>> bookFilter,
			Model model) {
		Set<Book> booksByFilter = bookService.getBookListByFilter(bookFilter);
		model.addAttribute("bookList", booksByFilter);
		System.out.println("bookFilter : " + bookFilter);
		return "books";
	}
	
	@GetMapping("/book")
	public String requestBookById(@RequestParam("id") String bookId, Model model) {
		Book bookById = bookService.getBookById(bookId);
		model.addAttribute("book", bookById);
		return "book";
	}
	
	@GetMapping("/add")
//	public String requestAddBookForm(Book book) {
	public String requestAddBookForm(@ModelAttribute("NewBook") Book book) {
		/*
		 * bookId
		 * name
		 * unitPrice
		 * author
		 * description <- textarea
		 * publisher
		 * category
		 * unitInStock
		 * releaseDate
		 * condition <- radioButton
		 */
		
		return "addBook";
	}
	
	@PostMapping("/add")
	public String submitAddNewBook(@ModelAttribute("NewBook") Book book) {
		MultipartFile bookImage = book.getBookImage();
		String saveName = bookImage.getOriginalFilename();
		File saveFile = new File("C:\\upload", saveName);
		
		if(bookImage != null && !bookImage.isEmpty()) {
			try {
				bookImage.transferTo(saveFile);
			} catch (Exception e) {
				throw new RuntimeException("이미지 업로드에 실패하였습니다." , e);
			}
		}
		
		bookService.setNewBook(book);
		return "redirect:/books"; // View Redirection - 웹 요청에 따라서 뷰 페이지 이동
		
		/*
		 * 화면 전환 방식
		 * 1. redirect
		 * - 요청 URL로 응답 뷰를 이동
		 * - 이때 이동할 URL에 다시 요청을 시도 -> 최초 요청은 무효
		 * : 폼에서 데이터를 입력받는 시스템, 세션 DB에 변화가 생기는 요청
		 * 
		 * 2. forward
		 * - 최초 요청 URL을 유지하면서 응답 뷰 페이지를 표현
		 * - 현재 페이지에서 이동할 URL로 정보가 그대로 전달 -> 최초 요청 정보가 유효 
		 * - 실제 페이지가 변경됬지만 사용자는 알 수 없음
		 * : 시스템 변화가 없는 단순 조회, 등등에 사용 
		 */
	}
	
	@ModelAttribute
	public void addAttribute(Model model) {
		model.addAttribute("addTitle", "신규 도서 등록");
	}
	
	// exam17 InitBinder 사용
	@InitBinder
	public void setsubTitle(WebDataBinder binder) {
		binder.setAllowedFields("bookId", "name", "imgPath", "name",
				"unitPrice", "author", "description", "publisher",
				"category", "unitsInstock", "releaseDate", "condition", "bookImage");
//		binder.setDisallowedFields("name");
	}
	
//	@GetMapping("/add")
//	public String requestAddBookForm(@RequestParam("id") String bookId, Model model) {
//		return "addBook";
//	}
}