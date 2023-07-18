package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class ExampleController09 {
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
	
	
	// /exam09/abcd1234;category=������ -> abcd1234�� bookId
	@GetMapping("/exam09/{bookId}")
	public String requestMethod(@PathVariable String bookId, 
								@MatrixVariable String category, 
								Model model) {
		System.out.println("å�̸� : " + bookId);
		System.out.println("�з� : " + category);
		model.addAttribute("data", "å�̸� : " + bookId + "<br>" +
							"�з� : " + category);
//		model.addAttribute("data", "�з� : " + category);
//		model.addAttribute("data2", "���ǻ� : " + publisher);
		
		return "webpage06";
	}
}