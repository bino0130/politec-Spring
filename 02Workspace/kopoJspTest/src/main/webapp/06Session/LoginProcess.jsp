<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="membership.MemberDAO, membership.MemberDTO" %>

<%
// 로그인 폼에서 입력된 아이디와 비밀번호
String userId = request.getParameter("user_id");
String userPwd = request.getParameter("user_pw");

// web.xml에서 가져온 INIT_PARAM으로 db연결
String oracleDriver = application.getInitParameter("OracleDriver");
String oracleURL = application.getInitParameter("OracleUrl");
String oracleId = application.getInitParameter("OracleId");
String oraclePwd = application.getInitParameter("OraclePwd");

// 회원 테이블 DAO를 이용해서 DTO 정보를 리턴받기
MemberDAO dao = new MemberDAO(oracleDriver, oracleURL, oracleId, oraclePwd);
MemberDTO memberDTO = dao.getMemberDTO(userId, userPwd);
dao.close();

// 로그인 성공 유무 확인 후 처리
if (memberDTO.getId() != null) { // 로그인 성공
	session.setAttribute("UserId", memberDTO.getId());
	session.setAttribute("UserName", memberDTO.getName());
	response.sendRedirect("LoginForm.jsp");
} else { // 로그인 실패
	request.setAttribute("LoginErrorMsg", "로그인 오류");
	request.getRequestDispatcher("LoginForm.jsp").forward(request, response);
}
%>