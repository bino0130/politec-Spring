<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, java.text.*" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.css">
<%-- <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css"> --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.css">

<!-- Main CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/responsive.css">

<!-- 이 부분은 footer로 나중에 옮기기 -->
 <script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script> 
<script src="${pageContext.request.contextPath}/resources/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ajaxchimp.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.js"></script> --%>
<script src="${pageContext.request.contextPath}/resources/vendors/nice-select/js/jquery.nice-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/mail-script.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/stellar.js"></script>
<script src="${pageContext.request.contextPath}/resources/vendors/lightbox/simpleLightbox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>

<!-- 달력 오픈소스 datepicker 시작 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css"/>  
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<!-- 달력 오픈소스 datepicker 끝 -->

<meta charset="UTF-8">
<title>예약하기</title>
<style>
/*.secondTable {
	border : 1px solid black;
	width : 500px; 
	height : 500px;
	margin : auto;
}
.tdTwo {
	border : 1px solid black;
	width : 20%;
}
.tdEight {
	border : 1px solid black;
	width : 80%;
	text-align : left;
}*/
</style>

<script>
function trimSpace(input) { // 공백 trim하는 함수
	return input.replace(/^\s+/, ''); // 공백이 있으면 없앰	 
}
 
function InputCheck(input) { // 입력값 체크하는 함수
	 var inputValue = input; // 입력 받는 변수 혹은 데이터베이스에서 가져온 값 등
	 var pattern = /^(?!(\s)*$)$/;
	 
	 if(inputValue.trim().length === 0) { // inputValue.trim()의 길이가 0이라면 alert
		 //alert("내용을 입력하세요");
	 	return false;
	 }
}
 
function validateForm() { // 데이터 전달하는 form 체크
	 var name = document.forms["NewReservation"]["customer_name"].value; // NewReservation 태그 안에 있는 customer_name의 value를 가져옴
	 var addr = document.forms["NewReservation"]["addr"].value; // NewReservation 태그 안에 있는 addr의 value를 가져옴
	 var telnum = document.forms["NewReservation"]["telnum"].value; // NewReservation 태그 안에 있는 telnum의 value를 가져옴
	 var in_name = document.forms["NewReservation"]["in_name"].value; // NewReservation 태그 안에 있는 in_name의 value를 가져옴
	 var memo = document.forms["NewReservation"]["memo"].value; // NewReservation 태그 안에 있는 memo의 value를 가져옴
	 
	 if(InputCheck(name) === false) {
		 alert("성함을 입력해주세요");
		 return false;
	 }
	 if(InputCheck(addr) === false) {
		 alert("주소를 입력해주세요");
		 return false;
	 }
	 if(InputCheck(telnum) === false) {
		 alert("전화번호를 입력해주세요");
		 return false;
	 }
	 if(InputCheck(in_name) === false) {
		 alert("입금자명을 입력해주세요");
		 return false;
	 }
	 if(InputCheck(memo) === false) {
		 alert("남기실 말을 입력해주세요");
		 return false;
	 }
 }
</script>
</head>
<body>

<!-- include top 대신 코드 때려박음 -->
<header class="header_area" style="display:contents">
	<div class="container">
		<nav class="navbar navbar-expand-lg navbar-light">
			<!-- Brand and toggle get grouped for better mobile display -->
				<a class="navbar-brand logo_h" href="${pageContext.request.contextPath}/main">
					<img src="${pageContext.request.contextPath}/resources/img/logo.png" alt="">
				</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                </button>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                	<ul class="nav navbar-nav menu_nav ml-auto">
                    	<li class="nav-item active submenu dropdown">
                    		<a class="nav-link" href="${pageContext.request.contextPath}/main">Home</a>
                    	</li>
                        <li class="nav-item submenu dropdown">
                        	<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        		About us
                        	</a>
                        	<ul class="dropdown-menu">
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/b_01">찾아오시는 길</a></li>
                        	</ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                        	<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        		Accomodation
                        	</a>
                        	<ul class="dropdown-menu">
                    			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/EconomyDouble">Economy Double</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/SingleDeluxe">Single Deluxe</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/DoubleDeluxe">Double Deluxe</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/HoneyMoon-Suite">Honeymoon Suit</a></li>
                    		</ul>
                        </li>
                        <li class="nav-item submenu dropdown"><a class="nav-link" href="gallery.html">Spots</a></li>
                        <li class="nav-item submenu dropdown">
                         	<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                         		Reservation
                         	</a>
                    		<ul class="dropdown-menu">
                    			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/ReservationList">예약 현황</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/ReservationPage_1">예약하기</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/d_03">예약 변경</a></li>
                    		</ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                        	<a href="#" class="nav-link">Posts</a>
                        	<ul class="dropdown-menu">
                    			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/notice_list">공지사항</a></li>
                        		<li class="nav-item"><a class="nav-link" href="blog-single.html">이용 후기</a></li>
                    		</ul>
                        </li>
                    </ul>
                </div> 
        </nav>
    </div>
</header>
<!-- include top 대신 코드 때려박음 -->
<% 
	Calendar cal = Calendar.getInstance();
	SimpleDateFormat dformat = new SimpleDateFormat("yyyy-MM-dd");
	String date = dformat.format(cal.getTime());
%>
	<div class="whole-wrap">
		<div class="container">
			<div class="section-top-border">
				<div class="row">
					<div class="col-lg-8 col-md-8">
						<h3 class="mb-30 title_color">Room Reservation</h3>
						<form:form modelAttribute="NewReservation" method="POST" onsubmit="return validateForm()">
							<div class="input-group-icon mt-10">
								<div class="icon" style="z-index:1">
									<i class="fa fa-user" aria-hidden="true"></i>
								</div>
								<form:input path="customer_name" type="text" value="" placeholder="Name" onfocus="this.placeholder = ''"
									onblur="this.placeholder='Enter Name'" required="true" class="single-input"/>
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon" style="z-index:1">
									<i class="fa fa-calendar-check-o" aria-hidden="true"></i>
								</div>
								<form:input id="Date" path="resv_date" type="text" placeholder="Reservation Date" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Reservation Date'" readonly="true" required="true" class="single-input"/>
								<script>
									$(function() {
										$("#Date").datepicker({
											minDate : new Date(),
											maxDate : '+365d',
											dateFormat : 'yy-mm-dd',
											showMonthAfterYear : true,
											dayNamesMin : ['월', '화', '수', '목', '금', '토', '일' ], // 요일의 한글 형식.
											monthNamesShort : ['1월', '2월', '3월', '4월', '5월', '6월', '7월',
																'8월', '9월', '10월', '11월', '12월' ] // 월의 한글 형식.
											});
										});
								</script>
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon" style="z-index:1">
									<i class="fa fa-bed" aria-hidden="true"></i>
								</div>
								<div class="form-select" id="default-select">
									<select style="display: none;">
										<option value="1">Economy Double</option>
										<option value="2">Single Deluxe</option>
										<option value="3">Double Deluxe</option>
										<option value="4">HoneyMoon Suite</option>
									</select>
									<div class="nice-select" tabindex="0">
										<span class="current">Room</span>
										<ul class="list">
											<li data-value="1" class="option">Economy Double</li>
											<li data-value="2" class="option">Single Deluxe</li>
											<li data-value="3" class="option">Double Deluxe</li>
											<li data-value="4" class="option">HoneyMoon Suite</li>
										</ul>
									</div>
								</div>
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon" style="z-index:0">
									<i class="fa fa-thumb-tack" aria-hidden="true"></i>
								</div>
								<form:input path="addr" type="text" value="" placeholder="Address" onfocus="this.placeholder = ''"
									onblur="this.placeholder='Address'" class="single-input"/>
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon" style="z-index:0">
									<i class="fa fa-mobile" aria-hidden="true"></i>
								</div>
								<form:input path="telnum" type="text" value="" placeholder="Phone Number" onfocus="this.placeholder=''"
									onblur="this.placeholder='Phone Number'" required="true" class="single-input"/>
							</div>
							<div class="input-group-icon mt-10">
								<div class="icon" style="z-index:0">
									<i class="fa fa-dollar" aria-hidden="true"></i>
								</div>
								<form:input path="in_name" type="text" placeholder="Payer's Name" onfocus="this.placeholder=''"
									onblur="this.placeholder='Payer's Name'" required="true" class="single-input"/>
							</div>
							<div class="mt-10">
								<textarea class="single-textarea" placeholder="Message"
									onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Message'" required=""></textarea>
							</div>
						</form:form>
					</div>
				</div>
			</div><!-- section top border 끝 -->
		</div>
	</div>
	<!-- footer 코드 다 때려박기 -->
<footer class="footer-area section_gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-3  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<div>
							<span><img style="width:20px;" src="${pageContext.request.contextPath}/resources/img/placeholder.png"/></span>
							<span style="margin-left:10px;" class="footer_title">Location</span>
						</div>
						<div style="font-size:17px; padding-left:5px;">536 Haean-ro, Gangneung-si, Gangwon-do, South Korea (Anhyeon-dong)</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<div>
							<span class="icon" style="z-index:1; color:#ffc107;"><i class="fa fa-phone" aria-hidden="true"></i></span>
							<span style="margin-left:10px;" class="footer_title">Reception</span>
						</div>
						<div style="font-size:17px; padding-left:5px;">033-640-6282</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<div>
							<span class="icon" style="z-index:1; color:#ffc107;"><i class="fa fa-bus" aria-hidden="true"></i></span>
							<span style="margin-left:10px;" class="footer_title">Shuttle Service</span>
						</div>
						<div style="font-size:17px; padding-left:5px;">033-640-6287</div>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 col-sm-6">
					<div class="single-footer-widget instafeed">
						<div>
							<span class="icon" style="z-index:1; color:#ffc107;"><i class="fa fa-cutlery" aria-hidden="true"></i></span>
							<span style="margin-left:10px;" class="footer_title">Restaurant</span>
						</div>
						<div style="font-size:17px; padding-left:5px;">033-640-6288</div>
					</div>
				</div>
			</div>
			<div class="border_line"></div>
			<div
				class="row footer-bottom d-flex justify-content-between align-items-center">
				<p class="col-lg-8 col-sm-12 footer-text m-0">
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
					Copyright © 2014 Royal Hotel. ALL RIGHTS RESERVED.
					<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
				</p>
				<div class="col-lg-4 col-sm-12 footer-social">
					<a href="https://www.facebook.com" target="_blank"><i class="fa fa-facebook"></i></a> 
					<a href="https://www.twitter.com" target="_blank"><i class="fa fa-twitter"></i></a> 
					<a href="https://www.instagram.com" target="_blank"><i class="fa fa-instagram"></i></a>
				</div>
			</div>
		</div>
	</footer>
<!-- footer 코드 다 때려박기 -->
</body>
</html>