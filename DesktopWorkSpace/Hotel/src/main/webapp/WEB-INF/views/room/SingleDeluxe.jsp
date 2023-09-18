<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- logo -->
<link rel="icon" href="${pageContext.request.contextPath}/resources/img/favicon.png" type="image/x-icon">
<meta charset="UTF-8">
<title>SinglueDeluxe</title>
</head>
<body>
<%@ include file="../top.jsp"%>
<section class="about_history_area section_gap">
	<div class="container">
        <div class="row">
           	<div class="col-md-6">
                <img src="${pageContext.request.contextPath}/resources/img/room2.jpg" style="width: 450px; height: 500px; margin-top:25px;">
            </div>
            <div class="col-md-6 d_flex align-items-center">
            	<div class="about_content ">
                    <h6 class="title title_color" style="font-size:20px;">
                      	<span class="icon" style="z-index:1;"><i class="fa fa-info-circle" aria-hidden="true"></i> 객실 정보</span>
                    </h6>
                    <ul class="unordered-list">
                      	<li><b style="color:black;">객실 이름 : Single Deluxe Room</b></li>
                       	<li>크기 : 70㎡(구23평)</li>
                       	<li>구조 : 침실1 + 거실 + 화장실1(독립테라스)</li>
                       	<li>구비시설 : TV, 냉장고, 에어컨, 전자렌지, 쇼파, 식탁, 주방집기, 헤어드라이기, 샴푸, 린스, 타올</li>
                       	<li>인원 : 기준 6명 / 최대 10명</li>
                       	<li>초과인원비용 : 0~3세 10,000원, 4세~,초,중,고생 및 성인 30,000원</li>
                    </ul>
                       
                    <h6 class="title title_color" style="font-size:20px;">
                       	<span class="icon" style="z-index:1;"><i class="fa fa-exclamation-triangle" aria-hidden="true"></i> 주의 사항</span>
                    </h6>
                    <ul class="unordered-list">
                       	<li><b style="color:red;">예약인원에서 인원이 추가되었을 경우 미리 말씀하셔야 하며, 최대 인원 초과시는 입실이 불가능합니다.</b></li>
                       	<li>애완동물과 함께 입실하실 수 없습니다.</li>
                       	<li>객실 내에서는 절대 금연이며, 삼겹살 등의 육류를 직화방식으로 조리하실 수 없습니다.</li>
                       	<li>이용 중 비치된 집기나 시설물을 파손 시 별도로 말씀해 주셔야 합니다.</li>
                       	<li>무분별한 오락 및 음주, 고성방가 등 다른 이용객에게 불쾌감을 주는 행동은 삼가해 주시기 바랍니다.</li>
                       	<li>기타 문의는 033-640-6282로 연락해 주시기 바랍니다.</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<%@ include file="../footer.jsp"%>
</body>
</html>