package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.MatrixVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/home")
public class ExampleController12 {
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
	
	// /exam12/abcd1234;publisher=���̹�;name=����ȸ��/category/������;publisher=īī��;author=�Ѹ�
	@GetMapping("/exam12/{bookId}/category/{category}")
	public String requestMethod
		(@MatrixVariable MultiValueMap<String, String> matrixVars,
		 @MatrixVariable (pathVar="category") MultiValueMap<String, String> matrixVars2,
								Model model) {
		System.out.println(matrixVars);
		System.out.println(matrixVars2);
		model.addAttribute("data", matrixVars + "<br>" + matrixVars2);
//		model.addAttribute("data", "�з� : " + category);
//		model.addAttribute("data2", "���ǻ� : " + publisher);
		
		return "webpage06";
	}
}