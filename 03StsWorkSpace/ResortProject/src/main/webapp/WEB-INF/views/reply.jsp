<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reply</title>
</head>
<body>
<% 
	Calendar calendar = Calendar.getInstance();
	SimpleDateFormat dformatHour = new SimpleDateFormat("yyyy-MM-dd");
	String dateTime = dformatHour.format(calendar.getTime());
%>
<section class="blog_area single-post-area">
	<div class="container">
		<div style="display:flex; flex-direction:column; align-items:center; justify-content:center;">
			<div class="row">
			<div class="col-lg-8 posts-list">
				<div class="comments-area" style="width:700px; background-color:white;">
					<h4>Comments</h4>
					<c:choose>
						<c:when test="${empty replyList}">
							<p style="text-align:center;">댓글이 없습니다.</p>
						</c:when>
						<c:otherwise>
							<c:forEach items="${replyList}" var="replyList">
								<div class="comment-list">
									<div class="single-comment justify-content-between d-flex">
										<div class="user justify-content-between d-flex">
											<div class="desc">
												<h5><b style="color:black;">${replyList.reply_person}</b></h5>
												<p class="date">${replyList.reply_date}</p>
												<p class="comment">${replyList.reply_content}</p>
											</div>
										</div>
										<div class="reply-btn">
											<a href="" class="btn-reply text-uppercase" data-toggle="modal" data-target="#reply">reply</a>
										</div>
									</div>
								</div>
							</c:forEach>
						</c:otherwise>
					</c:choose>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-lg-8 posts-list">
					<div class="comment-form" style="background-color:white;">
						<h4>Leave a Reply</h4>
						<form:form modelAttribute="newReply" method="POST" onsubmit="">
							<div class="form-group form-inline">
								<div class="form-group col-lg-6 col-md-6 name">
									<form:hidden path="root_id" value="${oneReview.review_id}"/>
									<form:input path="reply_person" type="text" class="form-control" placeholder="Name"
									onfocus="this.placeholder=''" onblur="this.placeholder='Name'" 
									style=" background-color:#F1F1F1;"/>
									<form:hidden path="reply_date" value="<%=dateTime%>"/>
								</div>
							</div>
							<div class="form-group">
								<form:textarea path="reply_content" class="form-control mb-10" rows="5" name="Message" 
								placeholder="Messege" onfocus="this.placeholder=''" onblur="this.placeholder='Messege'"  
								required="true" style="resize:none; background-color:#F1F1F1;"></form:textarea>
								<form:hidden path="re_level" value="0"/>
								<form:hidden path="re_cnt" value="0"/>
							</div>
							<input type="submit" class="primary-btn button_hover" value="Post Comment"
							style="cursor:pointer;"/>	
						</form:form>
					</div>
				</div>
			</div>
		</div>
		</div>
</section>
</body>
</html>