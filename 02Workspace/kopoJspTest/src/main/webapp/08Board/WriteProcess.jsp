<%@ page import="model1.BoardDTO" %>
<%@ page import="model1.BoardDAO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="./IsLoggedIn.jsp" %>    
<%
// 폼 넘어온 값 받기
String title = request.getParameter("title");
String content = request.getParameter("content");

// 폼 값 -> DTO 저장
BoardDTO dto = new BoardDTO();
dto.setTitle(title);
dto.setContent(content);
dto.setId(session.getAttribute("UserId").toString());

// DAO 객체를 통해 DB에 DTO를 저장
BoardDAO dao = new BoardDAO(application);
int iResult = dao.insertWrite(dto);
dao.close();

// 화면 전환
if (iResult == 1) {
	response.sendRedirect("List.jsp"); // 목록 화면으로 전환
} else {
	JSFunction.alertBack("글쓰기에 실패하셨습니다.", out);
}
%>