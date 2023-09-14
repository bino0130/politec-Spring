<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>조아 리조트에 오신 것을 환영합니다.</title>
<style>
#mainDiv {
	width : 100%;
	height : 80%;
	text-align : center;
}
</style>
</head>
<body>
<%@ include file="top.jsp"%>
	<!--================Banner Area =================-->
	<section class="banner_area">
        <div class="booking_table d_flex align-items-center">
         	<div class="overlay bg-parallax" data-stellar-ratio="0.9" data-stellar-vertical-offset="0" data-background="" style="transform: translateY(0.0155936px);"></div>
			<div class="container">
				<div class="banner_content text-center">
					<h6>Away from monotonous life</h6>
					<h2>Relax Your Mind</h2>
					<p>We strive to make your journey truly exceptional. Our hotel prioritizes your comfort and happiness above all else. 
					With a wealth of amenities and beautiful spaces, we are here to ensure you enjoy a relaxing retreat.</p>
					<a href="${pageContext.request.contextPath}/ReservationList" class="btn theme_btn button_hover">Get Started</a>
				</div>
			</div>
        </div>
    </section>
    <section class="accomodation_area section_gap">
            <div class="container">
                <div class="section_title text-center">
                    <h2 class="title_color">Hotel Accomodation</h2>
                    <p>Experience a relaxing retreat at the finest accommodation.</p>
                </div>
                <div class="row mb_30">
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="${pageContext.request.contextPath}/resources/img/room1.jpg" alt="">
                                <a href="${pageContext.request.contextPath}/ReservationList" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="${pageContext.request.contextPath}/DoubleDeluxe"><h4 class="sec_h4">Double Deluxe Room</h4></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="${pageContext.request.contextPath}/resources/img/room2.jpg" alt="">
                                <a href="${pageContext.request.contextPath}/ReservationList" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="${pageContext.request.contextPath}/SingleDeluxe"><h4 class="sec_h4">Single Deluxe Room</h4></a>
                        </div>
                    </div>
                   <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="${pageContext.request.contextPath}/resources/img/room3.jpg" alt="">
                                <a href="${pageContext.request.contextPath}/ReservationList" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="${pageContext.request.contextPath}/HoneyMoon-Suite"><h4 class="sec_h4">Honeymoon Suite</h4></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-sm-6">
                        <div class="accomodation_item text-center">
                            <div class="hotel_img">
                                <img src="${pageContext.request.contextPath}/resources/img/room4.jpg" alt="">
                                <a href="${pageContext.request.contextPath}/ReservationList" class="btn theme_btn button_hover">Book Now</a>
                            </div>
                            <a href="${pageContext.request.contextPath}/EconomyDouble"><h4 class="sec_h4">Economy Double</h4></a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
<%@ include file="footer.jsp"%>
</body>
</html>