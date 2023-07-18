package com.kopo.repository;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.stereotype.Repository;

import com.kopo.domain.Book;

//private String bookId;		// ����ID
//private String name;		// ������
//private int unitPrice;		// ����
//private String author;		// ����
//private String description;	// ����
//private String publisher;	// ���ǻ�
//private String category;	// �з�
//private String unitsInstock;// ����
//private String releaseDate;	// ������
//private String condition;	// �ű� or �߰� or ����å

@Repository
public class BookRepositoryImpl implements BookRepository {
	private List<Book> listOfBooks = new ArrayList<Book>();
	
	public BookRepositoryImpl() {
		Book book1 = new Book("9791141108601", "��Ʃ��� ���긮 ��ü������ ����(������)",  27000);
		book1.setAuthor("��Ʃ��� ���긮");
		book1.setDescription("���� �ǹ����� �ǹ� �ȿ� �ִ� ������� ������ �ִ� ���Դϴ�. �� �ȿ� ��� ����� �ൿ�� ���� ��� ��� ���� �ֺ��� ���� ���� ���� ���� ���� ������ �ְ�, �� ���ǰ����� �ǹ��� ����Ʈ�� ������ �α��� ������ �޷� �ִٰ� �սô�. ������ �̷��� ���� �ʶ����� ���Զ�, ó�� �������� �� ������ �󸶳� ���� �αٰŸ��� �մ��� �������� ���ڴٰ� ���������� �����, �׶� ����������� �մ� �鿡�� ������ ������ �־����� �����, �̷����� ������ �մϴ�. �׷��� �մ��� �߱��� ���� ��������, �׷��� ���̿� ������ ���� �ɷ��� ���� ���� �ݴ� ����̶������. �׷� ������ �ϴ� ���� ����� �ǹ��� �ƴϴ��� ��������ϰ� �ǹ��� �� �� ������. �� �ڴ�� ���� ��� ���� ����������.\n- �̾���Ű �Ͼ߿� -");
		book1.setPublisher("�л깮ȭ��");
		book1.setCategory("�̼�");
		book1.setUnitsInstock("��Ȯ��");
		book1.setReleaseDate("2023-07-11");
		book1.setCondition("�ű�");
		book1.setImgPath("img4.jpg");
		
		Book book2 = new Book("9791168473690", "���̳��� ����ħ",  6480);
		book2.setAuthor("���̳�(sayNo)");
		book2.setDescription("�ʸ� ���̳�� ������� �ϰ� �ִ� �͵鿡 ���� No��� ���϶�(Say No)�� ���̴�. 2023�� ���� ���ڻ� õ�� ���� �ڻ갡��. 1955���. �ǻ��� �峲���� �¾ ���� �� �������� �ƹ����� ����ħ�� �޾Ҵ�. �ƹ����� �� ����� ���� ��� ���� �� ����ϸ鼭 ģ�θ� ��� ���ǰ� ���������� ��Ȱ�� ũ�� �ô޷ȴ�.\r\n" + 
				"\r\n" + 
				"�� 3�г� �� �ǰ��� ���� ������ �����ϰ� ģ�� �ƹ��԰� ģ������ ���ڸ� �޾� ����� ������ ���� �� �����Ͽ� ���� 4�� ���� �����ϰ� �Դ��ߴ�. �����纴���� �����ϴ� ���� ���δ� �ε��� ���� ������ ������ ������ �þҰ�, ���� �� ������ο� �����Ͽ� ��8�� �� �޸�������� �б��� �����Ͽ���. �к� ������ ������ ������ �����Ͽ� ���ܡ��Խÿ����п��������� ���� �ߴ�.\r\n" + 
				"\r\n" + 
				"��ȥ �Ŀ��� ���� �ʿ� �� �̻� ���� �� ���� ��ʵ��� �ϰ� ���ο� �����ϸ鼭 �Ƿ���������ó������ǻ�͡������⡤������������� ������ �ڻ��� ������ �����ߴ�. �� �ڻ��� ��ȯ���ڡ��ε����š��ֽ� ������ ������װ� �п�����������������ġ�� ��� ���� Ȧ�� ������ �ڻ��� �̷��ߴ�.\r\n" + 
				"\r\n" + 
				"�������� �ٱ��� ����� �ƽþ� ���� �λ������� �����Ͽ��� ����� 70�� ������ �����ߴ�. �������� �濵�Ͽ��� ȸ����� ����ž�� ��������� �޾�����, ����濵����ĺ��� �����⵵ �ߴ�.\r\n" + 
				"\r\n" + 
				"2003����ʹ� ����� �ٿ� �԰� �������� ���������ǡ���ȭ������ ����. ���� �����ϴ� ���� ������ �ذ��ϴ� ��, ����� ����ġ�� ����ġ�� ���̸�, ���� �Ⱦ��ϴ� ���� ���� ���ڸ�, ��� ��ġ����, ������ ô�ϴ� �ڵ��� ����. �ų� �ʾ� ������ �ҵ漼�� 2000����� 5�� �̻� ���̳� ������ �����Ͽ��� 2001����ʹ� ���� ������ �����ϰ� �ִ�.");
		book2.setPublisher("���̿�");
		book2.setCategory("����");
		book2.setUnitsInstock("��Ȯ��");
		book2.setReleaseDate("2023-03-02");
		book2.setCondition("�ű�");
		book2.setImgPath("img5.jpg");
		
		Book book3 = new Book("9791192836188", "���� ������ ���� ����",  15750);
		book3.setAuthor("���ù�");
		book3.setDescription("���� ���η� ��� �ø� ����� ���ֿ� ���� ����, �ΰ��� ��ȸ�� �����ϴ� ���\r\n" + 
				"���� ���� � �ǹ̷� ä�� ���ΰ�?��\r\n" + 
				"\r\n" + 
				"���� ����, ���İ� ������ ���ο� �з�����\r\n" + 
				"������ ������ �ι����� ������ �Բ��ϴ� ���� ����\r\n" + 
				"�������� ���������� ������ �� �ִ�!��");
		book3.setPublisher("������");
		book3.setCategory("�ι���");
		book3.setUnitsInstock("��Ȯ��");
		book3.setReleaseDate("2023-06-23");
		book3.setCondition("�ű�");
		book3.setImgPath("img6.jpg");
		
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
				// equalsIgnoreCase : ��ҹ��� ������� ���ڿ��� ��
				booksByCategory.add(book);
			}
		}
		
		return booksByCategory;
	}

	
	// ex) localhost:8082/controller/books/filter/bookFilter;author=��Ʃ��� ���긮;category=�̼�
	@Override
	public Set<Book> getBookListByFilter(Map<String, List<String>> filter) {
		// author & category�� ������ ������ ����
		Set<Book> booksByAuthor = new HashSet<Book>();
		Set<Book> booksByCategory = new HashSet<Book>();
		
		Set<String> booksByFilter = filter.keySet(); // keySet: ��ü key ���
		
		// author ���� �۾�
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
					List<Book> list = getBookListByCategory(category); // ���� �޼��� Ȱ��
					booksByCategory.addAll(list);
				}
			}
		}
		
		booksByCategory.retainAll(booksByAuthor);
		return booksByCategory;
	}
	
}