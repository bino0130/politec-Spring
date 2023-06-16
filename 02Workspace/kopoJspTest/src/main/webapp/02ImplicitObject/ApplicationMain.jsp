<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>web.xml 설정 값 읽어오기</h2>
	초기화 매개변수 : <%=application.getInitParameter("INIT_PARAM")%>
	
	<h2>서버 물리적 경로 읽기</h2>
	경로주소 : <%=application.getRealPath("/02ImplicitObject")%> <!-- context 루트 경로 제외한 경로 -->
	
	<h2>선언부 application 객체 사용</h2>
	<%! // 선언부에서는 application 객체를 활용할 수 없음. parameter 형태로 받아서 활용해야함
	public String useImplicitObject() { 
		return this.getServletContext().getRealPath("/02ImplicitObject");	
	}
	
	public String useImplicitObject(ServletContext app) {
		return app.getRealPath("/02ImplicitObject");
	}
	%>
	<ul>
		<li>this 사용 : <%=useImplicitObject()%></li>
		<li>내장객체 전달 : <%=useImplicitObject(application)%></li>
	</ul>
</body>
</html>