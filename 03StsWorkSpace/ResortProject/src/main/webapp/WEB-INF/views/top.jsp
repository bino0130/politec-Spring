<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<!-- top 부분에 CSS 적용 -->
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/linericon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/font-awesome.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/bootstrap-datepicker/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/nice-select/css/nice-select.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/vendors/owl-carousel/owl.carousel.min.css">
<!-- Main CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/responsive.css">
<!-- top 부분에 CSS 적용 -->
<meta charset="UTF-8">
<title>Royal Hotel</title>
</head>
<body>
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
							<sec:authorize access="isAnonymous()">
								<li class="nav-item submenu">
									<a class="nav-link" href="${pageContext.request.contextPath}/login">LogIn</a>
								</li>
							</sec:authorize>
							
							<sec:authorize access="hasRole('ROLE_ADMIN')">
								<li class="nav-item submenu">
		                    		<a class="nav-link" id="logoutLink" href="${pageContext.request.contextPath}/logout">LogOut</a>
		                    		<script>
		                    			document.getElementById('logoutLink').addEventListener('click', function(event) {
		                    				event.preventDefault();
		                    				var form = document.createElement('form');
		                    				form.method = 'post';
		                    				form.action = '${pageContext.request.contextPath}/logout';
		                    				var csrfInput = document.createElement('input');
		                    				csrfInput.type = 'hidden';
		                    				csrfInput.name = '${_csrf.parameterName}';
		                    				csrfInput.value= '${_csrf.token}';
		                    				form.appendChild(csrfInput);
		                    				
		                    				document.body.appendChild(form);
		                    				form.submit();
		                    			});
		                    		</script>
        		            	</li>
							</sec:authorize>
                        <li class="nav-item submenu dropdown">
                        	<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        		About us
                        	</a>
                        	<ul class="dropdown-menu">
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/howToCome">찾아오시는 길</a></li>
                        	</ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                        	<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                        		Accomodation
                        	</a>
                        	<ul class="dropdown-menu">
                    			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/EconomySingle">Economy Single</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/SingleDeluxe">Single Deluxe</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/DoubleDeluxe">Double Deluxe</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/HoneyMoon-Suite">Honeymoon Suite</a></li>
                    		</ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                         	<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                         		Reservation
                         	</a>
                    		<ul class="dropdown-menu">
                    			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/ReservationList">예약 현황</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/ReservationPage_1">예약하기</a></li>
                        		<sec:authorize access="hasRole('ROLE_ADMIN')">
                        			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/admin/ReservationUpdatePage_1">예약 변경</a></li>
                        		</sec:authorize>
                    		</ul>
                        </li>
                        <li class="nav-item submenu dropdown">
                        	<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Posts</a>
                        	<ul class="dropdown-menu">
                    			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/notice_list">공지사항</a></li>
                        		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/review_list">이용 후기</a></li>
                    		</ul>
                        </li>
                    </ul>
                </div> 
        </nav>
    </div>
</header>
</body>
</html>