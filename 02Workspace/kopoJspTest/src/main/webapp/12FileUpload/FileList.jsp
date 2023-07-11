<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.List" %>
<%@ page import="fileupload.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>등록된 파일 목록 보기</h2>
<a href="FileUploadMain.jsp">파일 등록하기</a>
<%
/*
	hint) DAO.myFileList call-> 리스트가 반환 -> 반환되는 리스트를 출력
	
	테이블 columns name
	No/작성자/제목/카테고리/원본파일명/저장된파일명/작성일
*/
MyfileDAO dao = new MyfileDAO();
List<MyfileDTO> fileLists = dao.myFileList();
dao.close();
%>
<table border="1">
	<tr>
		<th>No</th><th>작성자</th><th>제목</th>
		<th>카테고리</th><th>원본파일명</th><th>저장된파일명</th><th>작성일</th>
		<th></th>
	</tr>
	<%
		for(MyfileDTO f : fileLists) {
	%>
	<tr>
		<td><%= f.getIdx() %></td>
		<td><%= f.getName() %></td>
		<td><%= f.getTitle() %></td>
		<td><%= f.getCate() %></td>
		<td><%= f.getOfile() %></td>
		<td><%= f.getSfile() %></td>
		<td><%= f.getPostdate() %></td>
		<td><a href="Download.jsp?oName=<%= URLEncoder.encode(f.getOfile(),"UTF-8") %>
			&sName=<%= URLEncoder.encode(f.getSfile(), "UTF-8") %>">[다운로드]</a></td>
	</tr>
	<%
		}
	%>
</table>
</body>
</html>