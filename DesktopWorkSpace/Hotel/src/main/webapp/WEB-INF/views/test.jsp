<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<!-- 공지사항 view 관리자 권한 -->
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>리뷰 열람</title>
</head>
<body>
<% 
	Calendar calendar = Calendar.getInstance();
	SimpleDateFormat dformatHour = new SimpleDateFormat("yyyy-MM-dd");
	String dateTime = dformatHour.format(calendar.getTime());
%>
<%@ include file="./top.jsp"%>
<a class="btn btn-outline-success my-2 my-sm-0" href=""
						data-toggle="modal" data-target="#reply">로그인</a>

<div class="modal" id="reply">
		<div class="modal-dialog">
			<div class="modal-content" style="width:730px;">
				<!--  modal header -->
				<div class="modal-header">
					<h4 class="modal-title">Leave a Reply</h4>
				</div>

				<div class="container">
					<div class="row">
						<div class="col-lg-8 posts-list">
							<div class="comment-form">
								<form:form modelAttribute="newSecondReply" method="POST" onsubmit="">
									<div class="form-group form-inline">
										<div class="form-group col-lg-6 col-md-6 name">
											<form:hidden path="root_id" value="${oneReview.review_id}"/>
											<form:input path="reply_person" type="text" class="form-control" placeholder="Name"
											onfocus="this.placeholder=''" onblur="this.placeholder='Name'"/>
											<form:hidden path="reply_date" value="<%=dateTime%>"/>
										</div>
									</div>
									<div class="form-group">
										<form:textarea path="reply_content" class="form-control mb-10" rows="5" name="Message" 
										placeholder="Messege" onfocus="this.placeholder=''" onblur="this.placeholder='Messege'"  
										required="true" style="resize:none;"></form:textarea>
										<form:hidden path="re_level" value="0"/>
										<form:hidden path="re_cnt" value="1"/>
									</div>
								<input type="submit" class="primary-btn button_hover" value="Post Comment"
								style="cursor:pointer;"/>	
							</form:form>
						</div>
					</div>
				</div>
			</div>
				
			</div>
		</div>
	</div>
<%@ include file="./footer.jsp"%>
</body>
</html>