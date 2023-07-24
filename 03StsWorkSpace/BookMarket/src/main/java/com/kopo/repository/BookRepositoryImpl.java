package com.kopo.repository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.kopo.domain.Book;

//private String bookId;		// 도서ID
//private String name;		// 도서명
//private int unitPrice;		// 가격
//private String author;		// 저자
//private String description;	// 설명
//private String publisher;	// 출판사
//private String category;	// 분류
//private String unitsInstock;// 재고수
//private String releaseDate;	// 출판일
//private String condition;	// 신규 or 중고 or 전자책

@Repository
public class BookRepositoryImpl implements BookRepository {
	private List<Book> listOfBooks = new ArrayList<Book>();
	
	public BookRepositoryImpl() {
		Book book1 = new Book("9791141108601", "스튜디오 지브리 입체건축전 도록(복각판)",  27000);
		book1.setAuthor("스튜디오 지브리");
		book1.setDescription("나는 건물보다 건물 안에 있는 사람에게 관심이 있는 편입니다. 물 안에 사는 사람의 행동… 예를 들어 어느 도로 주변에 오래 전에 문을 닫은 듯한 상점이 있고, 그 간판건축의 건물에 페인트가 벗겨진 싸구려 간판이 달려 있다고 합시다. 지금은 이렇게 낡고 초라해진 가게라도, 처음 시작했을 때 주인은 얼마나 가슴 두근거리며 손님이 많았으면 좋겠다고 생각했을까 라든지, 그때 개업기념으로 손님 들에게 무엇을 나누어 주었을까 라든지, 이런저런 생각을 합니다. 그런데 손님의 발길이 점점 뜸해지고, 그러는 사이에 주인이 병에 걸려서 가게 문을 닫는 모습이라든지…. 그런 생각을 하다 보면 대단한 건물이 아니더라도 흥미진진하게 건물을 볼 수 있지요. 내 멋대로 망상에 잠겨 있을 뿐이지만요.\n- 미야자키 하야오 -");
		book1.setPublisher("학산문화사");
		book1.setCategory("미술");
		book1.setUnitsInstock("미확인");
		book1.setReleaseDate("2023-07-11");
		book1.setCondition("신규");
		book1.setImgPath("IMG4.jpg");
		
		Book book2 = new Book("9791168473690", "세이노의 가르침",  6480);
		book2.setAuthor("세이노(sayNo)");
		book2.setDescription("필명 세이노는 현재까지 믿고 있는 것들에 대해 No라고 말하라(Say No)는 뜻이다. 2023년 기준 순자산 천억 원대 자산가다. 1955년생. 의사의 장남으로 태어나 서너 살 유년기부터 아버지의 가르침을 받았다. 아버지가 전 재산을 사기로 모두 날린 후 사망하면서 친부모를 모두 여의고 고교시절부터 생활고에 크게 시달렸다.\r\n" + 
				"\r\n" + 
				"고교 3학년 때 건강과 가난 때문에 휴학하고 친구 아버님과 친구들의 투자를 받아 사업을 했으나 실패 후 복학하여 고교를 4년 만에 졸업하고 입대했다. 공군사병으로 복무하는 동안 군부대 부동산 관리 업무와 도서관 관장을 맡았고, 제대 후 영어공부에 몰두하여 미8군 내 메릴랜드대학 분교에 입학하였다. 학비를 벌고자 보따리 장사부터 시작하여 과외·입시영어학원·번역업 등을 했다.\r\n" + 
				"\r\n" + 
				"결혼 후에는 거의 십여 년 이상 쉬는 날 없이 밤늦도록 일과 공부에 몰두하면서 의류업·정보처리·컴퓨터·음향기기·유통업·무역업 등으로 자산을 모으기 시작했다. 그 자산을 외환투자·부동산경매·주식 등으로 증대시켰고 학연·혈연·지연·정치적 배경 없이 홀로 현재의 자산을 이룩했다.\r\n" + 
				"\r\n" + 
				"세계적인 다국적 기업의 아시아 지역 부사장직도 겸임하였고 사업상 70여 개국을 여행했다. 국내에서 경영하였던 회사들은 수출탑과 산업훈장을 받았으며, 인재경영대상후보로 오르기도 했다.\r\n" + 
				"\r\n" + 
				"2003년부터는 사업을 줄여 왔고 광범위한 독서·음악·영화감상을 즐긴다. 가장 좋아하는 것은 문제를 해결하는 것, 사람을 가르치고 깨우치는 것이며, 가장 싫어하는 것은 접대 술자리, 기업 정치가들, 부자인 척하는 자들의 블러핑. 매년 십억 원대의 소득세를 2000년까지 5년 이상 세이노 개인이 납부하였고 2001년부터는 가족 단위로 납부하고 있다.");
		book2.setPublisher("데이원");
		book2.setCategory("성공");
		book2.setUnitsInstock("미확인");
		book2.setReleaseDate("2023-03-02");
		book2.setCondition("신규");
		book2.setImgPath("IMG5.jpg");
		
		Book book3 = new Book("9791192836188", "문과 남자의 과학 공부",  15750);
		book3.setAuthor("유시민");
		book3.setDescription("과학 공부로 길어 올린 생명과 우주에 관한 진실, 인간과 사회를 이해하는 방법\r\n" + 
				"“내 삶을 어떤 의미로 채울 것인가?”\r\n" + 
				"\r\n" + 
				"지금 여기, 지식과 교양의 새로운 패러다임\r\n" + 
				"과학의 사유와 인문학의 성찰이 함께하는 지적 여정\r\n" + 
				"“문과도 과학적으로 생각할 수 있다!”");
		book3.setPublisher("돌베개");
		book3.setCategory("인문학");
		book3.setUnitsInstock("미확인");
		book3.setReleaseDate("2023-06-23");
		book3.setCondition("신규");
		book3.setImgPath("IMG6.jpg");
		
		listOfBooks.add(book1);
		listOfBooks.add(book2);
		listOfBooks.add(book3);
	}

	@Override
	public List<Book> getAllBookList() {
		return listOfBooks;
	}

	@Override
	public List<Book> getBookListByCategory(String category) {
		List<Book> booksByCategory = new ArrayList<Book>();
		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (category.equalsIgnoreCase(book.getCategory())) {
				// equalsIgnoreCase : 대소문자 관계없이 문자열을 비교
				System.out.println("Bookcategory:" + book.getCategory());
				booksByCategory.add(book);
			}
		}
		return booksByCategory;
	}

	
	// ex) localhost:8082/controller/books/filter/bookFilter;author=스튜디오 지브리;category=미술
	@Override
	public Set<Book> getBookListByFilter(Map<String, List<String>> filter) {
		System.out.println("filter : " + filter);
		// author & category가 동일한 도서만 리턴
		Set<Book> booksByAuthor = new HashSet<Book>();
		Set<Book> booksByCategory = new HashSet<Book>();
		
		Set<String> booksByFilter = filter.keySet(); // keySet: 전체 key 출력
		
		// author, category 검출 작업
		if (booksByFilter.contains("author")) {
			for (int i = 0; i < filter.get("author").size(); i++) {
				String authorName = filter.get("author").get(i);
				for (int j = 0; j < listOfBooks.size(); j++) {
					Book book = listOfBooks.get(j);
					
					if (authorName.equalsIgnoreCase(book.getAuthor())) {
						booksByAuthor.add(book);
					}
				}
			}
			
			if (booksByFilter.contains("category")) {
				for (int i = 0; i < filter.get("category").size(); i++) {
					String category = filter.get("category").get(i);
					List<Book> list = getBookListByCategory(category); // 만든 메서드 활용
					booksByCategory.addAll(list);
				}
			}
		}
		
		booksByCategory.retainAll(booksByAuthor);
		return booksByCategory;
	}

	@Override
	public Book getBookById(String bookId) {
		Book bookInfo = null;
		for (int i = 0; i < listOfBooks.size(); i++) {
			Book book = listOfBooks.get(i);
			if (book != null && book.getBookId() != null && book.getBookId().equals(bookId)) {
				bookInfo = book;
				break;
			}
		}
		if (bookInfo == null) {
			throw new IllegalArgumentException("도서의 ID를 찾을 수 없습니다 : " + bookId);
		}
		
		return bookInfo;
	}

	@Override
	public void setNewBook(Book book) {
		listOfBooks.add(book);
	}
	
}