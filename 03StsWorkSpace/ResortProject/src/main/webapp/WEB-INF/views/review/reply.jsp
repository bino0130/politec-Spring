<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Reply</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> <!-- Modal에 값 넘겨주려면 선언해줘야함 -->
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
								<c:choose>
									<c:when test="${replyList.re_level eq 0}">
										<div class="comment-list">
											<div class="single-comment justify-content-between d-flex">
												<div class="user justify-content-between d-flex">
													<div class="desc">
														<h5><b style="color:black;">${replyList.reply_person}</b></h5>
														<p class="date" style="color:gray;">${replyList.reply_date}</p>
														<p class="comment">${replyList.reply_content}</p>
													</div>
												</div>
												<div class="reply-btn" style="display:flex;">
													<button class="btn-reply text-uppercase" data-toggle="modal" data-id="${replyList.re_id}"
													data-target="#writeReply" style="height:29.6px;">reply</button>
													
													<!-- 답글 모달 시작 -->
													<div class="modal fade" id="writeReply">
     													<div class="modal-dialog">
    														<div class="modal-content">
    														
      															<div class="modal-header" style="height:70px;">
        															<h4 class="modal-title">답글 달기</h4>
        															<button type="button" class="botton close" data-dismiss="modal" aria-label="Close" style="cursor:pointer;">
		          														<span aria-hidden="true">&times;</span>
        															</button>
      															</div>
      															
      															<form:form modelAttribute="secondReply" method="POST" onsubmit="">
      															<div class="modal-body">
																	<div style="margin-top:10px;">
																		<div class="form-group form-inline">
																			<div class="form-group col-lg-6 col-md-6 name">
																				<form:hidden path="root_id" value="${oneReview.review_id}"/>
																				<form:input path="reply_person" type="text" class="form-control" placeholder="Name"
																					onfocus="this.placeholder=''" onblur="this.placeholder='Name'" value=""
																					style=" background-color:#F1F1F1;"/>
																				<form:hidden path="reply_date" value="<%=dateTime%>"/>
																			</div>
																		</div>
																		<div class="form-group">
																			<form:textarea path="reply_content" class="form-control mb-10" rows="5" name="Message" 
																				placeholder="Messege" onfocus="this.placeholder=''" onblur="this.placeholder='Messege'"  
																				required="true" style="resize:none; background-color:#F1F1F1; width:450px; margin-left:15px;"></form:textarea>
																			<form:hidden path="re_level" value="1"/>
																			<form:hidden path="re_cnt" value="${re_cnt}"/>
																			<form:hidden path="re_id" value="${replyList.reply_id}"/>
																		</div>
																	</div>
																</div>
																	
	      														<div class="modal-footer">
    	     														<button type="submit" class="btn btn-primary" style="cursor:pointer;">작성</button>
          															<button type="button" class="btn btn-danger" data-dismiss="modal" style="cursor:pointer;">취소</button>
      															</div>
		      													</form:form>
    														</div>
  														</div>
													</div>
													<!-- 답글 모달 끝 -->
													
													<!-- Modal에 값 전달해주는 JavaScript 코드 시작 -->
													<script>
    													$(document).ready(function () {
        													$('.btn-reply').click(function () {
            													var dataId = $(this).data('id');
            													$('#writeReply').find('.modal-body input[name="re_id"]').val(dataId);
            													console.log(dataId);
        													});
    													});
													</script>
													<!-- Modal에 값 전달해주는 JavaScript 코드 끝 -->
													
													<sec:authorize access="hasRole('ROLE_ADMIN')">
														<a href="" class="btn-reply text-uppercase" data-toggle="modal" data-target="#deleteReply" style="height:29.6px;">delete</a>
														<div class="modal fade" id="deleteReply">
     														<div class="modal-dialog">
    															<div class="modal-content">
      																<div class="modal-header" style="height:70px;">
        																<h4 class="modal-title">댓글 삭제</h4>
        																<button type="button" class="botton close" data-dismiss="modal" aria-label="Close" style="cursor:pointer;">
          																	<span aria-hidden="true">&times;</span>
        																</button>
		      														</div>
      																<div class="modal-body" style="text-align:left;">
      																	<b style="color:black;">정말 삭제하시겠습니까?</b>
      																</div>
      																<div class="modal-footer">
         																<button type="button" class="btn btn-danger" 
																		onclick="location.href='${pageContext.request.contextPath}/admin/reply_delete?reply_id=${replyList.reply_id}'"
																		style="cursor:pointer;">삭제</button>
          																<button type="button" class="btn btn-primary" data-dismiss="modal" style="cursor:pointer;">취소</button>
		      														</div>
    															</div>
  															</div>
														</div>
													</sec:authorize>
												</div>
											</div>
										</div>
									</c:when>
								
									<c:otherwise>
										<div class="comment-list left-padding">
											<div class="single-comment justify-content-between d-flex">
												<div class="user justify-content-between d-flex">
													<div class="desc">
														<h5><b style="color:black;">${replyList.reply_person}</b></h5>
														<p class="date" style="color:gray;">${replyList.reply_date}</p>
														<p class="comment">${replyList.reply_content},${replyList.reply_id},${replyList.re_id}</p>
													</div>
												</div>
												<div class="reply-btn" style="display:flex;">
													<sec:authorize access="hasRole('ROLE_ADMIN')">
														<a href="" class="btn-reply text-uppercase" data-toggle="modal" data-target="#deleteReply" style="height:29.6px;">delete</a>
														<div class="modal fade" id="deleteReply">
     														<div class="modal-dialog">
    															<div class="modal-content">
		      														<div class="modal-header" style="height:70px;">
        																<h4 class="modal-title">댓글 삭제</h4>
        																<button type="button" class="botton close" data-dismiss="modal" aria-label="Close" style="cursor:pointer;">
          																	<span aria-hidden="true">&times;</span>
        																</button>
      																</div>
      																<div class="modal-body" style="text-align:left;">
      																	<b style="color:black;">정말 삭제하시겠습니까?</b>
		      														</div>
      																<div class="modal-footer">
         																<button type="button" class="btn btn-danger" 
																		onclick="location.href='${pageContext.request.contextPath}/admin/reply_delete?reply_id=${replyList.reply_id}'"
																		style="cursor:pointer;">삭제</button>
          																<button type="button" class="btn btn-primary" data-dismiss="modal" style="cursor:pointer;">취소</button>
      																</div>
    															</div>
		  													</div>
														</div>
													</sec:authorize>
												</div>
											</div>
										</div>
									</c:otherwise>
								</c:choose>
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