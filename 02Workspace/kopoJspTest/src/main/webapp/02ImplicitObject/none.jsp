<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
String str1 = "a";
String str2 = "a";
String str3 = new String("a"); // ���⼭ new String�� �ڷ����� �ƴϰ� ��ü�� ������ ��
String str4 = new String("a"); // ���⵵ ��������

if (str1 == str2) {
	out.println(true+"�Դϴ�");
} else {
	out.println(false);
}

if (str3.equals(str4)) {
	out.println(true);
} else {
	out.println(false);
}

HashMap<Integer, Integer> map1 = new HashMap<Integer, Integer>();
HashMap<Integer, Integer> map2 = new HashMap<Integer, Integer>();
map1.put(1, 10);
map1.put(2, 20);
map1.put(3, 30);
	
map2 = map1;

map1.put(1, 20);
map2.put(3, 10);

out.println(map1);
out.println(map2);
%>
</body>
</html>