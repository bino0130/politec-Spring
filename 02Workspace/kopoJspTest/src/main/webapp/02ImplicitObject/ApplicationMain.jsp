<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>web.xml ���� �� �о����</h2>
	�ʱ�ȭ �Ű����� : <%=application.getInitParameter("INIT_PARAM")%>
	
	<h2>���� ������ ��� �б�</h2>
	����ּ� : <%=application.getRealPath("/02ImplicitObject")%> <!-- context ��Ʈ ��� ������ ��� -->
	
	<h2>����� application ��ü ���</h2>
	<%! // ����ο����� application ��ü�� Ȱ���� �� ����. parameter ���·� �޾Ƽ� Ȱ���ؾ���
	public String useImplicitObject() { 
		return this.getServletContext().getRealPath("/02ImplicitObject");	
	}
	
	public String useImplicitObject(ServletContext app) {
		return app.getRealPath("/02ImplicitObject");
	}
	%>
	<ul>
		<li>this ��� : <%=useImplicitObject()%></li>
		<li>���尴ü ���� : <%=useImplicitObject(application)%></li>
	</ul>
</body>
</html>