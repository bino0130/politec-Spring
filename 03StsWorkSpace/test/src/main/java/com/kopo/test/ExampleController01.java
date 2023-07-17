package com.kopo.test;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/exam01", method=RequestMethod.GET)
public class ExampleController01 {
	/*
	 * @RequestMapping
	 * 
	 * value = �⺻ ���� ����� �̸�
	 * method = ������ http ��û ��� (GET, POST, head, options, put, delete, trace)
	 * name = ���� �̸� ����
	 * params = ���ε� ��û �Ű�����
	 * path = ��� ���� url (���� ȯ�濡���� ����)
	 * 
	 * ��� 2���� ����
	 * 1. Ŭ���� ������ ����
	 * 2. �޼��� ������ ����
	 * 
	 */
	
	@RequestMapping
	public void requestMethod() {
		System.out.println("@RequestMapping ����");
		System.out.println("�� ��û�� /exam01");
	}
}