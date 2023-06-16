<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.HashMap" %>
<html>
<head><title>내장 객체 - out</title></head>
<body>
    <%
    // 버퍼 내용 삭제하기
    out.print("출력되지 않는 텍스트");  // 버퍼에 저장  
    out.clearBuffer();  // 버퍼를 비움(윗 줄의 출력 결과 사라짐) 

    out.print("<h2>out 내장 객체</h2>");

    // 버퍼 크기 정보 확인
    out.print("출력 버퍼의 크기 : " + out.getBufferSize() + "<br>");
    out.print("남은 버퍼의 크기 : " + out.getRemaining() + "<br>"); 

    out.flush();  // 버퍼 내용 출력 
    out.print("flush 후 버퍼의 크기 : " + out.getRemaining() + "<br>");

    // 다양한 타입의 값 출력
    out.println(1+"<br>");
    out.println(false+"<br>");
    out.println('가');
    
	String str1 = "a";
	String str2 = "a";
    String str3 = new String("a"); // 여기서 new String은 자료형이 아니고 객체로 따져야 함
    String str4 = new String("a"); // 여기도 마찬가지
    
    if (str1 == str2) {
    	out.println(true+"입니다");
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