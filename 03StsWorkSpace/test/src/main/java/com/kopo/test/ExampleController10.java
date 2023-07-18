package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class ExampleController10 {
	/*
	 * �� ��û URL�� ���� �Ķ���� ���� ���޹޴� ��Ʈ���� ���� (matrix variable)
	 * context root/books/color;year=2023;month=07 // key, value �� ���ÿ� 2��
	 * context root/books;color=red,green,blue // key,value �ϳ��� �������� value ���ߺ���
	 * 
	 * @RequestMapping("��� ����")
	 * public String MethodName (@MatrixVariable ��Ʈ���� ����, ...) {}
	 * 
	 * @RequestMapping("��� ����")
	 * public String MethodName(@MatrixVariable (��Ʈ���� ����) �Ű�����, ...) {}
	 * 
	 * [�Ӽ� ����]
	 * defaultValue - �⺻��
	 * name - ��Ʈ���� ���� �̸�
	 * pathVar - ��Ʈ���� ������ �ִ� URI ��� ������ �̸� 
	 * required - ��Ʈ���� ������ �䱸�Ǵ��� ����
	 * value - ��Ʈ�������� 'name=value'���� name�� �ش��ϴ� ����
	 */
	
	
	// /exam10/abcd1234;author=ȫ�浿/category/���;author=�Ӳ���
	@GetMapping("/exam10/{bookId}/category/{category}")
	public String requestMethod(@MatrixVariable (value="author", pathVar="bookId") String q1, 
								@MatrixVariable (value="author", pathVar="category") String q2, 
								Model model) {
		System.out.println("�۰�1 : " + q1);
		System.out.println("�۰�2 : " + q2);
		model.addAttribute("data", "�۰�1 : " + q1 + "<br>" +
							"�۰�2 : " + q2);
//		model.addAttribute("data", "�з� : " + category);
//		model.addAttribute("data2", "���ǻ� : " + publisher);
		
		return "webpage06";
	}
}